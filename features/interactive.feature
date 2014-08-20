Feature: Donoji interactive actions
  As a CLI given no task
  I want the CLI to query the user for a character and output some hits

  Scenario: I want to see one hit at time
    When I run `donoji` interactively
    And I type "い"
    And I type "n"
    And I type "q"
    Then the output should contain "どのじ"
    Then the output should contain "ない"

  Scenario: the user wants to print all the hits at once
    When I run `donoji` interactively
    And I type "い"
    And I type "a"
    Then the output should contain "いる"
    Then the output should contain "ない"

  Scenario: the user can change the letter to search for
    When I run `donoji` interactively
    And I type "い"
    And I type "o"
    And I type "彙"
    And I type "q"
    Then the output should contain "いる"
    Then the output should contain "語彙"

