Feature: Test leaderboard records at Baseball Reference

Scenario: Offensive WAR leader is Aaron Judge
    Given that we have gone to www.baseball-reference.com
    When we click the "Leaders" tab
    Then we find that "Offensive WAR" leader is "Aaron Judge" for "2022 Leaders"

Scenario: Offensive WAR leader is Aaron Judge
    Given that we have gone to www.baseball-reference.com
    When we click the "Leaders" tab
    Then we find that "Defensive WAR" leader is "Ke'Bryan Hayes" for "2022 Leaders"

Scenario Outline: Verify WAR leaders
    Given that we have gone to www.baseball-reference.com
    When we click the "<Tab>" tab
    Then we find that "<Category>" leader is "<Player>" for "<Year>"

Examples: 
| Category      | Player         | Year         | Tab     |
| Offensive WAR | Aaron Judge    | 2022 Leaders | Leaders |
| Defensive WAR | Ke'Bryan Hayes | 2022 Leaders | Leaders |
