QT       +=  webkit svg network
SOURCES   =  src/CutyCapt.cpp
HEADERS   =  src/CutyCapt.hpp
CONFIG   +=  qt console

DESTDIR         = build/release

OBJECTS_DIR     = $$DESTDIR/.obj
MOC_DIR         = $$DESTDIR/.moc
#RCC_DIR         = $$DESTDIR/.qrc
#UI_DIR          = $$DESTDIR/.ui

TARGET          = cutycapt

unix{
    target.path = /usr/local/bin/
    target.files = build/release/cutycapt
    INSTALLS += target
}

greaterThan(QT_MAJOR_VERSION, 4): {
  QT       +=  webkitwidgets
}

contains(CONFIG, static): {
  QTPLUGIN += qjpeg qgif qsvg qmng qico qtiff
  DEFINES  += STATIC_PLUGINS
}

