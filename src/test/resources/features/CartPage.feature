Feature: Cart page feature

  @CartPage
  Scenario Outline: Verify that the product image is displayed correctly in products table
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
    When User click on the cart button in navigation bar
    Then User should be redirected to cart page
    And Verify that the product image is displayed correctly in cart page which is the product image name is "<productImageName>"
    Examples:
      | productName      | productImageName |
      | Nokia lumia 1520 | Lumia_1520       |

  @CartPage
  Scenario Outline: Verify that the product name is displayed correctly in products table
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
    When User click on the cart button in navigation bar
    Then User should be redirected to cart page
    And Verify that the product name is displayed correctly in cart page which is the product name is "<productName>"
    Examples:
      | productName      |
      | Nokia lumia 1520 |

  @CartPage
  Scenario Outline: Verify that the product price is displayed correctly in products table
    Given User already on demoblaze home page
    When User click login in button in home page
    And User input "sof3" in username field in login page
    And User input "sof3" in password field in login page
    And User click login button
    Then User successfully logged in and should see Welcome "sof3" label at the navigation bar
    When User click on phones button in categories
    And User click on "<productName>"
    Then User will be redirected to the product page
    When User click on add to cart button
    Then The product has been added to cart and user should see pop up with this message "Product added."
    When User click on the cart button in navigation bar
    Then User should be redirected to cart page
    And Verify that the product price is displayed correctly in cart page which is the product price is "<productPrice>"
    Examples:
      | productName      | productPrice |
      | Nokia lumia 1520 | 820          |

  @CartPage
  Scenario Outline: Verify the total price matches the sum of product prices displayed in the cart
    Given User already on demoblaze home page
    When User click login in button in home page
    And User input "sof10" in username field in login page
    And User input "sof10" in password field in login page
    And User click login button
    Then User successfully logged in and should see Welcome "sof10" label at the navigation bar
    When User click on phones button in categories
    And User click on "<productName>"
    Then User will be redirected to the product page
    When User click on add to cart button
    Then The product has been added to cart and user should see pop up with this message "Product added."
    When User click on the cart button in navigation bar
    Then User should be redirected to cart page
    And Verify the total prices matches the sum of product prices displayed in the cart, which is the total is "<totalPrice>"
    Examples:
      | productName      | totalPrice |
      | Nokia lumia 1520 | 820        |

  @CartPage
  Scenario Outline: Verify that by clicking on Place Order button will displays the purchase form
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
    When User click on the cart button in navigation bar
    Then User should be redirected to cart page
    When User click on Place Order button
    Then User should see purchase form
    Examples:
      | productName      |
      | Nokia lumia 1520 |

  @CartPage
  Scenario Outline: Click delete button
    Given User already on demoblaze home page
    When User click login in button in home page
    And User input "sof6" in username field in login page
    And User input "sof6" in password field in login page
    And User click login button
    Then User successfully logged in and should see Welcome "sof6" label at the navigation bar
    When User click on phones button in categories
    And User click on "<productName>"
    Then User will be redirected to the product page
    When User click on add to cart button
    Then The product has been added to cart and user should see pop up with this message "Product added."
    When User click on the cart button in navigation bar
    Then User should be redirected to cart page
    When User click on delete button
    Examples:
      | productName      |
      | Nokia lumia 1520 |

  @CartPage
  Scenario Outline: Verify the purchase button is not enabled after successfully purchasing
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
    When User click on the cart button in navigation bar
    Then User should be redirected to cart page
    When User click on Place Order button
    Then User should see purchase form
    When User input "<name>" in name field, "<country>" in country field, "<city>" in city field, "<creditCard>" in credit card field, "<month>" in month field, and "<year>" in year field
    And User click on purchase button
    Then User should see pop up with this message Thank you for your purchase!
    And The purchase button is not enabled
    Examples:
      | productName      | name  | country   | city    | creditCard | month | year |
      | Nokia lumia 1520 | Sofie | Indonesia | Bandung | 123456     | 3     | 2024 |

  @CartPage
  Scenario Outline: Purchase products with empty name field
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
    When User click on the cart button in navigation bar
    Then User should be redirected to cart page
    When User click on Place Order button
    Then User should see purchase form
    When User input "<name>" in name field, "<country>" in country field, "<city>" in city field, "<creditCard>" in credit card field, "<month>" in month field, and "<year>" in year field
    And User click on purchase button
    Then User failed to purchase and should see pop up with this message "Please fill out Name and Creditcard."
    Examples:
      | productName      | name | country   | city    | creditCard | month | year |
      | Nokia lumia 1520 |      | Indonesia | Bandung | 123456     | 3     | 2024 |

  @CartPage
  Scenario Outline: Purchase product with empty country field
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
    When User click on the cart button in navigation bar
    Then User should be redirected to cart page
    When User click on Place Order button
    Then User should see purchase form
    When User input "<name>" in name field, "<country>" in country field, "<city>" in city field, "<creditCard>" in credit card field, "<month>" in month field, and "<year>" in year field
    And User click on purchase button
    Then User failed to purchase
    Examples:
      | productName      | name  | country | city    | creditCard | month | year |
      | Nokia lumia 1520 | Sofie |         | Bandung | 123456     | 3     | 2024 |

  @CartPage
  Scenario Outline: Purchase products with empty city field
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
    When User click on the cart button in navigation bar
    Then User should be redirected to cart page
    When User click on Place Order button
    Then User should see purchase form
    When User input "<name>" in name field, "<country>" in country field, "<city>" in city field, "<creditCard>" in credit card field, "<month>" in month field, and "<year>" in year field
    And User click on purchase button
    Then User failed to purchase
    Examples:
      | productName      | name  | country   | city | creditCard | month | year |
      | Nokia lumia 1520 | Sofie | Indonesia |      | 123456     | 3     | 2024 |

  @CartPage
  Scenario Outline: Purchase products with empty credit card field
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
    When User click on the cart button in navigation bar
    Then User should be redirected to cart page
    When User click on Place Order button
    Then User should see purchase form
    When User input "<name>" in name field, "<country>" in country field, "<city>" in city field, "<creditCard>" in credit card field, "<month>" in month field, and "<year>" in year field
    And User click on purchase button
    Then User failed to purchase and should see pop up with this message "Please fill out Name and Creditcard."
    Examples:
      | productName      | name  | country   | city    | creditCard | month | year |
      | Nokia lumia 1520 | Sofie | Indonesia | Bandung |            | 3     | 2024 |

  @CartPage
  Scenario Outline: Purchase product with input other than numerical in credit card field
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
    When User click on the cart button in navigation bar
    Then User should be redirected to cart page
    When User click on Place Order button
    Then User should see purchase form
    When User input "<name>" in name field, "<country>" in country field, "<city>" in city field, "<creditCard>" in credit card field, "<month>" in month field, and "<year>" in year field
    And User click on purchase button
    Then User failed to purchase
    Examples:
      | productName      | name  | country   | city    | creditCard | month | year |
      | Nokia lumia 1520 | Sofie | Indonesia | Bandung | abcde      | 3     | 2024 |

  @CartPage
  Scenario Outline: Purchase product with empty month field
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
    When User click on the cart button in navigation bar
    Then User should be redirected to cart page
    When User click on Place Order button
    Then User should see purchase form
    When User input "<name>" in name field, "<country>" in country field, "<city>" in city field, "<creditCard>" in credit card field, "<month>" in month field, and "<year>" in year field
    And User click on purchase button
    Then User failed to purchase
    Examples:
      | productName      | name  | country   | city    | creditCard | month | year |
      | Nokia lumia 1520 | Sofie | Indonesia | Bandung | 123456     |       | 2024 |

  @CartPage
  Scenario Outline: Purchase product with empty year field
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
    When User click on the cart button in navigation bar
    Then User should be redirected to cart page
    When User click on Place Order button
    Then User should see purchase form
    When User input "<name>" in name field, "<country>" in country field, "<city>" in city field, "<creditCard>" in credit card field, "<month>" in month field, and "<year>" in year field
    And User click on purchase button
    Then User failed to purchase
    Examples:
      | productName      | name  | country   | city    | creditCard | month | year |
      | Nokia lumia 1520 | Sofie | Indonesia | Bandung | 123456     | 4     |      |

