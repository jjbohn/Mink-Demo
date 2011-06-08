Feature:
  In order to know what page I'm on
  As a normal user
  I want to see the name of the page that I am on

  Scenario: Main Page Headers
    Given I am on news
    Then I should see "News"
