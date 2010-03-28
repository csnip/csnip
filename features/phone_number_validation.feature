Feature: Phone Number Validation
  
  Scenario: Valid phone numbers
    Given appointment requests with the following phone numbers are filled out
      | Phone Number    |
      | 4194108052      |
      | 14194108024     |
      | 5555555555      |
      | (555) 555-5555  |
      | 333-333-3333    |
      | 333-3333        |
      | 333-3333 x345   |
      | 999999999999999 |
      | 11111111111     |
      | 111111111111    |
      | 419.419.2222    |
      
    When it is submitted
    Then it should validate

  Scenario: Invalid phone numbers
    Given appointment requests with the following phone numbers are filled out
      | Phone Number |
      | 00           |
      | xxxxxxxxxx   |
      | xxx-xxx-xxxx |
      | 333.3333     |
      | 33.3333      |

    When it is submitted
    Then it should not validate
