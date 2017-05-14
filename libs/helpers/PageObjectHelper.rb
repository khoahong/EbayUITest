#Modify to make it work with Appium
PageObject.module_eval do
  def initialize(root, visit=false)
    root = $driver.driver if root.nil?
    initialize_accessors if respond_to?(:initialize_accessors)
    initialize_browser(root)
    goto if visit && respond_to?(:goto)
    initialize_page if respond_to?(:initialize_page)
  end
end
