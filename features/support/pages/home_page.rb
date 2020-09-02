class HomePage
  include PageObject

  page_url 'https://www.tiket.com'
  @@wait = Selenium::WebDriver::Wait.new(:timeout => 15)

  # Page Object
  text_field(:username, :name => 'username')
  text_field(:password, :name => 'password')
  button(:btnContinue, :class => 'btn-custom btn-custom-yellow btn-custom-full submitEmail')
  button(:btnLogin, :class => 'btn-custom btn-custom-yellow btn-custom-full loginSubmitButton')

  def loginWith (username, password)
    self.username = username
    btnContinue
    self.password = password
    btnLogin
  end

  def navigateToLogin
    navigate_to "https://www.tiket.com/login"
  end

  def navigateToTrain
    navigate_to "https://www.tiket.com/kereta-api"
  end

end
