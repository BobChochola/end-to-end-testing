@BaseCase @Admin @ExpressCheckoutPage @expressCheckoutPageAddImage @fixture-product
Feature: Express checkout page add image
  As a merchant
  I want to create an express checkout page for customers
  And I can add image in the page

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

  @C3852
  Scenario: Express Checkout Page－Add Image Elements
    Given I am on Express Checkout Pages Page
    Then I should see create button
    When I click on create button
    Then I should be redirected to Express Checkout Builder Page
    Then I should see skip the guide button
    When I click on skip the guide button
    Then I should see product picker
    When I input "2nd Product for Checkout" to search field
    And I click on search button
    Then 1st product of product list should contain '2nd Product for Checkout'
    And I click on 1st product of product list
    And I click on popup save button
    Then I should be on Express Checkout Builder Page
    When I click on click to edit image elements
    Then I should see edit item panel bar
    When I clear and pick photo to photo selector
    Then I should see 2 uploaded photo item
    When I clear and pick another photo to photo selector
    Then I should see 4 uploaded photo item
    And I click on settings tab
    And I click on show title checkbox
    And I click on show description checkbox
    And I click on ok button
    Then I should be on Express Checkout Builder Page
    Then I should see title of photo
    Then I should see description of photo
    Then I should see owl carousel
    When I click on click to edit image elements
    Then I should see edit item panel bar
    And I click on settings tab
    And I click on show full-width image checkbox
    And I click on ok button
    Then I should be on Express Checkout Builder Page
    Then I should see full-width image
    Then I should not see title of photo
    Then I should not see description of photo