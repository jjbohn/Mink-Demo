Feature: Blogs
  Fan members should be able to create a community blog post
  but they should not be able to make it featured
  Admins should be able to create a blog and make it featured

  @javascript
  Scenario: Admin Blog Post
    Given I am on home
    And I follow "Login/Register"
    And I fill in "name" with "John Bohn"
    And I fill in "pass" with "goodpass"
    And I press "Log in"
    Then I go to /community/blogs
    And I follow "+ ADD BLOG"
    Then I should see "Make Featured Content"
    Then follow "Log out John Bohn"

  @javascript
  Scenario: Fan member blog post
    When I follow "Login/Register"
    And I fill in "name" with "crazyfan"
    And I fill in "pass" with "fanpass"
    And I press "Log in"
    And I go to /node/add/blog
    Then I should not see "Make Featured Content"
    And I should see "Create Community Blog"
    Then I go to /home
    Then I follow "My Profile"
    And I follow "logout >"
