Feature: Product page feature

  @ProductPage
  Scenario Outline: Verify that the product name is displayed correctly
    Given User already on demoblaze home page
    When User click login in button in home page
    And User input "sof1" in username field in login page
    And User input "sof1" in password field in login page
    And User click login button
    Then User successfully logged in and should see Welcome "sof1" label at the navigation bar
    When User click on phones button in categories
    And User click on "<productName>"
    Then User will be redirected to the product page
    And Verify that the product name is displayed correctly which is the product name is "<productName>"
    Examples:
      | productName      |
      | Nokia lumia 1520 |

  @ProductPage
  Scenario Outline: Verify that the product price is displayed correctly
    Given User already on demoblaze home page
    When User click login in button in home page
    And User input "sof1" in username field in login page
    And User input "sof1" in password field in login page
    And User click login button
    Then User successfully logged in and should see Welcome "sof1" label at the navigation bar
    When User click on phones button in categories
    And User click on "<productName>"
    Then User will be redirected to the product page
    And Verify that the product price is displayed correctly which is the product price is "<productPrice>"
    Examples:
      | productName      | productPrice |
      | Nokia lumia 1520 | $820         |

  @ProductPage
  Scenario Outline: Verify that the product description is displayed correctly
    Given User already on demoblaze home page
    When User click login in button in home page
    And User input "sof1" in username field in login page
    And User input "sof1" in password field in login page
    And User click login button
    Then User successfully logged in and should see Welcome "sof1" label at the navigation bar
    When User click on phones button in categories
    And User click on "<productName>"
    Then User will be redirected to the product page
    And Verify that the product description is displayed correctly which is the product description is "<productDescription>"
    Examples:
      | productName      | productDescription                                                                                                  |
      | Nokia lumia 1520 | The Nokia Lumia 1520 is powered by 2.2GHz quad-core Qualcomm Snapdragon 800 processor and it comes with 2GB of RAM. |

  @ProductPage
  Scenario Outline: Verify that the product image is displayed correctly
    Given User already on demoblaze home page
    When User click login in button in home page
    And User input "sof1" in username field in login page
    And User input "sof1" in password field in login page
    And User click login button
    Then User successfully logged in and should see Welcome "sof1" label at the navigation bar
    When User click on phones button in categories
    And User click on "<productName>"
    Then User will be redirected to the product page
    And Verify that the product image is displayed correctly which is the product image name is "<productImageName>"
    Examples:
      | productName      | productImageName |
      | Nokia lumia 1520 | Lumia_1520       |

  @ProductPage
  Scenario Outline: Verify that by clicking on add to cart button will adds the product to the cart
    Given User already on demoblaze home page
    When User click login in button in home page
    And User input "sof1" in username field in login page
    And User input "sof1" in password field in login page
    And User click login button
    Then User successfully logged in and should see Welcome "sof1" label at the navigation bar
    When User click on phones button in categories
    And User click on "<productName>"
    Then User will be redirected to the product page
    When User click on add to cart button
    Then The product has been added to cart and user should see pop up with this message "Product added."
    Examples:
      | productName      |
      | Nokia lumia 1520 |

  @ProductPage
  Scenario Outline: Click on the add to cart button without login
    Given User already on demoblaze home page
    When User click on phones button in categories
    And User click on "<productName>"
    Then User will be redirected to the product page
    When User click on add to cart button
    Then The product failed to be added to cart and shouldn't see pop up with this message "Product added"
    Examples:
      | productName      |
      | Nokia lumia 1520 |