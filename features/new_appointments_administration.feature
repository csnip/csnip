Feature: New Appointments Features
  In order to establish contact with new clients
  As an administrator
  I can view and print appointment requests

  Scenario: New Appointment administration
    Given a new request
    And I am logged in as an administrator
    When I view the list of requests
    Then I should see the new request
    And the appointment status should be requested

