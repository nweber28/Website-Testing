Feature: Test leaderboard records at Baseball Reference

Scenario: Aaron Judge player page is displayed
    Given I launch the Chrome Browser
    When I open Baseball Reference Website
    When we search "Aaron Judge" in search bar
    Then "Aaron Judge" is in title tag of website

    Scenario: Bryan Reynolds player page is displayed
        Given I launch the Chrome Browser
        When I open Baseball Reference Website
        When we search "Bryan Reynolds" in search bar
        Then "Bryan Reynolds" is in title tag of website