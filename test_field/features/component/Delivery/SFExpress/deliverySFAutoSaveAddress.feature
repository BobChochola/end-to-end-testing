@BaseCase @Admin @Storefront @Delivery @SFExpress @baseLocation-HK @deliverySFAutoSaveAddress @fixture-shop @fixture-product @fixture-payment @fixture-delivery
Feature: Checkout with SF Delivery And Auto Save Address
  As a Customer
  So that use sf delivery checkout can auto save address

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

  @EAT-498
  Scenario: Checkout with SF Delivery And Auto Save Address
    Given I am on Shop Product Index Page
    And I input "2nd Product for Checkout" to search field
    Then 1st product of products list should contain "2nd Product for Checkout"
    And I click on 1st product of products list
    Then I should be redirected to Shop Product Show Page
    When I click on add to cart button
    Then I should see cart panel
    When I click on checkout button
    Then I should be redirected to Shop Cart Page
    And I wait for 5 seconds for loading
    And I select country dropdown option included 'Hong Kong' of country list dropdown
    And I wait for 5 seconds for loading
    And I select delivery dropdown option included 'Zeek2door (Same Day Home Delivery)' of delivery method dropdown
    And I wait for 5 seconds for loading
    And I select payment dropdown option included 'Bank Transfer' of payment method dropdown
    And I wait for 5 seconds for loading
    And I click on proceed to checkout button
    Then I should be redirected to Shop Checkout Page
    Then I should see login button
    When I click on login button
    Then I should be redirected to Shop Login Page
    And I fill email to email field
    And I fill password to password field
    When I click on submit button
    Then I should be redirected to Shop Checkout Page
    When I select language dropdown option included 'English' of language dropdown
    And I wait for 3 seconds for loading
    Then language dropdown should contain 'English'
    Then I should not see login button
    And I fill phone to contact number field
    And I click on save number checkbox
    Then delivery detail should not contain 'Save this new address into my address book'
    Then delivery detail should not contain 'Set as default address'
    And I click on same as checkbox
    And I select sf address region dropdown option included 'Hong Kong' of sf address region dropdown
    And I select sf address district dropdown option included 'Southern District' of sf address district dropdown
    And I select sf address area dropdown option included 'Wong Chuk Hang' of sf address area dropdown
    And I select delivery time dropdown option included 'AM' of delivery time dropdown
    And I fill 'TEST SAME ADDRESS' to delivery address field
    And I click on agree terms checkbox
    And I click on place order button
    Then I should be redirected to Shop Order Confirm Page
    Given I am on Orders Page
    When I click on 1st row of order links
    Then I should be redirected to Orders Show Page
    Then customer email should contain email
    Then customer phone should contain phone
    Then delivery method should contain 'Zeek2door (Same Day Home Delivery)'
    Then payment type should contain 'Bank Transfer'
    Then recipient phone should contain phone
    Then delivery form should contain 'TEST SAME ADDRESS'
    Then delivery form should contain "Hong Kong, Southern District, Wong Chuk Hang"
    Then delivery form should contain 'AM'
    Given I am on Shop Product Index Page
    And I input "2nd Product for Checkout" to search field
    Then 1st product of products list should contain "2nd Product for Checkout"
    And I click on 1st product of products list
    Then I should be redirected to Shop Product Show Page
    When I click on add to cart button
    Then I should see cart panel
    When I click on checkout button
    Then I should be redirected to Shop Cart Page
    And I select country dropdown option included 'Hong Kong' of country list dropdown
    And I wait for 5 seconds for loading
    And I select delivery dropdown option included 'Zeek2door (Same Day Home Delivery)' of delivery method dropdown
    And I wait for 5 seconds for loading
    And I select payment dropdown option included 'Bank Transfer' of payment method dropdown
    And I wait for 5 seconds for loading
    And I click on proceed to checkout button
    Then I should be redirected to Shop Checkout Page
    Then I should not see login button
    And I fill phone to contact number field
    And I click on save number checkbox
    Then delivery detail should not contain 'Save this new address into my address book'
    Then delivery detail should not contain 'Set as default address'
    And I click on same as checkbox
    And I select sf address region dropdown option included 'Hong Kong' of sf address region dropdown
    And I select sf address district dropdown option included 'Wan Chai District' of sf address district dropdown
    And I select sf address area dropdown option included 'Happy Valley' of sf address area dropdown
    And I select delivery time dropdown option included 'AM' of delivery time dropdown
    Then delivery address field should contain 'TEST SAME ADDRESS'
    And I fill 'TEST SAME ADDRESS2' to delivery address field
    And I click on agree terms checkbox
    And I click on place order button
    Then I should be redirected to Shop Order Confirm Page
    Given I am on Orders Page
    When I click on 1st row of order links
    Then I should be redirected to Orders Show Page
    Then customer email should contain email
    Then customer phone should contain phone
    Then delivery method should contain 'Zeek2door (Same Day Home Delivery)'
    Then payment type should contain 'Bank Transfer'
    Then recipient phone should contain phone
    Then delivery form should contain 'TEST SAME ADDRESS2'
    Then delivery form should contain "Hong Kong, Wan Chai District, Happy Valley"
    Then delivery form should contain 'AM'