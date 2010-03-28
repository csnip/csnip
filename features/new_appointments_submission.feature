Feature: Client Appointments Features
  In order to spay or neuter my pet
  As a potential client
  I want to request an appointment

  Scenario: New Appointment submission
    Given I go to the appointment request page
    When the client submits the appointment request form
    Then the status of the appointment should be requested
