#!/usr/bin/env python
# -*- coding: utf-8 -*-
# Copyright (C) 2011 Rosen Diankov <rosen.diankov@gmail.com>
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#     http://www.apache.org/licenses/LICENSE-2.0
# 
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
from optparse import OptionParser

import os, sys, platform
from subprocess import Popen, PIPE

__builtins__.__openravepy_version__ = '0.9'

try:
    import openravepy
except ImportError:
    print "openravepy is not set into PYTHONPATH env variable, attempting to add"
    # use openrave-config to get the correct install path
    from subprocess import Popen, PIPE
    try:
        openrave_config = Popen(['openrave-config','--python-dir'],stdout=PIPE)
        openravepy_path = openrave_config.communicate()
        if openrave_config.returncode != 0:
            raise OSError('bad args')
            
        sys.path.append(openravepy_path[0].strip())
    except OSError:
        from distutils.sysconfig import get_python_lib
        if sys.platform.startswith('win') or platform.system().lower() == 'windows':
            # in windows so add the default openravepy installation
            allnames = os.listdir('C:\\Program Files')
            possibledirs = [os.path.join('C:\\Program Files',name) for name in allnames if name.startswith('openrave')]
            if len(possibledirs) > 0:
                sys.path.append(get_python_lib(1,prefix=possibledirs[0]))
    import openravepy

from openravepy import *

if __name__ == "__main__":
    parser = OptionParser(usage='usage: %prog pluginname [options] ', description='Sets up a project directory and initial files for creating OpenRAVE plugins and executables.')
    parser.add_option('--usecore', action='store_true',dest='usecore',default=False, help='If set, will create an executable that links to the core instead of creating a plugin.')
    for type in InterfaceType.values.values():
        name = str(type).lower()
        parser.add_option('--'+name, action='append',type='string',dest=name,default=[], help='create a %s interface'%name)
    (options, args) = parser.parse_args()
    plugindir = args[0]
    pluginname = os.path.split(plugindir)[1]
    iswindows = sys.platform.startswith('win') or platform.system().lower() == 'windows'

    args = {'pluginname':pluginname}

    interface_classmapping = {InterfaceType.planner:['PT_Planner','PlannerBase'],InterfaceType.robot:['PT_Robot','RobotBase'],InterfaceType.sensorsystem:['PT_SensorSystem','SensorSystemBase'],InterfaceType.controller:['PT_Controller','ControllerBase'],InterfaceType.module:['PT_Module','ModuleBase'],InterfaceType.iksolver:['PT_IkSolver','IkSolverBase'],InterfaceType.kinbody:['PT_KinBody','KinBody'],InterfaceType.physicsengine:['PT_PhysicsEngine','PhysicsEngineBase'],InterfaceType.sensor:['PT_Sensor','SensorBase'],InterfaceType.collisionchecker:['PT_CollisionChecker','CollisionCheckerBase'],InterfaceType.trajectory:['PT_Trajectory','TrajectoryBase'],InterfaceType.viewer:['PT_Viewer','ViewerBase'],InterfaceType.spacesampler:['PT_SpaceSampler','SpaceSamplerBase']}
    interface_contents = ''
    interface_tests_py = ''
    CreateInterfaceValidated = ''
    GetPluginAttributesValidated = ''
    for type in InterfaceType.values.values():
        name = str(type).lower()
        typename = interface_classmapping[type][0]
        classname = interface_classmapping[type][1]
        for interfacename in getattr(options,name):
            interface_args = {'name':interfacename,'lowername':interfacename.lower(),'typename':typename,'classname':classname,'createname':typename[3:]}
            interface_contents += """class %(name)s : public %(classname)s
{
public:
    %(name)s(EnvironmentBasePtr penv, std::istream& ss) : %(classname)s(penv) {
        RegisterCommand("MyCommand",boost::bind(&%(name)s::MyCommand,this,_1,_2),
                        "This is an example command");
    }
    virtual ~%(name)s() {}
    
    bool MyCommand(std::ostream& sout, std::istream& sinput)
    {
        std::string input;
        sinput >> input;
        sout << "output";
        return true;
    }
};

"""%interface_args
            CreateInterfaceValidated +=  """    if( type == %(typename)s && interfacename == "%(lowername)s" ) {
        return InterfaceBasePtr(new %(name)s(penv,sinput));
    }
"""%interface_args
            GetPluginAttributesValidated += 'info.interfacenames[%(typename)s].push_back("%(name)s");\n'%interface_args
            interface_tests_py += "    %(name)s = RaveCreate%(createname)s(env,'%(name)s')\n    print %(name)s.SendCommand('help')"%interface_args
    if options.usecore:
        code_cpp = """#include <openrave-core.h>
using namespace OpenRAVE;

int main()
{
    RaveInitialize(true); // start openrave core
    EnvironmentBasePtr penv = RaveCreateEnvironment(); // create the main environment

    // do work
    penv->Load("scenes/myscene.env.xml");

    RaveDestroy(); // make sure to destroy the OpenRAVE runtime
    return 0;
}
"""
    else:
        code_cpp = """#include <openrave/plugin.h>
#include <boost/bind.hpp>
using namespace OpenRAVE;

%s
// called to create a new plugin
InterfaceBasePtr CreateInterfaceValidated(InterfaceType type, const std::string& interfacename, std::istream& sinput, EnvironmentBasePtr penv)
{
%s
    return InterfaceBasePtr();
}

// called to query available plugins
void GetPluginAttributesValidated(PLUGININFO& info)
{
%s    
}

// called before plugin is terminated
OPENRAVE_PLUGIN_API void DestroyPlugin()
{
}

"""%(interface_contents,CreateInterfaceValidated,GetPluginAttributesValidated)

    CMakeLists_txt = """cmake_minimum_required (VERSION 2.6.0)
project(%(pluginname)s)
find_package(OpenRAVE 0.9 REQUIRED)

if( CMAKE_COMPILER_IS_GNUCC OR CMAKE_COMPILER_IS_GNUCXX )
  add_definitions("-fno-strict-aliasing -Wall")
endif( CMAKE_COMPILER_IS_GNUCC OR CMAKE_COMPILER_IS_GNUCXX )

# optional in case boost is used
find_package(Boost ${OpenRAVE_Boost_VERSION} EXACT)

include_directories(${OpenRAVE_INCLUDE_DIRS} ${Boost_INCLUDE_DIRS})
link_directories(${OpenRAVE_LIBRARY_DIRS} ${Boost_LIBRARY_DIRS})
"""%args
    if options.usecore:
        CMakeLists_txt += """add_executable(%(pluginname)s %(pluginname)s.cpp)
set_target_properties(%(pluginname)s PROPERTIES COMPILE_FLAGS "${OpenRAVE_CXX_FLAGS}" LINK_FLAGS "${OpenRAVE_LINK_FLAGS}")
target_link_libraries(%(pluginname)s ${OpenRAVE_CORE_LIBRARIES})
install(TARGETS %(pluginname)s DESTINATION .)
"""%args
    else:
        CMakeLists_txt += """add_library(%(pluginname)s SHARED %(pluginname)s.cpp)
set_target_properties(%(pluginname)s PROPERTIES COMPILE_FLAGS "${OpenRAVE_CXX_FLAGS}" LINK_FLAGS "${OpenRAVE_LINK_FLAGS}")
target_link_libraries(%(pluginname)s ${OpenRAVE_LIBRARIES})
install(TARGETS %(pluginname)s DESTINATION .)
"""%args

    Makefile = """
all:
	@mkdir -p build; rm -f build/CMakeCache.txt
	cd build && cmake .. && $(MAKE) $(PARALLEL_JOBS)

install:
	cd build && $(MAKE) $(PARALLEL_JOBS) install

uninstall:
	cd build && $(MAKE) uninstall

clean:
	-cd build && $(MAKE) clean

"""%args
    robot_xml = """<robot file="robots/pr2-beta-static.zae">
</robot>
"""
    scene_xml = """<environment>
  <robot file="../robots/myrobot.robot.xml"/>
</environment>
"""

    if iswindows:
        README = """Use your favorite generator. For example:

mkdir build
cd build
cmake -G "Visual Studio 10" ..

This will produce a *.sln file
"""
    else:
        README = """For linux users:

make
python testplugin.py
"""

    try:
        os.makedirs(plugindir)
        
    except OSError:
        pass
    open(os.path.join(plugindir,pluginname.lower()+'.cpp'),'w').write(code_cpp)
    open(os.path.join(plugindir,'CMakeLists.txt'),'w').write(CMakeLists_txt)
    if not iswindows:
        open(os.path.join(plugindir,'Makefile'),'w').write(Makefile)

    try:
        os.makedirs(os.path.join(plugindir,'scenes'))
        
    except OSError:
        pass

    open(os.path.join(plugindir,'scenes','myscene.env.xml'),'w').write(scene_xml)
    try:
        os.makedirs(os.path.join(plugindir,'robots'))
        
    except OSError:
        pass
    
    open(os.path.join(plugindir,'robots','myrobot.robot.xml'),'w').write(robot_xml)
    open(os.path.join(plugindir,'FindOpenRAVE.cmake'),'w').write("""# - Find Open Robotics Automation Virtual Enviornment (OpenRAVE) Installation
# http://www.openrave.org
#
# OpenRAVE provides an environment for testing, developing, and deploying motion planning algorithms
# in real-world robotics applications. The main focus is on simulation and analysis of kinematic and
# geometric information related to motion planning. OpenRAVE's stand-alone nature allows is to be easily
# integrated into existing robotics systems. An important target application is industrial robotics automation.

#==================================================================================
# Copyright (C) 2009-2011 Rosen Diankov
#
# Distributed under the OSI-approved BSD License (the "License");
# see accompanying file Copyright.txt for details.
#
# This software is distributed WITHOUT ANY WARRANTY; without even the
# implied warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.
# See the License for more information.
#=============================================================================
# (To distributed this file outside of CMake, substitute the full
#  License text for the above reference.)
#==================================================================================

set(_OpenRAVE_PATHS)
if(NOT OpenRAVE_DIR)
  if( WIN32 )
    # search in the registry
    set(_OpenRAVE_CONFIG_NAME "openrave-config.exe")
    get_filename_component(OpenRAVE_VERSION_STRING "[HKEY_LOCAL_MACHINE\\SOFTWARE\\OpenRAVE;]" NAME)
    message(STATUS "OpenRAVE ${OpenRAVE_VERSION_STRING} found in registry")
    if( OpenRAVE_VERSION_STRING )
      get_filename_component(_OpenRAVE_PATH "[HKEY_LOCAL_MACHINE\\SOFTWARE\\OpenRAVE\\${OpenRAVE_VERSION_STRING};InstallRoot]" ABSOLUTE)
      set(_OpenRAVE_PATHS ${_OpenRAVE_PATHS} ${_OpenRAVE_PATH})
    endif( OpenRAVE_VERSION_STRING )
  else(WIN32)
    set(_OpenRAVE_CONFIG_NAME "openrave-config")
  endif(WIN32)
  # search for the config path
  find_program(_OpenRAVE_CONFIG_EXECUTABLE NAMES ${_OpenRAVE_CONFIG_NAME} DOC "openrave executable")
  if( _OpenRAVE_CONFIG_EXECUTABLE )
    get_filename_component(_OpenRAVE_PATH "${_OpenRAVE_CONFIG_EXECUTABLE}" PATH) # bin
    get_filename_component(_OpenRAVE_PATH "${_OpenRAVE_PATH}" PATH)
    set(_OpenRAVE_PATHS ${_OpenRAVE_PATHS} ${_OpenRAVE_PATH})
  endif( _OpenRAVE_CONFIG_EXECUTABLE )
endif(NOT OpenRAVE_DIR)

find_package(OpenRAVE NO_MODULE PATHS ${_OpenRAVE_PATHS})
""")
    
    if not options.usecore:
        testplugin_py="""#!/usr/bin/env python
from openravepy import *
RaveInitialize()
RaveLoadPlugin('build/%s')
try:
    env=Environment()
    env.Load('scenes/myscene.env.xml')
%s
finally:
    RaveDestroy()
"""%(pluginname,interface_tests_py)
        open(os.path.join(plugindir,'testplugin.py'),'w').write(testplugin_py)