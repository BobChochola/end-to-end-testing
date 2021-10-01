@BaseCase @Admin @Storefront @Order @OrderEdit @orderEditAddMemberProductMember-3 @fixture-shop @fixture-product @fixture-payment @fixture-delivery
Feature: Can add member product in order details with member accout
  As a merchant
  I want to add member product in order show page
  So that I can add new product in the order

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

    Given I am on Shop Login Page
    And I fill email to email field
    And I fill password to password field
    When I click on submit button
    Then I should be redirected to Shop Home Page
    When I select language dropdown option included 'English' of language dropdown
    And I wait for 3 seconds for loading
    Then language dropdown should contain 'English'
    Given I am on Shop Product Index Page
    When I input "1st Product for Checkout" to search field
    Then 1st product of products list should contain '1st Product for Checkout'
    When I click on 1st product of products list
    Then I should be redirected to Shop Product Show Page
    When I click on add to cart button
    Then I should see cart panel
    When I click on checkout button
    Then I should be redirected to Shop Cart Page
    When I select country dropdown option included "Taiwan" of country list dropdown
    And I wait for 3 seconds for loading
    And I select delivery dropdown option included "Custom Delivery" of delivery method dropdown
    And I wait for 3 seconds for loading
    And I select payment dropdown option included "Bank" of payment method dropdown
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
    Then I mark the value of order confirm info as variable order info

  @EAT-427 @EAT-427-3
  Scenario: Variation is same price as main product with member price --> show member price
    Given I am on Product Create Page
    When I pick product photo to product photo selector
    Then I should see delete photo button
    And I click on info tab
    And I fill "(dirty data) 1st Member Product" to english name field
    And I click on quantity and pricing tab
    And I fill "50" to regular price field
    And I fill "10" to member price field
    And I click on variations tab
    And I click on variations toggle
    When I input "R" to add options field
    And I input "G" to add options field
    And I click on unlimited quantity checkbox
    And I scroll down to id
    And I click on add button
    Then I should see alert
    Then I should be redirected to Product Edit Page
    Given I am on Product Index Page
    Then 1st row of product list should contain "1st Member Product"

    Given I am on Orders Page
    And I input order number to search field
    Then 1st row of order links should contain order number
    When I click on 1st row of order links
    Then I should be redirected to Orders Show Page
    When I click on product details edit button
    Then I should see product details edit reminder
    Then I click on reminder ok button
    And I click on add product button
    Then I should see product of product list
    And I input "1st Member Product" to search field
    Then 1st product of product list should contain '1st Member Product'
    And I click on 1st product of product list
    And I click on popup save button
    And I select color dropdown option included "R" of color dropdown
    Then I should see 2 product quantity field
    Then I should see 2 product quantity reminder
    Then outstanding amount should equal to "NT$10"
    And I click on product details save button
    Then I should see confirm popover
    And I click on yes button
    And total should contain "NT$50"
    And ---ROLL BACK---
    Given I am on Product Index Page
    When I select product operations dropdown option included 'Delete' of product operations dropdown
    Then I should see delete confirmation popover
    And I click on delete checkbox
    And I click on confirm delete button
    Then 1st row of product list should not contain "1st Member Product"