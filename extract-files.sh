#!/bin/sh

VENDOR=pantech
DEVICE=vega

BASE=../../../vendor/$VENDOR/$DEVICE/proprietary
rm -rf $BASE/*

for FILE in `cat proprietary-blobs.txt | grep -v ^# | grep -v ^$ | sed -e 's#^/system/##g'`; do
    DIR=`dirname $FILE`
    if [ ! -d $BASE/$DIR ]; then
        echo "mkdir -p $BASE/$DIR"
    fi
    adb pull /system/$FILE $BASE/$FILE
done

./setup-makefiles.sh
