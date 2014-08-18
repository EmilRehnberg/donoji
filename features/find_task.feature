Feature: Donoji find task
  As a CLI given the "find" task
  I want to return uses of the given character

  Scenario: find 彙 returns 語彙
    When I run `donoji find 彙`
    Then the output should contain "語彙"

