class OperatingSystem
  attr_accessor :desired_caps

  PLATFORM_NAME = TEST_DATA['platform_name']

  def initialize(device_name, app_path, appium_port)
    @desired_caps = {
        caps: {
            platformName: PLATFORM_NAME,
            deviceName: device_name,
            app: app_path
        },
        appium_lib: {
            port: appium_port
        }
    }
  end
end
