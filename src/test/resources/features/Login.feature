Feature: Log in feature

  @Login
  Scenario Outline: Login user with valid input
    Given User already on demoblaze home page
    When User click login in button in home page
    And User input "<username>" in username field in login page
    And User input "<password>" in password field in login page
    And User click login button
    Then User successfully logged in and should see Welcome "<username>" label at the navigation bar
    Examples:
      | username | password |
      | sof1     | sof1     |

  @Login
  Scenario Outline: Login user with unregistered credentials
    Given User already on demoblaze home page
    When User click login in button in home page
    And User input "<username>" in username field in login page
    And User input "<password>" in password field in login page
    And User click login button
    Then User failed to login and should see pop up with this message "User does not exist."
    Examples:
      | username | password |
      | sofiee1  | sofiee1  |

  @Login
  Scenario Outline: Login user with wrong password
    Given User already on demoblaze home page
    When User click login in button in home page
    And User input "<username>" in username field in login page
    And User input "<password>" in password field in login page
    And User click login button
    Then User failed to login and should see pop up with this message "Wrong password."
    Examples:
      | username | password |
      | sof1     | abcde    |

  @Login
  Scenario Outline: Login user with empty username field
    Given User already on demoblaze home page
    When User click login in button in home page
    And User input "<username>" in username field in login page
    And User input "<password>" in password field in login page
    And User click login button
    Then User failed to login and should see pop up with this message "Please fill out Username and Password."
    Examples:
      | username | password |
      |          | sof1     |

  @Login
  Scenario Outline: Login user with empty password field
    Given User already on demoblaze home page
    When User click login in button in home page
    And User input "<username>" in username field in login page
    And User input "<password>" in password field in login page
    And User click login button
    Then User failed to login and should see pop up with this message "Please fill out Username and Password."
    Examples:
      | username | password |
      | sof1     |          |

  @Login
  Scenario Outline: Login user with empty all fields
    Given User already on demoblaze home page
    When User click login in button in home page
    And User input "<username>" in username field in login page
    And User input "<password>" in password field in login page
    And User click login button
    Then User failed to login and should see pop up with this message "Please fill out Username and Password."
    Examples:
      | username | password |
      |          |          |