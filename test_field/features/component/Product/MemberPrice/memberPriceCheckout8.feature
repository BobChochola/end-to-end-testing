@BaseCase @Admin @Storefront @Prodcut @Setting @MemberPrice @memberPriceCheckout8 
@fixture-shop @fixture-payment @fixture-delivery @theme-kingsman
Feature: member price show various
  As a merchant
  I want see member price in Shop Product Show Page

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

    Given I am on Free Shipping Index Page
    When I click on add promotion button
    Then I should be redirected to Free Shipping Create Page
    When I fill "(dirty data) test free" to name field
    And I click on 1st countinue to button
    And I click on 2nd countinue to button
    And I click on 3rd countinue to button
    And I click on preview button
    And I click on confirm button

  @EAT-484 @EAT-484-8
  Scenario: variations are not same price as main produc price>0 & member price=0
    Given I am on Product Create Page
    When I pick product photo to product photo selector
    Then I should see delete photo button
    And I click on info tab
    And I fill "(dirty data) variations produc price>0 & member price=0" to english name field
    And I click on quantity and pricing tab
    And I fill "50" to regular price field
    And I fill "30" to sale price field
    And I fill "10" to member price field
    And I click on variations tab
    And I click on variations toggle
    When I input "R" to add options field
    And I click on variations same price checkbox
    Then I should see row of variation price field
    Then I should see row of variation member price field
    And I fill "40" to 1st row of variation price field
    And I fill "0" to 1st row of variation member price field
    And I click on unlimited quantity checkbox
    And I scroll down to id
    And I click on add button
    Then I should see alert
    Then I should be redirected to Product Edit Page
    Given I am on Product Setting Page
    Then I should see member price toggle
    When I check and click member price toggle off
    When I check and click member price toggle off
    And I click on update button
    Then I should see alert
    Given I am on Shop Product Index Layout V Two Page
    When I hover over search icon
    And I input "variations produc price>0 & member price=0" to search field
    Then 1st product of products list should contain 'variations produc price>0 & member price=0'
    When I click on 1st product of products list
    Then I should be redirected to Shop Product Show Layout V Two Page
    Then regular price should contain "NT$40"
    And I click on add to cart button
    Then I should see cart panel
    When I click on checkout button
    Then I should be redirected to Shop Cart Layout V Two Page
    Then row of unit price should contain "NT$40"
    And I select country dropdown option included "Taiwan" of country list dropdown
    And I wait for 3 seconds for loading
    And I select delivery dropdown option included "Custom Delivery" of delivery method dropdown
    And I wait for 3 seconds for loading
    And I select payment dropdown option included "Custom" of payment method dropdown
    And I wait for 3 seconds for loading
    When I click on login button
    Then I should be redirected to Shop Login Layout V Two Page
    And I fill email to email field
    And I fill password to password field
    When I click on submit button
    Then I should be redirected to Shop Cart Layout V Two Page
    Then row of unit price should contain "NT$40"
    And I click on proceed to checkout button
    Then I should be redirected to Shop Checkout Layout V Two Page
    Then order total should contain "NT$40"
    When I fill name to name field
    And I fill phone to contact number field
    And I click on save number checkbox
    And I click on same as checkbox
    And I click on agree terms checkbox
    And I click on place order button
    Then I should be redirected to Shop Order Confirm Layout V Two Page
    When I click on summary collapse
    Then row of product unit price should contain "NT$40"
    And ---ROLL BACK---
    Given I am on Product Setting Page
    Then I should see member price toggle
    When I click on member price toggle
    And I click on update button
    Then I should see alert
    Given I am on Free Shipping Index Page
    When I click on 1st row of select checkbox list
    And I select delete of bulk actions dropdown
    And I should see confirmation popover
    And I click on delete checkbox
    And I click on confirm delete button
    Then I should see alert
    Given I am on Product Index Page
    When I select product operations dropdown option included 'Delete' of product operations dropdown
    Then I should see delete confirmation popover
    And I click on delete checkbox
    And I click on confirm delete button
    Then product list should not contain '(dirty data) variations produc price>0 & member price=0'