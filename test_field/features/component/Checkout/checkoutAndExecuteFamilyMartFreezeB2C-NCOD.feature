@BaseCase @Admin @Storefront @Checkout @checkoutAndExecuteFamilyMartFreezeB2C-NCOD
@fixture-payment @fixture-delivery @fixture-product @fixture-promotion @fixture-shop @fixture-fmt-freeze
Feature: Family Mart Freeze Pickup Only B2C Checkout and executed delivery
  As a guest
  I want to use Family Mart Freeze B2C checkout feature
  So that I can get the freeze product

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
    When I input "8th Promotion" to search field
    Then I should see apply filter label
    Then I should see row of select checkbox list
    And I click on 1st row of select checkbox list
    And I select publish of bulk actions dropdown
    Then I should see alert
    Given I am on Free Shipping Index Page
    When I input "2nd Free Shipping" to search field
    Then I should see apply filter label
    Then I should see row of select checkbox list
    And I click on 1st row of select checkbox list
    And I select publish of bulk actions dropdown
    Then I should see alert

  @EAT-1284 @EAT-1284-1
  Scenario: Family Mart Freeze B2C Checkout and executed delivery
    Given I am on Shop Product Index Page
    When I input "12th Product for Checkout" to search field
    And I click on 1st product of products list
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
    And I select country dropdown option included "Taiwan" of country list dropdown
    And I wait for 5 seconds for loading
    And I select delivery dropdown option included "Family Mart Freeze Pickup only (B2C)" of delivery method dropdown
    And I wait for 5 seconds for loading
    When I click on apply coupon code button
    Then I should see coupon code field
    When I input "ExceptOPay" to coupon code field
    And I wait for 5 seconds for loading
    And I Refresh
    Then errors info should contain 'Failed transaction: order amount for：Family Mart Freeze Pickup only (B2C) should be 1 ~ NT$19,999'
    When I fill '3000' to item quantity field
    Then errors info should contain 'Failed transaction: order amount for：Family Mart Freeze Pickup only (B2C) should be 1 ~ NT$19,999'
    And I wait for 5 seconds for loading
    When I fill '10' to item quantity field
    And I wait for 5 seconds for loading
    And I select payment dropdown option included "Bank Transfer" of payment method dropdown
    And I wait for 5 seconds for loading
    And I click on proceed to checkout button
    Then I should be redirected to Shop Checkout Page
    When I click on pick store button
    Then I should be redirected to Family Mart Pick Store Page
    When I click on store code search button
    And I fill store name to store name field
    And I click on search button
    Then I should see row of search store list
    And I click on row of search store list
    Then I should see freeze confirm store button
    And I click on freeze confirm store button
    Then I should be redirected to Shop Checkout Page
    And I fill name to name field
    And I fill phone to contact number field
    And I click on same as checkbox
    When I click on agree terms checkbox
    And I click on accept marketing checkbox
    And I click on place order button
    Then I should be redirected to Shop Order Confirm Page
    Then delivery detail should contain "Family Mart Freeze Pickup only (B2C)"
    When I click on summary collapse
    Then 1st row of product unit price should contain "NT$10"
    Then 1st row of product quantity should equal to "10"
    Then 1st row of product items should contain "12th Product for Checkout"
    Then item subtotal should contain "NT$100"
    Then delivery fee should contain "NT$0"
    Then total should contain "NT$1"
    Then I mark the value of order confirm info as variable order info

    Given I am on Orders Page
    Then 1st row of order links should contain order number
    When I click on 1st row of order links
    Then I should be redirected to Orders Show Page
    Then order date should contain order date
    Then customer name should contain name
    Then customer email should contain email
    Then customer phone should contain phone
    Then payment type should contain "Bank Transfer"
    Then delivery method should contain "Family Mart Freeze Pickup only (B2C)"
    When I Refresh
    Then third party recipient name should contain name
    Then third party recipient phone should contain phone
    Then delivery fee should contain "NT$0"

    Given I am on Orders Page
    When I select Family Mart Freeze B2C Order Management of Orders delivery type dropdown
    Then I should see breadcrumb
    Then breadcrumb should contain "Family Mart Freeze B2C Order Management"
    Then I should see additional filters button
    When I click on tab included 'Non-executed'
    Then I should see search label
    Then 1st row of order links should contain order number
    And I click on 1st row of order checkbox
    Then I should see execute shipment button
    And I click on execute shipment button
    Then I should see execute shipment popover
    And I click on OK button
    And I click on OK button
    Then I should see additional filters button
    When I click on tab included 'Shippable'
    Then I should see search label
    And I wait for 60 seconds for loading
    And I Refresh
    Then 1st row of order links should contain order number

    Given I am on Google Mail Page
    Then I should see account field
    When I fill merchant email to account field
    And I click on identifier next button
    Then I should see password field
    When I input account password to password field
    And I check and click password next button
    Then I should see search field
    When I input order number to search field
    Then I should see row of mail list
    When I click on row of mail list included "Thank you for your order"
    Then I should see mail detail
    Then mail detail should contain "Family Mart Freeze Pickup only (B2C)"
    When I click on view order button
    And I switch to 2 of tabs
    Then I should be redirected to Shop Orders Show Page
    And delivery detail should contain 'Family Mart Freeze Pickup only (B2C)'
    And ---ROLL BACK---
    Given I am on Promotion Index Page
    When I input "8th Promotion" to search field
    Then I should see apply filter label
    Then I should see 1 row of promotion list
    Then 1st row of promotion list should contain "8th Promotion"
    And I click on 1st row of select checkbox list
    And I select unpublish of bulk actions dropdown
    Then I should see 1 unpublished item
    Given I am on Free Shipping Index Page
    When I input "2nd Free Shipping" to search field
    Then I should see apply filter label
    Then I should see 1 row of free shipping list
    Then 1st row of free shipping list should contain "2nd Free Shipping"
    And I click on 1st row of select checkbox list
    And I select unpublish of bulk actions dropdown
    Then I should see 1 unpublished item