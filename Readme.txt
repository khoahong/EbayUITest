Environment:
1. OSX 10.11.6
2. Ruby 2.3.0p0
3. Appium server: 1.6.3
4. Genymotion 2.8.1
5. Emulator: Nexus 5, API 21, 5.0.0, 1080x1920

How to run tests:
1. Open Terminal
2. Navigate to EbayUITest dir
3. Run: bundle install
4. Run: appium
5. Open Emulator
6. Run: adb devices to get list of devices, mine is "192.168.56.101:5555"
7. Run: cucumber --tags @search.search_with_guest_user APP_PATH=./apk/com.ebay.mobile_5.9.0.apk DEVICE_NAME="192.168.56.101:5555" APPIUM_PORT=4723

TODO:
1. Generate test report

