@PostTest @PreTest @BaseCase @Admin @Storefront @Checkout @Credit @autoCreditsCheckoutWithFamilymart
@fixture-product @fixture-shop @fixture-promotion @fixture-payment @fixture-delivery
Feature: Auto Credits Checkout With Family Mart
  As a merchant
  I want to checkout with auto credits and family mart

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

    Given I am on Promotion Index Page
    When I input "10th Promotion" to search field
    Then 1st row of promotion list should contain "10th Promotion"
    Then I should see apply filter label
    Then I should see row of select checkbox list
    When I click on 1st row of select checkbox list
    And I select publish of bulk actions dropdown
    Then I should see alert

    Given I am on Customer List Page
    When I input email to search field
    Then I should see view button
    When I click view button for the same order of customer row included 'testuser@shoplineapp.com'
    Then I should be redirected to Customer Detail Page
    When I click on assign credits button
    Then I should see popover
    When I fill "13" to amount of credit field
    And I click on never expires button
    And I fill "Testing amount of credits" to reason field
    And I click on credit save button
    Then I should see row of credit list

  @C3878
  Scenario: Assign credits and checkout with family mart
    Given I am on Shop Product Index Page
    And I input "10th Product for Checkout" to search field
    Then 1st product of products list should contain "10th Product for Checkout"
    And I click on 1st product of products list
    Then I should be redirected to Shop Product Show Page
    When I fill "3" to product quantity field
    And I click on add to cart button
    Then I should see cart panel
    When I click on checkout button
    Then I should be redirected to Shop Cart Page
    When I click on login button
    Then I should be redirected to Shop Login Page
    When I fill email to email field
    And I fill password to password field
    And I click on submit button
    Then I should be redirected to Shop Cart Page
    When I select language dropdown option included 'English' of language dropdown
    And I wait for 3 seconds for loading
    Then language dropdown should contain 'English'
    When I wait for 5 seconds for loading
    When I select country dropdown option included "Taiwan" of country list dropdown
    And I wait for 5 seconds for loading
    And I select delivery dropdown option included "Family Mart Pickup and pay in store (B2C)" of delivery method dropdown
    And I wait for 5 seconds for loading
    And I select payment dropdown option included "Pay on Family Mart Store Pickup (B2C)" of payment method dropdown
    And I wait for 5 seconds for loading
    And I click on proceed to checkout button
    Then I should be redirected to Shop Checkout Page
    When I click on pick store button
    Then I should be redirected to Family Mart Pick Store Page
    When I click on name search button
    Then I should see store name field
    When I fill store name to store name field
    And I click on search button
    And I click on row of search store list
    And I should see confirm store button
    And I click on confirm store button
    Then I should be redirected to Shop Checkout Page
    When I fill name to name field
    And I check contact number field and fill phone
    And I check and click save number checkbox
    And I click on same as checkbox
    And I click on agree terms checkbox
    And I click on place order button
    Then I should be redirected to Shop Order Confirm Page
    When I click on summary collapse
    Then 1st row of product unit price should contain "NT$50"
    Then 1st row of product quantity should equal to "3"
    Then 1st row of product items should contain "10th Product for Checkout"
    Then item subtotal should contain "NT$150"
    Then credit should contain "NT$13"
    Then delivery fee should contain "NT$10"
    Then total should contain "NT$48"
    Then discount applied should contain "-NT$99"
    Given I am on Shop Home Page
    When I click on member center button
    Then I should be redirected to Shop User Profile Page
    When I click on tab included 'Store Credits'
    Then I should be redirected to Shop User Credit Page
    Then row of credit list should contain "- 13"
    Then row of credit list should contain "Use of credits in order"
    Given I am on Orders Page
    When I click on 1st row of order links
    Then I should be redirected to Orders Show Page
    Then order date should contain order date
    Then customer name should contain name
    Then customer email should contain email
    Then customer phone should contain phone
    Then delivery method should contain "Family Mart Pickup and pay in store (B2C)"
    Then payment type should contain "Pay on Family Mart Store Pickup (B2C)"
    When I Refresh
    Then third party recipient name should contain name
    Then third party recipient phone should contain phone
    Then credit should contain "-NT$13"
    And ---ROLL BACK---
    Given I am on Promotion Index Page
    When I input "10th Promotion" to search field
    Then I should see apply filter label
    Then I should see 1 row of promotion list
    Then 1st row of promotion list should contain "10th Promotion"
    When I click on 1st row of select checkbox list
    And I select unpublish of bulk actions dropdown
    Then I should see 1 unpublished item