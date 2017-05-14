class ProductDescriptionPage
  include PageObject

  button(:watch, :id => 'button_watch')
  text_field(:item_price, :id => 'textview_item_price')
  element(:buybox, :id => 'buybox_fragment_layout')

  def loaded?
    buybox_element.exists? && buybox_element.visible?
  end

  def watch_product
    wait_until { item_price_element.visible? }
    ActionHelper.swipe_from_middle_to_top
    self.watch
  end
end
