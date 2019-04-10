CONFIG(debug, debug|release) {
    CONFIG -= debug release
    CONFIG += debug
}
CONFIG(release, debug|release) {
    CONFIG -= debug release
    CONFIG += release
}

TARGET = MEGASdkTests
TEMPLATE = app

CONFIG += USE_LIBUV
CONFIG += USE_MEGAAPI
CONFIG += USE_MEDIAINFO
CONFIG += USE_LIBRAW
CONFIG += USE_FFMPEG

LIBS+=-lgtest

include(../../../bindings/qt/sdk.pri)

SOURCES += ../../../tests/sdk_test.cpp \
           ../../../tests/sdktests.cpp
