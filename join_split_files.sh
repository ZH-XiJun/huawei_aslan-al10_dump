#!/bin/bash

cat system/priv-app/HwDemoVersion/HwDemoVersion.apk.* 2>/dev/null >> system/priv-app/HwDemoVersion/HwDemoVersion.apk
rm -f system/priv-app/HwDemoVersion/HwDemoVersion.apk.* 2>/dev/null
