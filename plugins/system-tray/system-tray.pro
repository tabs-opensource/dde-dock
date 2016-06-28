
include(../../interfaces/interfaces.pri)

QT              += widgets gui core dbus x11extras
TEMPLATE         = lib
CONFIG          += plugin c++11 link_pkgconfig
PKGCONFIG       += xcb xcb-image xcb-composite

TARGET          = $$qtLibraryTarget(system-tray)
DESTDIR          = $$_PRO_FILE_PWD_/../

HEADERS += \
    systemtrayplugin.h \
    dbus/dbustraymanager.h \
    traywidget.h

SOURCES += \
    systemtrayplugin.cpp \
    dbus/dbustraymanager.cpp \
    traywidget.cpp

target.path = $${PREFIX}/lib/dde-dock/plugins/
INSTALLS += target