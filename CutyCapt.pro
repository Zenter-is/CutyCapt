QT       +=  webkit svg network
SOURCES   =  CutyCapt.cpp
HEADERS   =  CutyCapt.hpp
CONFIG   +=  qt console

DESTDIR         = build/release

OBJECTS_DIR     = $$DESTDIR/.obj
MOC_DIR         = $$DESTDIR/.moc
#RCC_DIR         = $$DESTDIR/.qrc
#UI_DIR          = $$DESTDIR/.ui

TARGET          = cutycapt

greaterThan(QT_MAJOR_VERSION, 4): {
  QT       +=  webkitwidgets
}

contains(CONFIG, static): {
  QTPLUGIN += qjpeg qgif qsvg qmng qico qtiff
  DEFINES  += STATIC_PLUGINS
}

