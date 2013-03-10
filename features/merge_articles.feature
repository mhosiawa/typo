Feature: Merge Articles
  As a blog administrator
  In order to share my thoughts with the world
  I want to be able to merge articles with smilar content in my blog

  Background:
    Given the blog is set up
    And I am logged into the admin panel

  Scenario: Successfully merge articles
    Given article "test" exists
    And article "test1" exists
    Given I am on the edit article "test" page
    Then show me the page
    When I fill in "merge_with" with article "test1" id
    And I press "Merge"
    Then I should be on the edit article "test" page
    And I should see "Test" as a title
    And I should see "test test1" as a body
   
 

    