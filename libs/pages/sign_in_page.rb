class SignInPage
  include PageObject

  text_field(:username, :id => 'edit_text_username')
  button(:close_popup, :id => 'button_close')

  def loaded?
    username_element.exists? && username_element.visible?
  end

  def fill_in_username(username)
    self.username = username
  end
end
