@BaseCase @Storefront @Checkout @saveAddressCheck
@fixture-payment @fixture-delivery @fixture-product @fixture-shop
Feature: Fill information in checkout page
  As a guest, I want to buy products
  So that I fill in the information in checkout page and the page can auto scroll to invalid field

  @C3804
  Scenario: Auto scroll to no typing field
    Given I am on Shop Product Index Page
    When I input "1st Product for Checkout" to search field
    Then 1st product of products list should contain "1st Product for Checkout"
    When I click on 1st product of products list
    Then I should be redirected to Shop Product Show Page
    And I click on add to cart button
    Then I should see cart panel
    When I click on checkout button
    Then I should be redirected to Shop Cart Page
    When I click on login button
    Then I should be redirected to Shop Login Page
    And I fill email to email field
    And I fill password to password field
    And I click on submit button
    Then I should be redirected to Shop Cart Page
    When I select language dropdown option included 'English' of language dropdown
    And I wait for 3 seconds for loading
    Then language dropdown should contain 'English'
    And I select country dropdown option included "Taiwan" of country list dropdown
    And I wait for 3 seconds for loading
    And I select delivery dropdown option included "Local Delivery" of delivery method dropdown
    And I wait for 3 seconds for loading
    And I select payment dropdown option included "Bank Transfer" of payment method dropdown
    And I wait for 3 seconds for loading
    And I click on proceed to checkout button
    Then I should be redirected to Shop Checkout Page
    When I fill name to name field
    And I check contact number field and fill phone
    And I check and click save number checkbox
    And I click on same as checkbox
    And I select delivery address dropdown option included "Taipei City" of 1st delivery address dropdown
    And I wait for 3 seconds for loading
    And I select delivery address dropdown option included "100 Zhongzheng District" of 2nd delivery address dropdown
    And I wait for 3 seconds for loading
    And I fill address to delivery address field
    And I click on set as default address checkbox
    And I click on agree terms checkbox
    And I click on place order button
    Then I should be redirected to Shop Order Confirm Page
    Given I am on Shop Product Index Page
    When I input "1st Product for Checkout" to search field
    Then 1st product of products list should contain "1st Product for Checkout"
    When I click on 1st product of products list
    Then I should be redirected to Shop Product Show Page
    And I click on add to cart button
    Then I should see cart panel
    When I click on checkout button
    Then I should be redirected to Shop Cart Page
    And I select country dropdown option included "Taiwan" of country list dropdown
    And I wait for 5 seconds for loading
    And I select delivery dropdown option included "Local Delivery" of delivery method dropdown
    And I wait for 5 seconds for loading
    And I select payment dropdown option included "Bank Transfer" of payment method dropdown
    And I wait for 5 seconds for loading
    And I click on proceed to checkout button
    Then I should be redirected to Shop Checkout Page
    Then delivery detail should contain address
    And ---ROLL BACK---
    Given I am on Shop Cart Page
    When I click on remove button
    Then I should see delete confirmation popover
    When I click on ok button
    Then I should see empty message
    Then I click on member center button
    Then I should be redirected to Shop User Profile Page
    When I click on remove address button
    And I click on save button
    Then I should see save successfully message