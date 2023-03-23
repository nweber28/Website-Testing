Feature: Test leaderboard records at Baseball Reference

Scenario: Aaron Judge player page is displayed
    Given that we have gone to "www.baseball-reference.com"
    When we search "Aaron Judge" in search bar
    Then "Aaron Judge" is in title tag of website

Scenario: Bryan Reynolds player page is displayed
    Given that we have gone to "www.baseball-reference.com"
    When we search "Bryan Reynolds" in search bar
    Then "Bryan Reynolds" is in title tag of website

Scenario Outline: Verify WAR leaders
    Given that we have gone to "<site>"
    When we search "<name>" in search bar
    Then "<name>" is in title tag of website

Examples: 
| Name           | Site                          |
| Aaron Judge    | www.baseball-reference.com    |
| Bryan Reynolds | www.baseball-reference.com    |
