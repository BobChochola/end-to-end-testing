@BaseCase @Admin @Storefront @Order @CancelOrder @executeShipmentNotOtherCancelOrder-All @fixture-shop @fixture-product @fixture-payment @fixture-delivery
Feature: exetuce shipment select all cancel order on Orders (family mart C2C)
  As a user of Shopline
  I want execute shipment select all cancel order on Orders Page

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
    When I click edit button of payment method list for the same order of row of payment method list included 'Cash on Delivery'
    Then I should be redirected to Payment Edit Page
    And I fill "(rollback data) Cash on Delivery" to name field
    When I check and click cancel order toggle off
    And I click on update button
    Then I should be redirected to Payment Setting Page

  @EAT-1163 @EAT-1163-3
  Scenario: exetuce shipment select all cancel order on Orders (family mart C2C)
    Given I am on Shop Product Index Page
    When I input "4th Product for Checkout" to search field
    Then 1st product of products list should contain '4th Product for Checkout'
    When I click on 1st product of products list
    Then I should be redirected to Shop Product Show Page
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
    And I select country dropdown option included "Taiwan" of country list dropdown
    And I wait for 5 seconds for loading
    And I select delivery dropdown option included "Family Mart Pickup only (C2C)" of delivery method dropdown
    And I wait for 5 seconds for loading
    And I select payment dropdown option included "Cash on Delivery" of payment method dropdown
    And I wait for 5 seconds for loading
    And I click on proceed to checkout button
    Then I should be redirected to Shop Checkout Page
    When I click on pick store button
    Then I should be redirected to Family Mart Pick Store Page
    When I click on name search button
    And I should see store name field
    And I fill store name to store name field
    And I click on search button
    And I should see row of search store list
    And I click on 1st row of search store list
    And I click on confirm store button
    Then I should be redirected to Shop Checkout Page
    When I fill name to name field
    And I fill phone to contact number field
    And I click on save number checkbox
    And I click on same as checkbox
    And I click on agree terms checkbox
    And I click on place order button
    Then I should be redirected to Shop Order Confirm Page

    When I click on summary collapse
    Then I mark the value of order confirm info as variable order info
    Then I should see check order footer
    Then order view hyperlink should contain 'Member Center> Orders'
    And I click on order view hyperlink
    Then I should be redirected to Shop User Profile Page

    When I switch to 2 of tabs
    Given I am on Orders Page
    Then 1st row of order links should contain order number
    And I click on 1st row of order links
    Then I should be redirected to Orders Show Page
    Then order status should contain "Open"
    Then payment status should contain "Unpaid"
    Then delivery status should contain "Unfulfilled"

    When I switch to 1 of tabs
    Then I should be redirected to Shop User Profile Page
    When I click on member center tab included 'Orders'
    Then I should be redirected to Shop Orders Page
    When I click on 1st row of order links

    Then I should be redirected to Shop Orders Show Page
    Then I should see order cancel button
    And I click on order cancel button
    Then I should see order cancel popover

    And I select reason for cancellation dropdown option included "Change your mind" of reason for cancellation dropdown
    Then I click on confirm cancel button
    Then I wait for 3 seconds for loading
    Then I should see succeed cancel popup 
    Then I click on ok button
    Then I Refresh
    Then order info should contain "Cancelled"

    Given I am on Shop Product Index Page
    When I input "4th Product for Checkout" to search field
    Then 1st product of products list should contain '4th Product for Checkout'
    When I click on 1st product of products list
    Then I should be redirected to Shop Product Show Page
    And I click on add to cart button
    Then I should see cart panel
    When I click on checkout button

    Then I should be redirected to Shop Cart Page
    And I select country dropdown option included "Taiwan" of country list dropdown
    And I wait for 5 seconds for loading
    And I select delivery dropdown option included "Family Mart Pickup only (C2C)" of delivery method dropdown
    And I wait for 5 seconds for loading
    And I select payment dropdown option included "Cash on Delivery" of payment method dropdown
    And I wait for 5 seconds for loading
    And I click on proceed to checkout button
    Then I should be redirected to Shop Checkout Page
    When I click on pick store button
    Then I should be redirected to Family Mart Pick Store Page
    When I click on name search button
    And I should see store name field
    And I fill store name to store name field
    And I click on search button
    And I should see row of search store list
    And I click on 1st row of search store list
    And I click on confirm store button
    Then I should be redirected to Shop Checkout Page
    When I fill name to name field
    And I fill phone to contact number field
    And I click on same as checkbox
    And I click on agree terms checkbox
    And I click on place order button
    Then I should be redirected to Shop Order Confirm Page

    When I click on summary collapse
    Then I mark the value of order confirm info as variable order info 2
    Then I should see check order footer
    Then order view hyperlink should contain 'Member Center> Orders'
    And I click on order view hyperlink
    Then I should be redirected to Shop User Profile Page

    When I switch to 2 of tabs
    Given I am on Orders Page
    When I click on tab included 'Cancelled by Customer'
    Then 1st row of order links should not contain order number 2
    When I click on tab included 'All'
    Then 1st row of order links should contain order number 2
    And I click on 1st row of order links
    Then I should be redirected to Orders Show Page
    Then order status should contain "Open"
    Then payment status should contain "Unpaid"
    Then delivery status should contain "Unfulfilled"

    When I switch to 1 of tabs
    Then I should be redirected to Shop User Profile Page
    When I click on member center tab included 'Orders'
    Then I should be redirected to Shop Orders Page
    When I click on 1st row of order links

    Then I should be redirected to Shop Orders Show Page
    Then I should see order cancel button
    And I click on order cancel button
    Then I should see order cancel popover

    And I select reason for cancellation dropdown option included "Change your mind" of reason for cancellation dropdown
    Then I click on confirm cancel button
    Then I wait for 3 seconds for loading
    Then I should see succeed cancel popup 
    Then I click on ok button
    Then I Refresh
    Then order info should contain "Cancelled"

    When I switch to 2 of tabs
    Given I am on Orders Page
    When I select Family Mart C2C Order Management of Orders delivery type dropdown
    Then I should see additional filters button
    When I click on tab included 'Non-executed'
    And I click on 1st row of order checkbox
    And I click on 2nd row of order checkbox
    Then I should see execute shipment button
    And I click on execute shipment button
    Then I should see attention popover
    Then attention cancel order links should contain order number
    Then attention cancel order links should contain order number 2
    And I click on execute all button
    Then I should see execute shipment popover
    And I click on execute shipment OK button
    Then I should see OK button
    And I click on OK button
    Then I should see additional filters button
    When I click on tab included 'Shippable'
    Then I should see additional filters button
    Then I wait for 5 seconds for waiting search
    Then 2nd row of order links should contain order number
    Then 1st row of order links should contain order number 2
    And ---ROLL BACK---
    Given I am on Payment Setting Page
    When I click edit button of payment method list for the same order of row of payment method list included 'Cash on Delivery'
    Then I should be redirected to Payment Edit Page
    And I fill "Cash on Delivery" to name field
    When I check and click cancel order toggle on
    And I click on update button
    Then I should be redirected to Payment Setting Page

    Given I am on Order Setting Page
    And I click on 1st auto cancel order checkbox
    When I check and click cancel order toggle on
    And I scroll down to update button
    And I click on update button
    Then I should be redirected to Dashboard Page