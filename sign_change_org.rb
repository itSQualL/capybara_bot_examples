require "capybara"
require "capybara/dsl"
require "selenium-webdriver"

include Capybara::DSL
Capybara.default_driver = :selenium

URL = "https://www.change.org/p/hello-ciudadreal-rb"

FIRST_NAME_SELECTOR = "div.grouped-form:nth-child(2) > div:nth-child(1) > div:nth-child(1) > span:nth-child(1) > input:nth-child(1)"
LAST_NAME_SELECTOR = "div.grouped-form:nth-child(2) > div:nth-child(2) > div:nth-child(1) > span:nth-child(1) > input:nth-child(1)"
EMAIL_SELECTOR = ".js-email-sign"
POSTAL_CODE = "div.control-group:nth-child(4) > div:nth-child(1) > span:nth-child(1) > input:nth-child(1)"
SIGN_BUTTON = "input.btn-full:nth-child(4)"



def sign_with_placeholders_text
  visit URL

  page.fill_in "Nombre", with: "Username"
  page.fill_in "Apellidos", with: "User last name"
  page.fill_in "Correo electrónico", with: random_email
  page.fill_in "Código postal", with: "12345"
  page.click_button "Firma"
end

#En este ejemplo buscamos el elemento en el html
#y pulsamos boton derecho sobre él y "copiar selector único"
def sign_with_selectors
  visit URL

  page.find(FIRST_NAME_SELECTOR).set("Name")
  page.find(LAST_NAME_SELECTOR).set("LastName")
  page.find(EMAIL_SELECTOR).set(random_email)
  page.find(POSTAL_CODE).set(12000)
  page.find(SIGN_BUTTON).click
end

def random_email
  chars = ("a".."z").to_a.sample(8)
  numbers= (0..9).to_a.sample(6)
  email_token = (chars + numbers).shuffle.join
  email = "#{email_token}@test.com"
end
