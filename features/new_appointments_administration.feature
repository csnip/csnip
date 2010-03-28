Feature: New Appointments Features
  In order to establish contact with new clients
  As an administrator
  I can view and print appointment requests

  Scenario: View new appointment requests
    Given a new request
    And I am logged in as an administrator
    When I view the list of requests
    Then I should see the new request
    And the status of the appointment should be requested

  Scenario: Print new appointment requests
    Given a new request
    And I print the list of new requests
    Then the status of the appointment should be acknowledged

  Scenario: Schedule an appointment
    Given I view an appointment request
    When I indicate that an appointment is scheduled
    Then the status of the appointment should be scheduled

  Scenario: Complete an appointment
    Given I view a scheduled appointment
    When I indicate the appointment was attended
    Then the status of the appointment should be completed

  
