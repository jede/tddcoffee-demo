Feature: Change active tab
  As a user
  I want to be able to switch between tabs
  In order to read all content

  Scenario: Switch from first tab to second
    Given I am on the start page

    When I click "Home"
    Then I should see "Welcome"

    When I click "About"
    Then I should see "info@bigbigcompany.com"
