@BaseCase2 @Admin @Storefront @AdvancedPage @userGuideIsNotPopupEverytime
Feature: Check user guide should not show pop-up if closed popup
  As a merchant
  I want to see user guide is not pop-up every time when add the element

  Background:
    Given I am on Admin Login Page
    When I fill correct account email to email field
    And I fill correct account password to password field
    And I click on login button
    Then I should see successful login
    Then I check intercom message notification frame and click clear intercom message button
    Then I check intercom message notification frame and click intercom message close button
    When I check new feature alert notification frame and click new feature alert close button
    When I check and click exclude products panel close button
    When I check and click no thanks button

  @EAT-481 @EAT-481-1
  Scenario: I add element at the bottom / top, and should not see user guide again
    Given I am on Pages Page
    When I click on add advanced page button
    Then I should be redirected to Advanced Select Page
    When I click on 1st template
    Then I should be redirected to Page Builder Page
    Then I should see user guide next step button
    When I click on user guide next step button
    And I click on user guide next step button
    And I click on user guide next step button
    Then I should see user guide done button
    When I click on user guide done button
    When I click on menu button
    Then I should see text button
    When I drag text button to top location
    And I check and click empty text editor
    Then I should see text editor
    When I click on save and close button
    Then I should not see skip the guide button
    When I click on menu button
    Then I should see image button
    When I drag image button to top location
    And I check and click empty image

    Then I should see image upload zone
    When I pick photo to photo selector
    Then I should see 2 uploaded photo item
    When I click on save and close button
    Then I should not see skip the guide button