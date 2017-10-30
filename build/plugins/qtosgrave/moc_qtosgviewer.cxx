/****************************************************************************
** Meta object code from reading C++ file 'qtosgviewer.h'
**
** Created by: The Qt Meta Object Compiler version 63 (Qt 4.8.6)
**
** WARNING! All changes made in this file will be lost!
*****************************************************************************/

#include "../../../plugins/qtosgrave/qtosgviewer.h"
#if !defined(Q_MOC_OUTPUT_REVISION)
#error "The header file 'qtosgviewer.h' doesn't include <QObject>."
#elif Q_MOC_OUTPUT_REVISION != 63
#error "This file was generated using the moc from 4.8.6. It"
#error "cannot be used with the include files from this version of Qt."
#error "(The moc has changed too much.)"
#endif

QT_BEGIN_MOC_NAMESPACE
static const uint qt_meta_data_qtosgrave__QtOSGViewer[] = {

 // content:
       6,       // revision
       0,       // classname
       0,    0, // classinfo
      15,   14, // methods
       0,    0, // properties
       0,    0, // enums/sets
       0,    0, // constructors
       0,       // flags
       0,       // signalCount

 // slots: signature, parameters, type, tag, flags
      24,   23,   23,   23, 0x0a,
      42,   23,   23,   23, 0x0a,
      62,   23,   23,   23, 0x0a,
      80,   23,   23,   23, 0x0a,
      94,   23,   23,   23, 0x0a,
     109,   23,   23,   23, 0x0a,
     119,   23,   23,   23, 0x0a,
     126,   23,   23,   23, 0x0a,
     134,   23,   23,   23, 0x0a,
     148,   23,   23,   23, 0x0a,
     160,   23,   23,   23, 0x0a,
     174,   23,   23,   23, 0x0a,
     188,  181,   23,   23, 0x0a,
     213,  181,   23,   23, 0x0a,
     247,  238,   23,   23, 0x0a,

       0        // eod
};

static const char qt_meta_stringdata_qtosgrave__QtOSGViewer[] = {
    "qtosgrave::QtOSGViewer\0\0LoadEnvironment()\0"
    "ImportEnvironment()\0SaveEnvironment()\0"
    "multiWidget()\0simpleWidget()\0refresh()\0"
    "home()\0light()\0polygonMode()\0facesMode()\0"
    "boundingBox()\0axes()\0button\0"
    "pointerGroupClicked(int)\0"
    "draggerGroupClicked(int)\0item,num\0"
    "sceneListClicked(QTreeWidgetItem*,int)\0"
};

void qtosgrave::QtOSGViewer::qt_static_metacall(QObject *_o, QMetaObject::Call _c, int _id, void **_a)
{
    if (_c == QMetaObject::InvokeMetaMethod) {
        Q_ASSERT(staticMetaObject.cast(_o));
        QtOSGViewer *_t = static_cast<QtOSGViewer *>(_o);
        switch (_id) {
        case 0: _t->LoadEnvironment(); break;
        case 1: _t->ImportEnvironment(); break;
        case 2: _t->SaveEnvironment(); break;
        case 3: _t->multiWidget(); break;
        case 4: _t->simpleWidget(); break;
        case 5: _t->refresh(); break;
        case 6: _t->home(); break;
        case 7: _t->light(); break;
        case 8: _t->polygonMode(); break;
        case 9: _t->facesMode(); break;
        case 10: _t->boundingBox(); break;
        case 11: _t->axes(); break;
        case 12: _t->pointerGroupClicked((*reinterpret_cast< int(*)>(_a[1]))); break;
        case 13: _t->draggerGroupClicked((*reinterpret_cast< int(*)>(_a[1]))); break;
        case 14: _t->sceneListClicked((*reinterpret_cast< QTreeWidgetItem*(*)>(_a[1])),(*reinterpret_cast< int(*)>(_a[2]))); break;
        default: ;
        }
    }
}

const QMetaObjectExtraData qtosgrave::QtOSGViewer::staticMetaObjectExtraData = {
    0,  qt_static_metacall 
};

const QMetaObject qtosgrave::QtOSGViewer::staticMetaObject = {
    { &QMainWindow::staticMetaObject, qt_meta_stringdata_qtosgrave__QtOSGViewer,
      qt_meta_data_qtosgrave__QtOSGViewer, &staticMetaObjectExtraData }
};

#ifdef Q_NO_DATA_RELOCATION
const QMetaObject &qtosgrave::QtOSGViewer::getStaticMetaObject() { return staticMetaObject; }
#endif //Q_NO_DATA_RELOCATION

const QMetaObject *qtosgrave::QtOSGViewer::metaObject() const
{
    return QObject::d_ptr->metaObject ? QObject::d_ptr->metaObject : &staticMetaObject;
}

void *qtosgrave::QtOSGViewer::qt_metacast(const char *_clname)
{
    if (!_clname) return 0;
    if (!strcmp(_clname, qt_meta_stringdata_qtosgrave__QtOSGViewer))
        return static_cast<void*>(const_cast< QtOSGViewer*>(this));
    if (!strcmp(_clname, "ViewerBase"))
        return static_cast< ViewerBase*>(const_cast< QtOSGViewer*>(this));
    return QMainWindow::qt_metacast(_clname);
}

int qtosgrave::QtOSGViewer::qt_metacall(QMetaObject::Call _c, int _id, void **_a)
{
    _id = QMainWindow::qt_metacall(_c, _id, _a);
    if (_id < 0)
        return _id;
    if (_c == QMetaObject::InvokeMetaMethod) {
        if (_id < 15)
            qt_static_metacall(this, _c, _id, _a);
        _id -= 15;
    }
    return _id;
}
QT_END_MOC_NAMESPACE
