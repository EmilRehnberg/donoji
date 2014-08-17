Feature: Donoji
  As a CLI
  I want to return uses of the given kanji

  Scenario: find 漢 returns 漢字
    When I run `donoji find い`
    Then the output should contain "いる"

  Scenario: empty initial input followed by "漢" inserted
    When I run `donoji` interactively
    And I type "い"
    Then the output should contain "どのじ"
    Then the output should contain "ない"

