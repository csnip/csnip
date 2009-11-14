Feature: Pre-scheduling a spay or neuter for my pet

In order to spay or neuter my pet
As a client
I want to inform C-SNIP about me and my pet



Scenario: Filling in all required fields submits the form
  When I go to the new intake/consent form
  And I fill in the following:
    | Last Name       | Doe          |
    | First Name      | John         |
    | Phone           | 616-867-5309 |
    | Alternate Phone | 616-867-5309 |
    | Pet Name        | Whiskers     |
  And I press "Submit"
  Then I should see "Thank you for your submission"
  And I should see "Your reference number is"
  
Scenario: Filling in only some required fields informs me about the ones I have to fill in

Scenario: Filling in all fields submits the form
