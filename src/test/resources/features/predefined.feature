
@predefined
Feature: Quote Page Scenario
  Background:
    Given I open url "https://env-jam.portnov.com/"
    Then I should see page title as "Your store. Home page title"
    Then I click on element with xpath "//*[@class='ico-login']"
    When I type "sharpole12@malpracticeboard.com" into element with xpath "//input[@class='email']"
    And I type "Qwerasd123!2" into element with xpath "//input[@class='password']"
    Then I click on element with xpath "//div[@class='buttons']/button[@type='submit']"
    Then I click on element with xpath "//*[@class='ico-account']"

  @MyAccount
  Scenario: Page My Account
#    See all categories of My Account
    Then element with xpath "//li[@class='customer-info active']/a" should have text as "Customer info"
    Then element with xpath "//li[@class='customer-addresses inactive']/a" should have text as "Addresses"
    Then element with xpath "//li[@class='customer-orders inactive']/a" should have text as "Orders"
    Then element with xpath "//li[@class='downloadable-products inactive']/a" should have text as "Downloadable products"
    Then element with xpath "//li[@class='back-in-stock-subscriptions inactive']/a" should have text as "Back in stock subscriptions"
    Then element with xpath "//li[@class='reward-points inactive']/a" should have text as "Reward points"
    Then element with xpath "//li[@class='change-password inactive']/a" should have text as "Change password"
    Then element with xpath "//li[@class='customer-reviews inactive']/a" should have text as "My product reviews"

  @MyAccountCustomerInfo
  Scenario: Page My Account Customer info
#    required fields  Customer info
    When I clear element with xpath "//div[@class='inputs']/*[@id='FirstName']"
    And I clear element with xpath "//div[@class='inputs']/*[@id='LastName']"
    And I clear element with xpath "//div[@class='inputs']/*[@id='Email']"
    Then I click on element with xpath "//div[@class='buttons']/button[@type='submit']"

    Then element with xpath "//*[@id='FirstName-error']" should be present
    Then element with xpath "//*[@id='FirstName-error']" should contain text "First name is required."
    Then element with xpath "//*[@id='LastName-error']" should be present
    Then element with xpath "//*[@id='LastName-error']" should contain text "Last name is required."
    Then element with xpath "//*[@id='Email-error']" should be present
    Then element with xpath "//*[@id='Email-error']" should contain text "Email is required."

#  Customer info
    When element with xpath "//div[@class='page-title']/h1" should have text as "My account - Customer info"
    Then I click on element with xpath "//span[@class='male']/input[@value='M']"
    Then I type "BEBE" into element with xpath "//div[@class='inputs']/*[@id='FirstName']"
    And I type "QWQW" into element with xpath "//div[@class='inputs']/*[@id='LastName']"
    And I type "sharpole12@malpracticeboard.com" into element with xpath "//div[@class='inputs']/*[@id='Email']"
    And I type "EDORSDO" into element with xpath "//input[@id='Company']"
    And I click on element with xpath "//div[@class='buttons']/button[@type='submit']"

  @MyAccountAddresses
  Scenario: Page My Account Addresses
#  Addresses
    When I click on element with xpath "//li[@class='customer-addresses inactive']/a"
    Then element with xpath "//div[@class='page-title']/h1" should have text as "My account - Addresses"
    And element with xpath "//ul[@class='info']" should be present

  @MyAccountOrder
  Scenario: Page My Account Order
#    Order
    When I click on element with xpath "//li[@class='customer-orders inactive']/a"
    Then element with xpath "//div[@class='page-title']/h1" should have text as "My account - Orders"
    And element with xpath "//div[@class='order-list']" should be present

  @MyAccountDownloadableProducts
  Scenario: Page My Account Downloadable products
#    Downloadable products
    When I click on element with xpath "//li[@class='downloadable-products inactive']/a"
    Then element with xpath "//div[@class='page-title']/h1" should have text as "My account - Downloadable products"
    And element with xpath "//div[@class='page-body']" should be present

  @MyAccountBackSubscriptions
  Scenario: Page My Account Back in stock subscriptions
  #  Back in stock subscriptions
    When I click on element with xpath "//li[@class='back-in-stock-subscriptions inactive']/a"
    Then element with xpath "//div[@class='page-title']/h1" should have text as "My account - Back in stock subscriptions"
    And element with xpath "//div[@class='page-body']" should be present

  @MyAccountRewardPoints
  Scenario: Page My Account Reward points
#  Reward points
    When I click on element with xpath "//li[@class='reward-points inactive']/a"
    Then element with xpath "//div[@class='page-title']/h1" should have text as "My account - Reward points"
    And element with xpath "//div[@class='page-body']" should be present

  @MyAccountChangePassword
  Scenario: Page My Account Change password
#  Change password
    When I click on element with xpath "//li[@class='change-password inactive']/a"
    Then element with xpath "//div[@class='page-title']/h1" should have text as "My account - Change password"
    And element with xpath "//div[@class='page-body']" should be present
    And element with xpath "//input[@name='OldPassword']" should be present
    And element with xpath "//input[@name='NewPassword']" should be present
    And element with xpath "//input[@name='ConfirmNewPassword']" should be present
    Then I type "Qwerasd123!2" into element with xpath "//input[@name='OldPassword']"
    Then I type "Qwerasd123!2" into element with xpath "//input[@name='NewPassword']"
    Then I type "Qwerasd123!2" into element with xpath "//input[@name='ConfirmNewPassword']"

  @MyAccountProductReviews
  Scenario: Page My Account My Product reviews
#  My product reviews
    When I click on element with xpath "//li[@class='customer-reviews inactive']/a"
    Then element with xpath "//div[@class='page-title']/h1" should have text as "My account - My product reviews"
    And element with xpath "//div[@class='page-body']" should be present

    Then I wait for 2 sec
#    Log out
    Then I click on element with xpath "//*[@class='ico-logout']"





