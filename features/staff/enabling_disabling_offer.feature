Feature: Enabling/Disabling offer

Scenario: enabling offer
  Given I am on staff offers index page
  When I click "enable" offer
  Then offer status should be "enabled"
