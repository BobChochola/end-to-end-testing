@BaseCase @ImageService @Admin @Storefront @Product @MemberPrice @memberPricingProductCreateWithoutLogin
@fixture-shop @fixture-payment @fixture-delivery
Feature: multiple product creation
  As a user of Shopline
  I want to create multiple products
  So that my customer can see those products after created

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

  Scenario: Single variation with member price
    Given I am on Product Create Page
    When I pick product photo to product photo selector
    Then I should see delete photo button
    And I click on info tab
    And I fill "(dirty data) Member pricing product single variation" to english name field
    And I click on quantity and pricing tab
    And I fill "20" to member price field
    Then I should see faq link
    And I click on unlimited quantity checkbox
    And I click on add button
    Then I should see alert
    Then I should be redirected to Product Edit Page
    Given I am on Product Index Page
    Then I should see row of product photo list
    Then I should have image product photo for row of product photo list
    Then 1st row of product list should contain "Member pricing product"
    Then 1st row of regular price list should not contain "20"
    Given I am on Shop Product Index Page
    Then 1st product of products list should not contain "$20"
    When I click on 1st product of products list
    Then I should be redirected to Shop Product Show Page
    Then product info should contain "Please message the shop owner for order details."
    And ---ROLL BACK---
    Given I am on Product Index Page
    When I select product operations dropdown option included 'Delete' of product operations dropdown
    Then I should see delete confirmation popover
    And I click on delete checkbox
    And I click on confirm delete button
    Then product list should not contain '(dirty data) Member pricing product single variation'

  Scenario: Variations with member price
    Given I am on Product Create Page
    When I pick product photo to product photo selector
    Then I should see delete photo button
    And I click on info tab
    And I fill "(dirty data) Member pricing product two variation" to english name field
    And I click on quantity and pricing tab
    And I click on variations tab
    And I click on variations toggle
    And I input "R" to add options field
    And I input "G" to add options field
    When I click on add variation button
    And I input "S" to 2nd add options field
    And I input "M" to 2nd add options field
    And I click on variations same price checkbox
    And I fill "50" to 1st row of variation price field
    And I fill "50" to 2nd row of variation price field
    And I fill "50" to 3rd row of variation price field
    And I fill "50" to 4th row of variation price field
    And I fill "10" to 1st row of variation member price field
    And I fill "10" to 2nd row of variation member price field
    And I fill "10" to 3rd row of variation member price field
    And I fill "10" to 4th row of variation member price field
    Then I scroll down to breadcrumb
    And I click on add button
    Then I should see alert
    Then I should be redirected to Product Edit Page
    Given I am on Product Index Page
    Then I should be redirected to Product Index Page
    Then I should see row of product photo list
    Then I should have image product photo for row of product photo list
    Then 1st row of product list should contain "Member pricing product two variation"
    Then 1st row of regular price list should contain "$50"
    Then 1st row of regular price list should not contain "$10"
    Given I am on Shop Product Index Page
    Then 1st product of products list should not contain "$10"
    When I click on 1st product of products list
    Then I should be redirected to Shop Product Show Page
    Then product info should not contain "NT$10 Member Only"
    And ---ROLL BACK---
    Given I am on Product Index Page
    When I select product operations dropdown option included 'Delete' of product operations dropdown
    Then I should see delete confirmation popover
    And I click on delete checkbox
    And I click on confirm delete button
    Then product list should not contain '(dirty data) Member pricing product two variation'