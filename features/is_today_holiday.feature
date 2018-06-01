
Feature: Is today holiday?
  Everybody wants to know whether today is holiday

  Scenario: Saturday is holiday
    Given today is Saturday
    When I ask whether it's holiday
    Then I should be told that "Yes!It's Saturday and Holiday" 



    Scenario: Thursday isn't holiday
      Given today is Thursday
      When I ask whether it's holiday
      Then I should be told that "Nope"