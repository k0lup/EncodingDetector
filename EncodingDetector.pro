QT += core

TEMPLATE = lib
CONFIG += shared c++17

TARGET = EncodingDetector
VERSION = 1.0.0

DEFINES += \
    ENCODINGDETECTOR_LIBRARY \
    ENCODINGDETECTOR_VERSION=\\\"$$VERSION\\\"

INCLUDEPATH += \
    $$PWD/include \
    $$PWD/src

SOURCES += \
    src/encodingdetector.cpp

HEADERS += \
    include/EncodingDetector/encodingdetector.h \
    include/EncodingDetector/encodingdetector_global.h

SDK_ROOT = $$(JOBQT_SDK)

isEmpty(SDK_ROOT) {
    error("JOBQT_SDK environment variable is not set")
}

ENCODINGDETECTOR_INSTALL_ROOT = $$SDK_ROOT/EncodingDetector/$$VERSION

target.path = $$ENCODINGDETECTOR_INSTALL_ROOT/lib

headers.files = \
    $$PWD/include/EncodingDetector/EncodingDetector_global.h \
    $$PWD/include/EncodingDetector/encodingdetector.h

headers.path = $$ENCODINGDETECTOR_INSTALL_ROOT/include/EncodingDetector

INSTALLS += target headers

