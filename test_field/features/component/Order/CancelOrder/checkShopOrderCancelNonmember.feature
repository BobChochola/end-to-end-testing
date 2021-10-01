@BaseCase @Admin @Order @Setting @CancelOrder @checkShopOrderCancelNonmember @fixture-shop @fixture-product @fixture-payment @fixture-delivery @C17432
Feature: check shop order cancel flow detail - create member/bank transfer
  As a user of Shopline
  I want ckeck order setting cancel order on
  and shop nonmember ckeckout flow

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

    Given I am on Order Setting Page
    When I check and click cancel order toggle off
    And I scroll down to update button
    And I click on update button
    Then I should be redirected to Dashboard Page

    Given I am on Payment Setting Page
    When I click edit button of payment method list for the same order of row of payment method list included 'Bank Transfer'
    Then I should be redirected to Payment Edit Page
    And I fill "(rollback data) Bank Transfer" to name field
    When I check and click cancel order toggle off
    And I click on update button
    Then I should be redirected to Payment Setting Page

  @EAT-1162 @EAT-1162-1
  Scenario: check shop order cancel flow detail - create member/bank transfer
    Given I am on Shop Home Page
    When I click on sign in button
    Then I should be redirected to Shop Login Page
    When I click on switch to signup tab button
    Then I should be redirected to Shop Sign Up Page
    When I fill new account email to email field
    And I fill new account password to password field
    And I fill name to name field
    And I click on agree terms checkbox
    And I click on submit button
    Then I should be redirected to Sign Up Confirmation Page
    Then I should be redirected to Shop Home Page

    Given I am on Shop Product Index Page
    When I input "4th Product for Checkout" to search field
    Then 1st product of products list should contain '4th Product for Checkout'
    When I click on 1st product of products list
    Then I should be redirected to Shop Product Show Page
    When I fill "5" to product quantity field
    And I click on add to cart button
    Then I should see cart panel
    When I click on checkout button
    Then I should be redirected to Shop Cart Page
    When I select language dropdown option included 'English' of language dropdown
    And I wait for 3 seconds for loading
    Then language dropdown should contain 'English'
    When I select country dropdown option included "Taiwan" of country list dropdown
    And I wait for 3 seconds for loading
    And I select delivery dropdown option included "Custom Delivery" of delivery method dropdown
    And I wait for 3 seconds for loading
    And I select payment dropdown option included "Bank Transfer" of payment method dropdown
    And I wait for 3 seconds for loading
    And I click on proceed to checkout button
    Then I should be redirected to Shop Checkout Page
    And I fill phone to contact number field
    And I click on save number checkbox
    And I click on same as checkbox
    And I click on agree terms checkbox
    And I click on place order button
    Then I should be redirected to Shop Order Confirm Page
    Then I should see check order footer
    
    And ---ROLL BACK---
    Given I am on Customer List Page
    Then 1st customer row should contain new account email
    When I click on customer checkbox
    And I select delete selected of bulk action dropdown
    Then I should see popover
    When I click on ok button
    Then customer list info should not contain new account email

    Given I am on Payment Setting Page
    When I click edit button of payment method list for the same order of row of payment method list included 'Bank Transfer'
    Then I should be redirected to Payment Edit Page
    When I check and click cancel order toggle on
    And I click on update button
    Then I should be redirected to Payment Setting Page

    Given I am on Order Setting Page
    When I check and click cancel order toggle on
    And I click on update button
    Then I should be redirected to Dashboard Page