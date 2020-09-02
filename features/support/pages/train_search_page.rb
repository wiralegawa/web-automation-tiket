
class TrainSearchPage
  include PageObject

  #Page Objects
  @@tfFrom = @browser.find_element(:class, "input-airport ")
  # text_field(:tfFrom, :xpath => '//input[@class= "'"input-airport "'" && and @tabindex="'"1"'"]')
  # text_field(:tfTo, :xpath => '//input[@class= "input-airport " && and @tabindex=2')

  def enterDestination(from)
    @@tfFrom.attribute("tabindex='1'").send_keys from
  end
end
