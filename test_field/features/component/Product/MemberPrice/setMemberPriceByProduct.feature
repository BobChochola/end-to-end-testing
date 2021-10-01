@BaseCase @Admin @Storefront @Order @CRM @Product @MemberPrice @setMemberPriceByProduct @fixture-shop @fixture-payment @fixture-product @fixture-delivery
Feature:member price show when owner type is user
  As a merchant
  I want to published menber price to menber
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

  @EAT-469 @EAT-469-1
  Scenario:unclick on member price toggle and unlogin
    Given I am on Product Create Page
    When I pick product photo to product photo selector
    Then I should see delete photo button
    And I click on info tab
    And I fill "(dirty data) 1st Member Product" to english name field
    And I click on variations tab
    And I click on variations toggle
    When I input "R" to add options field
    And I click on variations same price checkbox
    Then I should see row of variation price field
    Then I should see row of variation member price field
    And I fill "50" to 1st row of variation price field
    And I fill "10" to 1st row of variation member price field
    And I click on unlimited quantity checkbox
    And I scroll down to id
    And I click on add button
    Then I should see alert
    Then I should be redirected to Product Edit Page

    Given I am on Shop Product Index Page
    When I input "1st Member Product" to search field
    Then 1st product of products list should contain '1st Member Product'
    When I click on 1st product of products list
    Then I should be redirected to Shop Product Show Page
    Then product info should contain "1st Member Product"
    Then product info should contain "NT$50"
    Then product info should not contain "NT$10"

    And I click on add to cart button
    Then I should see cart panel
    When I click on checkout button
    Then I should be redirected to Shop Cart Page
    Then row of unit price should contain "NT$50"
    And I select country dropdown option included "Taiwan" of country list dropdown
    And I wait for 3 seconds for loading
    And I select delivery dropdown option included "Custom Delivery" of delivery method dropdown
    And I wait for 3 seconds for loading
    And I select payment dropdown option included "Custom" of payment method dropdown
    And I wait for 3 seconds for loading
    And I click on proceed to checkout button
    Then I should be redirected to Shop Checkout Page
    When I fill name to name field
    And I fill email to email address field
    And I fill phone to contact number field
    And I click on same as checkbox
    And I click on agree terms checkbox
    And I click on accept marketing checkbox
    And I click on place order button
    Then I should be redirected to Shop Order Confirm Page
    When I click on summary collapse
    Then row of product unit price should contain "NT$50"
    And ---ROLL BACK---
    Given I am on Product Index Page
    When I select product operations dropdown option included 'Delete' of product operations dropdown
    Then I should see delete confirmation popover
    And I click on delete checkbox
    And I click on confirm delete button
    Then 1st row of product list should not contain '1st Member Product'

  @EAT-469 @EAT-469-2
  Scenario:unclick on member price toggle and login
    Given I am on Product Create Page
    When I pick product photo to product photo selector
    Then I should see delete photo button
    And I click on info tab
    And I fill "(dirty data) 1st Member Product" to english name field
    And I click on variations tab
    And I click on variations toggle
    When I input "R" to add options field
    And I click on variations same price checkbox
    Then I should see row of variation price field
    Then I should see row of variation member price field
    And I fill "50" to 1st row of variation price field
    And I fill "10" to 1st row of variation member price field
    And I click on unlimited quantity checkbox
    And I scroll down to id
    And I click on add button
    Then I should see alert
    Then I should be redirected to Product Edit Page
    Given I am on Shop Login Page
    And I fill email to email field
    And I fill password to password field
    When I click on submit button
    Then I should be redirected to Shop Home Page
    When I select language dropdown option included 'English' of language dropdown
    And I wait for 3 seconds for loading
    Then language dropdown should contain 'English'
    Given I am on Shop Product Index Page
    When I input "1st Member Product" to search field
    Then 1st product of products list should contain '1st Member Product'
    When I click on 1st product of products list
    Then I should be redirected to Shop Product Show Page
    Then product info should contain "1st Member Product"
    Then product info should contain "NT$50"
    Then product info should contain "NT$10"
    And I click on add to cart button
    Then I should see cart panel
    When I click on checkout button
    Then I should be redirected to Shop Cart Page
    Then row of unit price should contain "NT$10"
    And I select country dropdown option included "Taiwan" of country list dropdown
    And I wait for 3 seconds for loading
    And I select delivery dropdown option included "Custom Delivery" of delivery method dropdown
    And I wait for 3 seconds for loading
    And I select payment dropdown option included "Custom" of payment method dropdown
    And I wait for 3 seconds for loading
    And I click on proceed to checkout button
    Then I should be redirected to Shop Checkout Page
    When I fill name to name field
    And I fill phone to contact number field
    And I click on save number checkbox
    And I click on same as checkbox
    And I click on agree terms checkbox
    And I click on place order button
    Then I should be redirected to Shop Order Confirm Page
    When I click on summary collapse
    Then row of product unit price should contain "NT$10"
    And ---ROLL BACK---
    Given I am on Product Index Page
    When I select product operations dropdown option included 'Delete' of product operations dropdown
    Then I should see delete confirmation popover
    And I click on delete checkbox
    And I click on confirm delete button
    Then 1st row of product list should not contain '1st Member Product'

  @EAT-469 @EAT-469-3
  Scenario:click on member price toggle
    Given I am on Product Setting Page
    Then I should see member price toggle
    When I check and click member price toggle off
    When I check and click member price toggle off
    And I click on update button
    Given I am on Product Create Page
    When I pick product photo to product photo selector
    Then I should see delete photo button
    And I click on info tab
    And I fill "(dirty data) 1st Member Product" to english name field
    And I click on variations tab
    And I click on variations toggle
    When I input "R" to add options field
    And I click on variations same price checkbox
    Then I should see row of variation price field
    Then I should see row of variation member price field
    And I fill "50" to 1st row of variation price field
    And I fill "10" to 1st row of variation member price field
    And I click on unlimited quantity checkbox
    And I scroll down to id
    And I click on add button
    Then I should see alert
    Then I should be redirected to Product Edit Page
    Given I am on Shop Product Index Page
    When I input "1st Member Product" to search field
    Then 1st product of products list should contain '1st Member Product'
    When I click on 1st product of products list
    Then I should be redirected to Shop Product Show Page
    Then regular price should contain "NT$50"
    Then reminder member price should contain "NT$10"
    And I click on add to cart button
    Then I should see cart panel
    When I click on checkout button
    Then I should be redirected to Shop Cart Page
    Then row of unit price should contain "NT$50"
    Then member reminder should contain member reminder
    And I select country dropdown option included "Taiwan" of country list dropdown
    And I wait for 3 seconds for loading
    And I select delivery dropdown option included "Custom Delivery" of delivery method dropdown
    And I wait for 3 seconds for loading
    And I select payment dropdown option included "Custom" of payment method dropdown
    And I wait for 3 seconds for loading
    And I click on proceed to checkout button
    When I click on login button
    Then I should be redirected to Shop Login Page
    And I fill email to email field
    And I fill password to password field
    When I click on submit button
    Then I should be redirected to Shop Checkout Page
    When I fill name to name field
    And I fill phone to contact number field
    And I click on save number checkbox
    And I click on same as checkbox
    And I click on agree terms checkbox
    And I click on place order button
    Then I should be redirected to Shop Order Confirm Page
    When I click on summary collapse
    Then row of product unit price should contain "NT$10"
    And ---ROLL BACK---
    Given I am on Product Index Page
    When I select product operations dropdown option included 'Delete' of product operations dropdown
    Then I should see delete confirmation popover
    And I click on delete checkbox
    And I click on confirm delete button
    Then 1st row of product list should not contain '1st Member Product'
    Given I am on Product Setting Page
    Then I should see member price toggle
    When I click on member price toggle
    And I click on update button