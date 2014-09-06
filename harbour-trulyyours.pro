TEMPLATE = app
TARGET = harbour-trulyyours
CONFIG += sailfishapp

HEADERS += \
    src/ambiencemanager.h \
    src/tagmanager.h

SOURCES += src/harbour-trulyyours.cpp \
    src/ambiencemanager.cpp \
    src/tagmanager.cpp

OTHER_FILES += rpm/$${TARGET}.spec \
    rpm/$${TARGET}.yaml \
    $${TARGET}.desktop \
    translations/*.ts \
    qml/harbour-trulyyours.qml \
    qml/cover/CoverPage.qml \
    qml/pages/AmbienceDetailPage.qml \
    qml/pages/BrowseAmbienceListPage.qml \
    qml/pages/Data.js \
    qml/pages/MainPage.qml \
    qml/pages/Components/QuickTagCloud.qml

js.path = /usr/share/$${TARGET}/qml/pages
js.files = Data.js
INSTALLS += js

# to disable building translations every time, comment out the
# following CONFIG line
#CONFIG += sailfishapp_i18n
#TRANSLATIONS += translations/$${TARGET}-de.ts

