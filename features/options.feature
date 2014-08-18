Feature: Donoji actions with option
  As a CLI
  I can add option

  Scenario: I want more verbose output
    When I run `donoji --verbose` interactively
    And I type "日"
    Then the output should contain "https://www.google.nl/search?q=日&language=ja"
    Then the output should contain "http://dictionary.goo.ne.jp/srch/all/日/m0u/"

  Scenario: I want more verbose output
    When I run `donoji -v` interactively
    And I type "日"
    Then the output should contain "https://www.google.nl/search?q=日&language=ja"
    Then the output should contain "http://dictionary.goo.ne.jp/srch/all/日/m0u/"
