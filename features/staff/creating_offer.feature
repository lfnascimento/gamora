Feature: Creating offer

  Scenario: Should fill up all form fields and save successfully
    Given I am on offer form page
    When I fill up all form fields
    And click "Create Offer"
    Then should receive a message "Offer was successfully created."
