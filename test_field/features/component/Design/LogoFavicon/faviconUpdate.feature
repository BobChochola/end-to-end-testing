@BaseCase @ImageService @Admin @Design @LogoFavicon @Storefront @faviconUpdate
Feature: Favicon Update Feature
  As a merchant
  I want to upload shop favicon image
  So that I can upload a image for my shop

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

  @C3979 @fixture-shop
  Scenario: I want to update my favicon image
    Given I am on Design Page
    When I click on logo and favicon tab
    And I pick favicon image to favicon image selector
    And I wait for 30 seconds for image upload
    Given I am on Shop Home Page
    Then I should have image favicon image for shop favicon
    Then ---ROLL BACK---
    Given I am on Design Page
    When I click on logo and favicon tab
    When I pick default favicon image to favicon image selector
    And I wait for 30 seconds for image upload