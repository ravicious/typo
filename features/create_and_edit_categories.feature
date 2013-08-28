Feature: Create and Edit Categories
  As a blog administrator
  In order to put blog posts in right categories
  I want to be able to create and edit categories

  Background:
    Given the blog is set up

  Scenario: Adding a Category
    Given I am logged into the admin panel as admin
    When I go to the admin categories page
    And I fill in "Name" with "l33t jokes"
    And I fill in "Keywords" with "hacker jargon"
    And I fill in "Permalink" with "elite-jokes"
    And I fill in "Description" with "Funny jokes about programmers and coding"
    And I press "Save"
    Then I should be on the admin categories page
    And I should see "l33t jokes"
    And I should see "hacker"
    And I should see "elite-jokes"
    And I should see "Funny jokes about programmers and coding"

  Scenario: Editing a Category
    Given I am logged into the admin panel as admin
    And I have created a category named "Nature"
    When I go to the admin categories page
    And I follow "Edit"
    And I fill in "Name" with "Earth Nature"
    And I fill in "Keywords" with "earth nature"
    And I fill in "Permalink" with "earth-nature"
    And I fill in "Description" with "Best photos of Earth nature"
    And I press "Save"
    Then I should be on the admin categories page
    And I should see "Earth Nature"
    And I should see "earth"
    And I should see "earth-nature"
    And I should see "Best photos of Earth nature"
