Feature: Log out of the Application as Provider
  A provider wishes to close the application to preserve their privacy.

  Scenario: Should Log out
    Given I am on the dashboard page
    When I click on Logout
    Then I should see the login page
