@BaseCase @ImageService @Admin @Design @LogoFavicon @Storefront @logoUpdate
Feature: Logo Update Feature
  As a merchant
  I want to upload shop logo image
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

  @C3978 @fixture-shop
  Scenario: I want to update my logo image
    Given I am on Design Page
    When I click on logo and favicon tab
    When I pick logo image to logo image selector
    And I wait for 30 seconds for image upload
    Given I am on Shop Home Page
    Then I should see shop logo
    Then I should have image logo image for shop logo
    Then ---ROLL BACK---
    Given I am on Design Page
    When I click on logo and favicon tab
    When I pick default logo image to logo image selector
    And I wait for 30 seconds for image upload