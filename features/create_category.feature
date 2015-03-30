Feature: Create Category
  As an author
  In order to categories my thoughts to the world
  I want to create a category

  Background:
    Given the blog is set up
    And I am logged into the admin panel
    And I follow "Categories"
  
  Scenario: Create new category
    Given I am on the categories page
    When I fill in "category_name" with "asd"
    And I fill in "category_keywords" with "asd"
    And I press "Save"
    Then I should see "asd"
  Scenario: Edit category
    Given I am on the edit page for "General"
    Then the "category_name" field should contain "General"
    And I fill in "category_name" with "ahz"
    And I press "Save"
    Then I should see "ahz"