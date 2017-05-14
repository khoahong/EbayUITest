module CommandLineHelper
  APP_PACKAGE = TEST_DATA['app_package']

  class << self
    def clear_app_data
      "adb -s #{DEVICE_NAME} shell pm clear #{APP_PACKAGE}"
    end
  end
end
