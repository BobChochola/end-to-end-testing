@BaseCase @Storefront @checkFbMessageDisplay @theme-kingsman
Feature: Check Fb Message plugin Display
  As a merchant
  I want to use fb message contact customer

  @EAT-480 @EAT-480-1 @fixture-fb-plugin
  Scenario: Check Fb Message plugin Display - With Rollout Key
    Given I am on Shop Home Layout V Two Page
    Then I should see facebook plugin
    When I switch to facebook plugin frame
    Then I should see facebook button

  @EAT-480 @EAT-480-2 @fixture-without-fb-plugin
  Scenario: Check Fb Message plugin Display - Without Rollout Key
    Given I am on Shop Home Layout V Two Page
    Then I should not see fb message pop