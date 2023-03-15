Feature: Test leaderboard records at Baseball Reference

Scenario: Offensive WAR leader is Aaron Judge
    Given that we have gone to www.baseball-reference.com
    When we click the "leaders" tab
    Then we find that "Offensive WAR" leader is "Aaron Judge" for "2022 Leaders"

Scenario: Offensive WAR leader is Aaron Judge
    Given that we have gone to www.baseball-reference.com
    When we click the "leaders" tab
    Then we find that "Defensive WAR" leader is "Ke'Bryan Hayes" for "2022 Leaders"