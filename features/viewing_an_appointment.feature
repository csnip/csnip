Feature: Viewing an appointment

In order to know all about an appointment
As a user
I want to view all details of an appointment

Scenario: Viewing an appointment with an address
  Given an appointment
  And the appointment's address is:
    | street      | 123 Main St  |
    | city        | Grand Rapids |
    | postal_code | 49506        |
    | county      | Kent         |
  And I am logged in
  When I go to the appointment page
  Then I should see "123 Main St"
  And I should see "Grand Rapids"
  And I should see "49506"
  And I should see "Kent"
