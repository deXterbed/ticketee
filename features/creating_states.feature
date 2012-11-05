Feature: Creating states
  In order to be able to specify other states for tickets
  As an admin
  I want to add them to the application

  Background:
    Given there are the following users:
      | email | password | admin |
      | admin@ticketee.com | password | true |
    And I am signed in as them


    Scenario: Creating a state
        When I follow "Admin"
        And I follow "States"
        And I follow "New State"
        And I fill in "Name" with "Duplicate"
        And I press "Create State"
        Then I should see "State has been created."

    Scenario: Editing a state
        And there is a state called "Duplicate"
        When I follow "Admin"
        And I follow "States"
        And I follow "Duplicate"
        And I follow "Edit State"
        And I fill in "Name" with "Irrelevant"
        And I press "Update State"
        Then I should see "State has been updated."

    Scenario: Deleting a state
        And there is a state called "Duplicate"
        When I follow "Admin"
        And I follow "States"
        And I follow "Duplicate"
        And I follow "Delete State"
        Then I should see "State has been deleted."
        And I should not see "Duplicate"

