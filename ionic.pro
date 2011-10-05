# Add more folders to ship with the application, here
folder_01.source = qml/ionic
folder_01.target = qml
DEPLOYMENTFOLDERS = folder_01

# Additional import path used to resolve QML modules in Creator's code model
QML_IMPORT_PATH =

symbian:TARGET.UID3 = 0xE1E990A6

# Smart Installer package's UID
# This UID is from the protected range and therefore the package will
# fail to install if self-signed. By default qmake uses the unprotected
# range value if unprotected UID is defined for the application and
# 0x2002CCCF value if protected UID is given to the application
#symbian:DEPLOYMENT.installer_header = 0x2002CCCF

# Allow network access on Symbian
symbian:TARGET.CAPABILITY += NetworkServices

# If your application uses the Qt Mobility libraries, uncomment the following
# lines and add the respective components to the MOBILITY variable.
# CONFIG += mobility
# MOBILITY +=

# Add dependency to symbian components
# CONFIG += qtquickcomponents

QT += webkit xml sql network
unix {
    DEFINES += unix
    DEFINES += USE_FILE32API
}
unix:!symbian {
    LIBS += -lz
}
unix:!symbian:!maemo5 {
    # Sorry Dennis
    DEFINES += Q_WS_HARMATTAN
    CONFIG +=  link_pkgconfig
    PKGCONFIG += libresourceqt1
}

# The .cpp file which was generated for your project. Feel free to hack it.
SOURCES += main.cpp \
    model/book.cpp \
    model/bookdb.cpp \
    bookfinder.cpp \
    model/extractzip.cpp \
    model/unzip/unzip.c \
    model/unzip/ioapi.c \
    model/library.cpp \
    settings.cpp \
    trace.cpp \
    platform.cpp \
    model/coverprovider.cpp

# Please do not modify the following two lines. Required for deployment.
include(qmlapplicationviewer/qmlapplicationviewer.pri)
qtcAddDeployment()

OTHER_FILES += \
    qtc_packaging/debian_harmattan/rules \
    qtc_packaging/debian_harmattan/README \
    qtc_packaging/debian_harmattan/copyright \
    qtc_packaging/debian_harmattan/control \
    qtc_packaging/debian_harmattan/compat \
    qtc_packaging/debian_harmattan/changelog \
    model/unzip/MiniZip64_info.txt \
    model/unzip/MiniZip64_Changes.txt \
    model/unzip/Makefile \
    model/unzip/make_vms.com \
    model/unzip/make_vms_com \
    pkg/version.txt \
    pkg/acknowledgements.txt \
    books/2BR02B.epub \
    books/hacker-monthly-2.epub \
    icons/view-normal.png \
    icons/view-fullscreen.png \
    icons/system-file-manager.png \
    icons/style-sand.png \
    icons/style-night.png \
    icons/style-default.png \
    icons/style-day.png \
    icons/splash.png \
    icons/splash.jpg \
    icons/settings-portrait.png \
    icons/settings-landscape.png \
    icons/search.png \
    icons/rotate.png \
    icons/previous.png \
    icons/previous-disabled.png \
    icons/preferences-system.png \
    icons/next.png \
    icons/next-disabled.png \
    icons/library.png \
    icons/info.png \
    icons/goto.png \
    icons/general_delete.png \
    icons/forward.png \
    icons/folder.png \
    icons/edit.png \
    icons/developer.png \
    icons/delete.png \
    icons/chapters.png \
    icons/bookmarks.png \
    icons/bookmark.png \
    icons/book.png \
    icons/back.png \
    icons/add.png

HEADERS += \
    model/book.h \
    model/bookdb.h \
    bookfinder.h \
    model/containerhandler.h \
    model/xmlhandler.h \
    model/opshandler.h \
    model/extractzip.h \
    model/unzip/unzip.h \
    model/unzip/ioapi.h \
    model/library.h \
    model/ncxhandler.h \
    settings.h \
    model/xmlerrorhandler.h \
    trace.h \
    platform.h \
    model/bookmark.h \
    model/coverprovider.h

RESOURCES += \
    ionic.qrc



















