#!/bin/bash

# iOS 框架下载解压
IOS_URL="https://github.com/hellohejinyu/ffmpeg_kit_flutter_full_gpl/releases/download/v5.1.LTS/ffmpeg-kit-full-gpl-5.1.LTS-ios-framework.zip"
mkdir -p Frameworks
curl -L $IOS_URL -o frameworks.zip
unzip -o frameworks.zip -d Frameworks
rm frameworks.zip
