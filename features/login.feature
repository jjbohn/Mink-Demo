Feature:
  In order to administer the site
  As a super user
  I need to login

  @javascript
  Scenario: Incorrect credentials
    Given I am on /
    When I follow "Login/Register"
    Then I fill in "name" with "John Bohn"
    Then I fill in "pass" with "mypass"
    Then I press "Log in"
    Then I should see "Sorry, unrecognized username or password."
    And I should see "Login/Register"

  @javascript
  Scenario: Valid administrator credentials
    When I follow "Login/Register"
    And I fill in "name" with "John Bohn"
    And I fill in "pass" with "goodpass"
    And I press "Log in"
    Then I should see "Log out John Bohn"

  @javascript
  Scenario: Logout works
    Given I follow "My Profile"
    And I follow "logout >"
    Then I should not see "My Profile"
    And I should see "Login/Register"
    
