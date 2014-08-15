Feature: Donoji
  As a CLI
  I want to return uses of the given kanji

  Scenario: find 漢 returns 漢字
    When I run `donoji find 漢`
    Then the output should contain "漢字"

  Scenario: empty initial input followed by "漢" inserted
    When I run `donoji`
    Then I should see "どのじ"
    And I enter "漢"
    Then the output should contain "漢字"

