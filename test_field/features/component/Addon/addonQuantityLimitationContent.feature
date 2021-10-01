@BaseCase @Admin @Addon @addonQuantityLimitationContent
Feature: Addon Quantity Limitation Content
  As a merchant
  I can see the note after the instruction on addon index page

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

  Scenario: Check the content
    Given I am on Addon Index Page
    Then quantity limitation content should contain "(Note: Only for Product Level Add-on Items; Not for Shopping Cart Add-on Items)"
    And I select ZH of language dropdown
    Then quantity limitation content should contain "(提醒：僅限主商品頁面之加購品，而非購物車加價購之加購品)"