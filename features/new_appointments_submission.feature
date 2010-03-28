Feature: Client Appointments Features
  In order to spay or neuter my pet
  As a potential client
  I want to request an appointment

  Scenario: New Appointment submission
    Given a client goes to the appointment request page
    When the client submits the appointment request form
    Then the appointment status should be requested
