require 'appium_lib'
require 'page-object'
require 'require_all'
require 'faker'

PROJECT_DIR = File.expand_path(File.dirname(__FILE__) + '../../..')
TEST_DATA = YAML.load_file(PROJECT_DIR + '/configs/test_data.yml')

require PROJECT_DIR + '/libs/helpers/appium_helper.rb'
require PROJECT_DIR + '/libs/helpers/page_object_helper.rb'
require PROJECT_DIR + '/libs/helpers/command_line_helper.rb'
require_all PROJECT_DIR + '/libs/models/'

APP_PATH = ENV['APP_PATH']
DEVICE_NAME = ENV['DEVICE_NAME']
APPIUM_PORT = ENV['APPIUM_PORT']
DEFAULT_PAGE_WAIT = TEST_DATA['default_page_wait']

World(PageObject::PageFactory)
desired_caps = OperatingSystem.new(DEVICE_NAME, APP_PATH, APPIUM_PORT).desired_caps
AppiumHelper.init_environment(desired_caps)

at_exit do
  driver_quit
end
