class SearchResultPage
  include PageObject

  #To prevent unlimited scroll
  MAXIMUM_SCROLL = TEST_DATA['maximum_scroll']

  button(:sort, :id => 'button_sort')
  button(:price_low_to_high, :xpath => "//*[@text='Lowest Price + Shipping']")
  text_fields(:product_names, :xpath => "//*[contains(@resource-id,'cell_collection_item')]//*[contains(@resource-id,'textview_item_title')]")
  text_fields(:product_prices, :id => 'textview_item_price')
  elements(:product_images, :id => 'image')

  def click_on_first_product
    product_images_elements.first.click
  end

  def sort_by_price_low_to_high
    self.sort
    self.price_low_to_high
  end

  def get_list_of_names_and_prices(number_of_items)
    product_items = Array.new
    MAXIMUM_SCROLL.times do
      product_names_elements.each_with_index do |item, index|
        break if product_prices_elements[index].nil?
        product_items.push(ProductItem.new(item.text, product_prices_elements[index].text))
      end
      product_items.uniq { |item| [item.name, item.price] }
      break if number_of_items <= product_items.size
      ActionHelper.swipe_from_middle_to_top
    end

    return product_items[0..number_of_items - 1]
  end
end
