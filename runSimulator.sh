#!/bin/bash
# fully close the simulator and open the desired one
killall 'Simulator'

# launch
xcrun instruments -w '806C89C8-39DD-469C-9365-3F13A4795ED3'

# build:
xcodebuild -scheme Example -workspace Example.xcworkspace -destination 'platform=iphonesimulator,name=iPhone 5s' -derivedDataPath build

# uninstall old / install new
xcrun simctl uninstall booted "Example"
xcrun simctl install booted build/Build/Products/Debug-iphonesimulator/Example.app

# run app:
xcrun simctl launch booted "Example"