Feature: Donoji find task
  As a CLI given the "find" task
  I want to return uses of the given character

  Scenario: find す returns する
    When I run `donoji find す`
    Then the output should contain "する"

