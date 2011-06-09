Feature: Navigation
  In order to navigate the site
  As a user
  I need a menu to get around

#  @javascript
  Scenario: Make sure necessary navigation exists
    Given I am on /
    Then I should see "menu-path-home"
    And I should see "menu-path-node-5"
    And I should see "menu-path-media"
    And I should see "menu-path-community"
    And I should see "menu-path-store-featured"

  Scenario: Make sure home page is correct
    Given I am on /
    Then I should see "Home"
    And I should see "Featured Photos"
  
  @javascript
  Scenario: Make sure home link is correct
    Give I am on /
    When I follow "Photos"
    Then I should be on /photos

