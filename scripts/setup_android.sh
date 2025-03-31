#!/bin/bash

# Android AAR 下载
ANDROID_URL="https://github.com/hellohejinyu/ffmpeg_kit_flutter_full_gpl/releases/download/v5.1.LTS/ffmpeg-kit-full-gpl-5.1.LTS.aar"
mkdir -p libs
curl -L $ANDROID_URL -o libs/ffmpeg-kit-full-gpl-5.1.LTS.aar