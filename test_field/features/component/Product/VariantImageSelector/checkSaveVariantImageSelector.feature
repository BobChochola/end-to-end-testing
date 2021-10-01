@BaseCase @ImageService @Admin @Storefront @Product @VariantImageSelector @checkSaveVariantImageSelector @EAT-608
@fixture-payment @fixture-delivery @fixture-shop
Feature: Save Variant Image Selector when not Totally Uploaded
  As a user of Shopline
  I want to create customized variant products

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

  @EAT-608-1
  Scenario: with no uploaded image
    Given I am on Product Create Page
    When I pick product photo to product photo selector
    Then I should see delete photo button
    When I click on info tab
    And I fill '(dirty data) Check Variant Image Selector Product' to english name field
    And I click on quantity and pricing tab
    And I fill "20" to regular price field
    And I click on unlimited quantity checkbox
    And I click on variations tab
    And I click on variations toggle
    And I input 'White' to add options field
    And I input 'Yellow' to add options field
    Then I should see variations label
    Then variations label should contain 'Show image selector on product details page'
    When I click on customized shop variant selector checkbox
    Then I should see image variants selector popup
    Then 1st row of variants should contain 'White'
    Then 2nd row of variants should contain 'Yellow'
    Then image variants count content should contain 'Total: 2 Variants'
    When I click on cancel button
    When I click on edit image selector button
    Then I should see row of variants
    Then 1st row of variants should contain 'White'
    Then 2nd row of variants should contain 'Yellow'
    When I click on cancel button
    And I click on add button
    Then I should see alert
    Then I should be redirected to Product Edit Page
    Given I am on Product Index Page
    Then I should see row of product photo list
    Then I should have image product photo for row of product photo list
    Then 1st row of product list should contain 'Check Variant Image Selector Product'
    Then 1st row of regular price list should contain "20"
    Then 1st row of quantity list should contain "∞"

    Given I am on Shop Product Index Page
    When I input 'Check Variant Image Selector Product' to search field
    Then 1st product of products list should contain 'Check Variant Image Selector Product'
    When I click on 1st product of products list
    Then I should be redirected to Shop Product Show Page
    Then product info should contain 'Check Variant Image Selector Product'
    Then product info should contain "NT$20"
    Then I should not see variation select picture button
    And ---ROLL BACK---
    Given I am on Product Index Page
    Then 1st row of product list should contain 'Check Variant Image Selector Product'
    When I select product operations dropdown option included 'Delete' of product operations dropdown
    Then I should see delete confirmation popover
    When I click on delete checkbox
    And I click on confirm delete button
    Then 1st row of product list should not contain 'Check Variant Image Selector Product'

  @EAT-608-2
  Scenario: with some uploaded image
    Given I am on Product Create Page
    When I pick product photo to product photo selector
    Then I should see delete photo button
    When I click on info tab
    And I fill '(dirty data) Check Variant Image Selector Product' to english name field
    And I click on quantity and pricing tab
    And I fill "20" to regular price field
    And I click on unlimited quantity checkbox
    And I click on variations tab
    And I click on variations toggle
    And I input 'White' to add options field
    And I input 'Yellow' to add options field
    Then I should see variations label
    Then variations label should contain 'Show image selector on product details page'
    When I click on customized shop variant selector checkbox
    Then I should see image variants selector popup
    Then 1st row of variants should contain 'White'
    Then 2nd row of variants should contain 'Yellow'
    Then image variants count content should contain 'Total: 2 Variants'
    When I pick white variants product photo to 1st variants products selector
    And I wait for 12 seconds for loading
    Then I should have image white variants product photo for 1st variants products selector button
    And I click on save variants products button
    When I click on edit image selector button
    Then I should see row of variants
    Then 1st row of variants should contain 'White'
    Then 2nd row of variants should contain 'Yellow'
    When I pick white variants product photo to 1st variants products selector
    And I wait for 12 seconds for loading
    Then I should have image white variants product photo for 1st variants products selector button
    And I click on save variants products button
    And I click on add button
    Then I should see alert
    Then I should be redirected to Product Edit Page
    Given I am on Product Index Page
    Then I should see row of product photo list
    Then I should have image product photo for row of product photo list
    Then 1st row of product list should contain 'Check Variant Image Selector Product'
    Then 1st row of regular price list should contain "20"
    Then 1st row of quantity list should contain "∞"
    When I click on 1st row of edit button
    Then I should be redirected to Product Edit Page
    When I click on variations tab
    Then I should see variations label
    Then variations label should contain 'Show image selector on product details page'
    When I click on customized shop variant selector checkbox
    Then I should see image variants selector popup
    Then 1st row of variants should contain 'White'
    Then 2nd row of variants should contain 'Yellow'
    Then image variants count content should contain 'Total: 2 Variants'
    Then I should have image white variants product photo for 1st variants products selector button
    When I click on cancel button
    And I click on update button
    Then I should be redirected to Product Index Page
    Given I am on Shop Product Index Page
    When I input 'Check Variant Image Selector Product' to search field
    Then 1st product of products list should contain 'Check Variant Image Selector Product'
    When I click on 1st product of products list
    Then I should be redirected to Shop Product Show Page
    Then product info should contain 'Check Variant Image Selector Product'
    Then product info should contain "NT$20"
    Then I should not see variation select picture button
    And ---ROLL BACK---
    Given I am on Product Index Page
    Then 1st row of product list should contain 'Check Variant Image Selector Product'
    When I select product operations dropdown option included 'Delete' of product operations dropdown
    Then I should see delete confirmation popover
    When I click on delete checkbox
    And I click on confirm delete button
    Then 1st row of product list should not contain 'Check Variant Image Selector Product'

  @EAT-608-3
  Scenario: with all variant images are uploaded and check change image
    Given I am on Product Setting Page
    Then I should see variation display label radio
    When I click on variation display label radio
    And I click on update button
    Then I should see alert
    Given I am on Product Create Page
    When I pick product photo to product photo selector
    Then I should see delete photo button
    When I click on info tab
    And I fill '(dirty data) Check Variant Image Selector Product' to english name field
    And I click on quantity and pricing tab
    And I fill "20" to regular price field
    And I click on unlimited quantity checkbox
    And I click on variations tab
    And I click on variations toggle
    And I input 'White' to add options field
    And I input 'Yellow' to add options field
    Then I should see variations label
    Then variations label should contain 'Show image selector on product details page'
    When I click on customized shop variant selector checkbox
    Then I should see image variants selector popup
    Then 1st row of variants should contain 'White'
    Then 2nd row of variants should contain 'Yellow'
    Then image variants count content should contain 'Total: 2 Variants'
    When I pick white variants product photo to 1st variants products selector
    And I wait for 12 seconds for loading
    Then I should have image white variants product photo for 1st variants products selector button
    And I pick yellow variants product photo to 2nd variants products selector
    And I wait for 12 seconds for loading
    Then I should have image yellow variants product photo for 2nd variants products selector button
    And I click on save variants products button
    When I click on edit image selector button
    Then I should see row of variants
    Then 1st row of variants should contain 'White'
    Then 2nd row of variants should contain 'Yellow'
    When I pick white variants product photo to variants products selector
    And I wait for 3 seconds for loading
    And I click on save variants products button
    And I click on add button
    Then I should see alert
    Then I should be redirected to Product Edit Page
    Given I am on Product Index Page
    Then I should see row of product photo list
    Then I should have image product photo for row of product photo list
    Then 1st row of product list should contain 'Check Variant Image Selector Product'
    Then 1st row of regular price list should contain "20"
    Then 1st row of quantity list should contain "∞"

    Given I am on Shop Product Index Page
    When I input 'Check Variant Image Selector Product' to search field
    Then 1st product of products list should contain 'Check Variant Image Selector Product'
    When I click on 1st product of products list
    Then I should be redirected to Shop Product Show Page
    Then product info should contain 'Check Variant Image Selector Product'
    Then product info should contain "NT$20"
    Then I should see 2 variation select picture button
    Then I should not see variation label
    Then I should have image white variants product photo for 1st variation select picture button
    Then I should have image yellow variants product photo for 2nd variation select picture button
    When I click on 1st variation select picture button
    Then product info should contain 'Color : White'
    When I click on 2nd variation select picture button
    Then product info should contain 'Color : Yellow'

    Given I am on Product Index Page
    Then I should see row of product photo list
    Then 1st row of product list should contain 'Check Variant Image Selector Product'
    When I click on 1st row of edit button
    Then I should be redirected to Product Edit Page
    When I click on variations tab
    Then I should see variations label
    Then variations label should contain 'Show image selector on product details page'
    When I click on edit image selector button
    Then I should see image variants selector popup
    Then 1st row of variants should contain 'White'
    Then 2nd row of variants should contain 'Yellow'
    Then image variants count content should contain 'Total: 2 Variants'
    Then I should have image white variants product photo for 1st variants products selector button
    Then I should have image yellow variants product photo for 2nd variants products selector button
    When I pick white variants product photo to 2nd variants products selector
    And I wait for 3 seconds for loading
    Then I should have image white variants product photo for 2nd variants products selector button
    When I click on save variants products button
    And I click on 2nd update button
    Then I should be redirected to Product Index Page

    Given I am on Shop Product Index Page
    When I input 'Check Variant Image Selector Product' to search field
    Then 1st product of products list should contain 'Check Variant Image Selector Product'
    When I click on 1st product of products list
    Then I should be redirected to Shop Product Show Page
    Then product info should contain 'Check Variant Image Selector Product'
    Then product info should contain "NT$20"
    Then I should see 2 variation select picture button
    Then I should have image white variants product photo for 1st variation select picture button
    Then I should have image white variants product photo for 2nd variation select picture button
    When I click on 1st variation select picture button
    Then product info should contain 'Color : White'
    When I click on 2nd variation select picture button
    Then product info should contain 'Color : Yellow'
    And ---ROLL BACK---
    Given I am on Product Setting Page
    Then I should see variation display label radio
    When I click on variation display dropdown radio
    And I click on update button
    Then I should see alert
    Given I am on Product Index Page
    Then 1st row of product list should contain 'Check Variant Image Selector Product'
    When I select product operations dropdown option included 'Delete' of product operations dropdown
    Then I should see delete confirmation popover
    When I click on delete checkbox
    And I click on confirm delete button
    Then 1st row of product list should not contain 'Check Variant Image Selector Product'