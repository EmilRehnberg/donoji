Feature: Donoji
  As a CLI
  I want to return uses of the given kanji

  Scenario: find い returns いる
    When I run `donoji find い`
    Then the output should contain "いる"

  Scenario: running without task drops you to a prompt asking for the character you want to find a use for
    When I run `donoji` interactively
    And I type "い"
    Then the output should contain "どのじ"
    Then the output should contain "ない"

