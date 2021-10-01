@BaseCase @smokeTest @ImageService @Admin @Storefront @Product @VariantImageSelector @Search @customVariationProductAssert
@fixture-shop
Feature: Assert custom variation field is required
  As a user of Shopline
  I want to create product with custom variation
  So that my customer can see those custom variation

  Background:
    Given I am on Admin Login Page
    And I fill correct account email to email field
    And I fill correct account password to password field
    And I click on login button
    And I should see successful login
    Then I check intercom message notification frame and click clear intercom message button
    Then I check intercom message notification frame and click intercom message close button
    When I check new feature alert notification frame and click new feature alert close button
    When I check and click exclude products panel close button
    When I check and click no thanks button

  @EAT-495 @EAT-495-1
  Scenario: Assert custom variation field is required
    Given I am on Product Create Page
    When I pick product photo to product photo selector
    Then I should see delete photo button
    And I click on info tab
    And I fill "(dirty data) customVariation" to english name field
    And I click on quantity and pricing tab
    And I fill "20" to regular price field
    And I click on unlimited quantity checkbox
    And I click on variations tab
    And I click on variations toggle
    And I select variation dropdown option included 'Custom' of variation dropdown
    And I click on add button
    Then I should see alert
    Then alert should contain 'Please fill in all required fields correctly.'
    Then error msg should contain 'Custom variation title is required'
    And I fill 'Test' to custom variation field
    Then error msg should contain 'Variation setting is required'
    And I input "R" to add options field
    And I input "G" to add options field
    And I click on add button
    Then I should see alert
    Then I should be redirected to Product Edit Page
    Given I am on Product Index Page
    Then 1st row of product list should contain "customVariation"
    Then I should have image product photo for row of product photo list
    Given I am on Shop Product Index Page
    When I input "customVariation" to search field
    Then 1st product of products list should contain 'customVariation'
    When I click on 1st product of products list
    Then I should be redirected to Shop Product Show Page
    Then product info should contain 'Test'
    Then variation dropdown should contain 'R'
    Then product info should contain 'G'
    And ---ROLL BACK---
    Given I am on Product Index Page
    When I select product operations dropdown option included 'Delete' of product operations dropdown
    And I should see delete confirmation popover
    And I click on delete checkbox
    And I click on confirm delete button
    Then product list should not contain '(dirty data) customVariation'