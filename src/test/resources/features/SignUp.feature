Feature: Sign up feature

  @SignUp
  Scenario Outline: Sign up user with valid input
    Given User already on demoblaze home page
    When User click sign up button in homepage
    And User input "<username>" in username field
    And User input "<password>" in password field
    And User click sign up button
    Then User should see pop up message "Sign up successful."
    Examples:
      | username | password |
      | sof11    | sof11    |

  @SignUp
  Scenario Outline: Sign up new user with empty username field
    Given User already on demoblaze home page
    When User click sign up button in homepage
    And User input "<username>" in username field
    And User input "<password>" in password field
    And User click sign up button
    Then User should see pop up message "Please fill out Username and Password."
    Examples:
      | username | password |
      |          | sof4     |

  @SignUp
  Scenario Outline: Sign up new user with empty password field
    Given User already on demoblaze home page
    When User click sign up button in homepage
    And User input "<username>" in username field
    And User input "<password>" in password field
    And User click sign up button
    Then User should see pop up message "Please fill out Username and Password."
    Examples:
      | username | password |
      | sof4     |          |

  @SignUp
  Scenario Outline: Sign up new user with empty all fields
    Given User already on demoblaze home page
    When User click sign up button in homepage
    And User input "<username>" in username field
    And User input "<password>" in password field
    And User click sign up button
    Then User should see pop up message "Please fill out Username and Password."
    Examples:
      | username | password |
      |          |          |

  @SignUp
  Scenario Outline: Sign up new user with username that has already used before
    Given User already on demoblaze home page
    When User click sign up button in homepage
    And User input "<username>" in username field
    And User input "<password>" in password field
    And User click sign up button
    Then User should see pop up message "This user already exist."
    Examples:
      | username | password |
      | sof1     | 123456   |

  @SignUp
  Scenario Outline: Sign up new user with username contains space
    Given User already on demoblaze home page
    When User click sign up button in homepage
    And User input "<username>" in username field
    And User input "<password>" in password field
    And User click sign up button
    Then User failed to Sign up and shouldn't see pop up message "Sign up successful."
    Examples:
      | username | password |
      | sof 20   | 123456   |
