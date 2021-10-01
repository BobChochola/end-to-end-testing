@BaseCase2 @Admin @Storefront @Order @ReturnOrder @print711ReturnOrderB2CLabel
@fixture-shop @fixture-product @fixture-payment @fixture-delivery @EAT-1336
Feature: print 711 Return Order B2C Label
  As a merchant
  I want to return order by using 711 Return Order B2C and print label

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

    Given I am on Basic Setting Page
    And I mark the value of shop name field as variable shop name
    Given I am on Shop Product Index Page
    When I input "1st Product for Checkout" to search field
    When I click on 1st product of products list
    Then I should be redirected to Shop Product Show Page
    When I fill '5' to product quantity field
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
    Then I mark the value of order confirm info as variable order info

    Given I am on Orders Page
    Then 1st row of order links should contain order number
    When I click on 1st row of order links
    Then I should be redirected to Orders Show Page
    And I should see view return button
    Then I click on view return button
    Then I should be redirected to Place Return Order Page
    When I click on row of product checkbox
    And I select return delivery dropdown option included '7-11 Return Only (C2B)' of return delivery dropdown
    And I fill name to recipient name field
    And I fill phone to recipient phone field
    And I select return payment dropdown option included 'No Pay on 7-11 Return (C2B)' of return payment dropdown
    And I click on place return button
    Then I should see popover
    And I click on OK button
    Then I should be redirected to Return Orders Show Page
    Then I should see return order number label
    Then I mark the value of return order number label as variable return order info

  @C3768 @C3768-2
  Scenario: 7-11 Return Only (C2B) and print label
    Given I am on Return Orders Page
    When I input return order number to search field
    Then 1st row of order links should contain return order number
    When I click on 1st row of order links
    Then I should be redirected to Return Orders Show Page
    When I click on print order button
    When I switch to 2 of tabs
    Then I should be redirected to Report Pdf Page
    Then I should see return order invoice

    Given I am on Orders Page
    Then 1st row of order links should contain order number
    When I click on 1st row of order links
    Then I should be redirected to Orders Show Page
    When I click on execute shipment button
    Then I click on execute shipment ok button
    When I click on OK button
    And I wait for 3 seconds for loading
    Then I Refresh
    Then logistic service order status should contain 'Shippable'
    When I select print label dropdown option included 'Print Shipping Label' of print label dropdown
    When I click on OK button
    When I switch to 3 of tabs
    Then I should be redirected to Report Pdf Page
    Then I should see shipping label

    Given I am on Orders Page
    Then 1st row of order links should contain order number
    When I click on 1st row of order checkbox
    Then I select export dropdown option included 'Export Packing Slip' of export dropdown
    When I click on selected orders checkbox
    When I click on export button
    Then I should see alert

    Given I am on Google Mail Page
    Then I should see account field
    When I fill merchant email to account field
    And I click on identifier next button
    Then I should see password field
    When I input account password to password field
    And I check and click password next button
    Then I should see search field
    When I input shop name to search field
    Then I should see row of mail list
    Then I wait for 5 seconds for loading
    When I click on row of mail list included "Download Packing Slip"
    When I click on download button
    And I switch to 4 of tabs
    And I should be redirected to Report Pdf Page
    Then pdf should contain "Family Mart Pickup and pay in store (B2C)"
    Then pdf should not contain "7-11 Return Only (C2B)"