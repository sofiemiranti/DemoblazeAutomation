Feature: Home page feature

  @HomePage
  Scenario: Verify that the carousel image is displayed
    Given User already on demoblaze home page
    When User click login in button in home page
    And User input "sof1" in username field in login page
    And User input "sof1" in password field in login page
    And User click login button
    Then User successfully logged in and should see Welcome "sof1" label at the navigation bar
    And Verify that the carousel image is displayed in home page

  @HomePage
  Scenario: Verify that the carousel control next icon is active
    Given User already on demoblaze home page
    When User click login in button in home page
    And User input "sof1" in username field in login page
    And User input "sof1" in password field in login page
    And User click login button
    Then User successfully logged in and should see Welcome "sof1" label at the navigation bar
    When User click on the carousel control next icon
    Then Carousel image will be changed to next image

  @HomePage
  Scenario: Verify that the carousel control previous icon is active
    Given User already on demoblaze home page
    When User click login in button in home page
    And User input "sof1" in username field in login page
    And User input "sof1" in password field in login page
    And User click login button
    Then User successfully logged in and should see Welcome "sof1" label at the navigation bar
    When User click on the carousel control previous icon
    Then Carousel image will be changed to previous image

  @HomePage
  Scenario: Verify that by clicking the phones button in categories will displays phones products
    Given User already on demoblaze home page
    When User click login in button in home page
    And User input "sof1" in username field in login page
    And User input "sof1" in password field in login page
    And User click login button
    Then User successfully logged in and should see Welcome "sof1" label at the navigation bar
    When User click on phones button in categories
    Then Phones products will be displayed

  @HomePage
  Scenario: Verify that by clicking the monitors button in categories will displays monitors products
    Given User already on demoblaze home page
    When User click login in button in home page
    And User input "sof1" in username field in login page
    And User input "sof1" in password field in login page
    And User click login button
    Then User successfully logged in and should see Welcome "sof1" label at the navigation bar
    When User click on monitors button in categories
    Then Monitors products will be displayed

  @HomePage
  Scenario: Verify that by clicking the laptops button in categories will displays laptops products
    Given User already on demoblaze home page
    When User click login in button in home page
    And User input "sof1" in username field in login page
    And User input "sof1" in password field in login page
    And User click login button
    Then User successfully logged in and should see Welcome "sof1" label at the navigation bar
    When User click on laptops button in categories
    Then Laptops products will be displayed

  @HomePage
  Scenario: Validate the product card displays the image, name, price, and description of product correctly
    Given User already on demoblaze home page
    When User click login in button in home page
    And User input "sof1" in username field in login page
    And User input "sof1" in password field in login page
    And User click login button
    Then User successfully logged in and should see Welcome "sof1" label at the navigation bar
    And Validate the product card displays the image, name, price, and description of the product correctly

  @HomePage
  Scenario: Verify that by clicking next button will shows the next products
    Given User already on demoblaze home page
    When User click login in button in home page
    And User input "sof1" in username field in login page
    And User input "sof1" in password field in login page
    And User click login button
    Then User successfully logged in and should see Welcome "sof1" label at the navigation bar
    When User click on the next button
    Then The next products will be displayed

  @HomePage
  Scenario: Verify that by clicking previous button will shows the previous products
    Given User already on demoblaze home page
    When User click login in button in home page
    And User input "sof1" in username field in login page
    And User input "sof1" in password field in login page
    And User click login button
    Then User successfully logged in and should see Welcome "sof1" label at the navigation bar
    When User click on the previous button
    Then The previous products will be displayed

  @HomePage
  Scenario: Verify that by clicking on the product name will redirects user to the product page
    Given User already on demoblaze home page
    When User click login in button in home page
    And User input "sof1" in username field in login page
    And User input "sof1" in password field in login page
    And User click login button
    Then User successfully logged in and should see Welcome "sof1" label at the navigation bar
    When User click on phones button in categories
    And User click on "Nokia lumia 1520"
    Then User will be redirected to the product page