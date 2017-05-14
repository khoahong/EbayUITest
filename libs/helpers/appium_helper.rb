module AppiumHelper
  class << self
    def init_environment(desired_caps)
      @desired_caps = desired_caps
    end

    def start_driver(default_page_wait = 10)
      CommandLineHelper.clear_app_data
      Appium::Driver.new(@desired_caps).start_driver
      Appium.promote_appium_methods Object
      PageObject.default_page_wait = default_page_wait
      Appium.set_wait(default_page_wait)
      PageObject.default_element_wait = default_page_wait
    end
  end
end
