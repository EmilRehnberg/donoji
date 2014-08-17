Feature: Donoji find task
  As a CLI given the "find" task
  I want to return uses of the given character

  Scenario: find い returns いる
    When I run `donoji find い`
    Then the output should contain "いる"

