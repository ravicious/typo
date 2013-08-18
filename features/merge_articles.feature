Feature: Merge Articles
  As a blog administrator
  In order to combine articles on the same topic
  I want to be able to merge articles

  Background:
    Given the blog is set up

  Scenario: A non-admin cannot merge two articles
    Given I am logged into the admin panel as author
    And I am on the new article page
    When I fill in "article_title" with "Foobar"
    And I fill in "article__body_and_extended_editor" with "Lorem Ipsum"
    And I press "Publish"
    And I go to the admin content page
    And I follow "Edit"
    Then I should not see "Merge Articles"

  Scenario: When articles are merged, the merged article should contain the text of both previous articles
    Given I am logged into the admin panel as admin
    And I am on the new article page
    When I fill in "article_title" with "First Article"
    And I fill in "article__body_and_extended_editor" with "This is the first article body"
    And I press "Publish"
    And I go to the new article page
    And I fill in "article_title" with "Second Article"
    And I fill in "article__body_and_extended_editor" with "This is the second article body"
    And I press "Publish"
    And I follow "Edit"
    And I fill in "merge_with" with "4"
    And I press "Merge"
    Then I should be on the latest article page
    And I should see "This is the first article body"
    And I should see "This is the second article body"
