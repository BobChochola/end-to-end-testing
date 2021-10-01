@BaseCase @Admin @Storefront @AdvancedPage @advancedPageCheckAutoVideo @fixture-shop
Feature: Check advanced page video item can auto playing and looping
  As a merchant
  I want to have advanced page contained video can auto playing or looping

  Background:
    Given I am on Admin Login Page
    And I fill correct account email to email field
    And I fill correct account password to password field
    And I click on login button
    Then I should see successful login
    Then I check intercom message notification frame and click clear intercom message button
    Then I check intercom message notification frame and click intercom message close button
    When I check new feature alert notification frame and click new feature alert close button
    When I check and click exclude products panel close button
    When I check and click no thanks button

  @advancedPageCheckAutoVideo-1
  Scenario: I can enjoy youtube by auto playing
    Given I am on Pages Page
    When I click on add advanced page button
    Then I should be redirected to Advanced Select Page
    When I click on 5th template
    Then I should be redirected to Page Builder Page
    Then I should see skip the guide button
    When I click on skip the guide button
    Then I should see video item
    And I wait for 10 seconds for loading
    When I click on video item
    When I check and click video item
    When I check and click video item
    Then I should see side menu
    When I click on side menu switch tab button included "Settings"
    Then I should see side menu checkbox
    And I click on side menu checkbox included "AutoPlay"
    And I click on ok button
    Then I should see save button
    When I click on save button
    Then I should see view page button
    When I click on view page button
    When I switch to 2 of tabs
    Then I should be redirected to Shop Advanced Page
    And I wait for 10 seconds for loading
    And I scroll down to video with auto playing
    Then I should see video with auto playing
    And ---ROLL BACK---
    Given I am on Pages Page
    When I click on delete button
    Then I should see popover
    And I click on confirm button
    Then I click on ok button

  @advancedPageCheckAutoVideo-2
  Scenario: I can enjoy youtube by auto playing and looping
    Given I am on Pages Page
    When I click on add advanced page button
    Then I should be redirected to Advanced Select Page
    When I click on 5th template
    Then I should be redirected to Page Builder Page
    Then I should see skip the guide button
    When I click on skip the guide button
    And I wait for 10 seconds for loading
    Then I should see video item
    When I click on video item
    When I check and click video item
    When I check and click video item
    Then I should see side menu
    When I click on side menu switch tab button included "Settings"
    And I click on side menu checkbox included "AutoPlay"
    And I click on side menu checkbox included "Auto Replay"
    And I click on ok button
    Then I should see save button
    When I click on save button
    Then I should see view page button
    When I click on view page button
    When I switch to 2 of tabs
    Then I should be redirected to Shop Advanced Page
    And I wait for 10 seconds for loading
    And I scroll down to video with auto playing and looping
    Then I should see video with auto playing and looping
    And ---ROLL BACK---
    Given I am on Pages Page
    When I click on delete button
    Then I should see popover
    And I click on confirm button
    Then I click on ok button

  @advancedPageCheckAutoVideo-3
  Scenario: I can enjoy youtube by looping
    Given I am on Pages Page
    When I click on add advanced page button
    Then I should be redirected to Advanced Select Page
    When I click on 5th template
    Then I should be redirected to Page Builder Page
    Then I should see skip the guide button
    When I click on skip the guide button
    And I wait for 10 seconds for loading
    Then I should see video item
    When I click on video item
    When I check and click video item
    When I check and click video item
    Then I should see side menu
    When I click on side menu switch tab button included "Settings"
    And I click on side menu checkbox included "Auto Replay"
    And I click on ok button
    Then I should see save button
    When I click on save button
    Then I should see view page button
    When I click on view page button
    When I switch to 2 of tabs
    Then I should be redirected to Shop Advanced Page
    And I wait for 10 seconds for loading
    And I scroll down to video with looping
    Then I should see video with looping
    And ---ROLL BACK---
    Given I am on Pages Page
    When I click on delete button
    Then I should see popover
    And I click on confirm button
    Then I click on ok button
