@BaseCase @ImageService @Admin @Product @VariantImageSelector @productColorImageAdd
Feature: add Customized variant of product
  As a user of Shopline
  I want to create customized variant products

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

  Scenario: add Customized variant of product
    Given I am on Product Create Page
    When I pick product photo to product photo selector
    Then I should see delete photo button
    When I click on info tab
    And I fill '(dirty data) Customized shop variant' to english name field
    And I click on quantity and pricing tab
    And I fill "20" to regular price field
    And I click on unlimited quantity checkbox
    And I click on variations tab
    And I click on variations toggle
    And I fill 'White,' to add options field
    Then I should see variations label
    Then variations label should contain 'Show image selector on product details page'
    When I click on customized shop variant selector checkbox
    Then I should see image variants selector popup
    Then 1st popup row of variants should contain 'White'
    Then image variants count content should contain 'Total: 1 Variants'
    When I pick white variants product photo to variants products selector
    And I click on save variants products button
    When I click on edit image selector button
    Then I should see row of variants
    Then 1st popup row of variants should contain 'White'
    And I pick white variants product photo to variants products selector
    And I click on save variants products button
    And I click on add button
    And I should see alert
    Then I should be redirected to Product Edit Page
    And ---ROLL BACK---
    Given I am on Product Index Page
    Then I should see row of product photo list
    Then I should have image product photo for row of product photo list
    Then 1st row of product list should contain 'Customized shop variant'
    Then 1st row of regular price list should contain "20"
    Then 1st row of quantity list should contain "∞"
    When I select product operations dropdown option included 'Delete' of product operations dropdown
    Then I should see delete confirmation popover
    When I click on delete checkbox
    And I click on confirm delete button
    Then product list should not contain '(dirty data) Customized shop variant'