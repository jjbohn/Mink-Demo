Feature: Navigation
  In order to navigate the site
  As a user
  I need a menu to get around

  @javascript
  Scenario:
    Given I am on /
    When I follow "menu-path-home"
