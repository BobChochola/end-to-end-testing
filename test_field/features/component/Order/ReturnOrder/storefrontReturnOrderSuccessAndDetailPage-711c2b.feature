@BaseCase @Admin @Storefront @Delivery @Order @ReturnOrder @Promotion @storefrontReturnOrderSuccessAndDetailPage-711c2b @fixture-delivery @fixture-payment @fixture-product @fixture-shop @fixture-freegift @fixture-addon @fixture-promotion @fixture-storefront-return
Feature: After applying return order, I should be redirected to success page and should see return progress page (7-11 C2B)
  As a customer
  After appling return order, I should be redirected to success page and should see return progress page

  Background:
    Given I am on Admin Login Page
    And I fill correct account email to email field
    And I fill correct account password to password field
    And I click on login button
    Then I should see successful login
    Then I check intercom message notification frame and click clear intercom message button
    Then I check intercom message notification frame and click intercom message close button
    When I check new feature alert notification frame and click new feature alert close button
    When I check and click no thanks button

    Given I am on Order Setting Page
    When I check and click storefront return toggle off
    Then storefront return toggle should be checked
    And I click on update button
    Then I should be redirected to Dashboard Page

    Given I am on Promotion Index Page
    When I input "14th Free Gift Promotion" to search field
    Then I should see row of select checkbox list
    Then 1st row of promotion list should contain "14th Free Gift Promotion"
    And I click on 1st row of select checkbox list
    And I select publish of bulk actions dropdown
    Then I should see alert

    Given I am on Shop Product Index Page
    When I input "13th Product for Checkout" to search field
    Then 1st product of products list should contain '13th Product for Checkout'
    And I click on 1st product of products list
    Then I should be redirected to Shop Product Show Page
    And I click on increase button
    And I fill '2' to addon quantity field
    And I click on buy together button
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
    And I select delivery dropdown option included "Custom Delivery" of delivery method dropdown
    And I wait for 5 seconds for loading
    And I select payment dropdown option included "Bank Transfer" of payment method dropdown
    And I wait for 5 seconds for loading
    Then I should see 3 row of cart item
    And I click on proceed to checkout button
    Then I should be redirected to Shop Checkout Page
    And I fill name to name field
    And I fill phone to contact number field
    And I click on same as checkbox
    And I click on agree terms checkbox
    And I click on place order button
    Then I should be redirected to Shop Order Confirm Page
    Then I mark the value of order confirm info as variable order info

    Given I am on Orders Page
    Then 1st row of order links should contain order number
    When I click on 1st row of order checkbox
    And I select Update Status of bulk actions dropdown
    And I select status dropdown option included 'Delivery Status' of status type dropdown
    And I select status dropdown option included 'Collected' of status item dropdown
    When I click on update button
    And I click on OK button
    Then 1st row of delivery status should contain 'Collected'

    Given I am on Shop Home Page
    When I click on member center button
    Then I should be redirected to Shop User Profile Page
    When I click on tab included 'Orders'
    Then I should be redirected to Shop Orders Page
    Then 1st row of order should contain order number
    When I click on row of order links
    Then I should be redirected to Shop Orders Show Page
    When I click on apply return order button
    Then I should be redirected to Shop Return Order Page
    And 1st row of product name should contain '13th Product for Checkout'
    When I click on 1st row of product checkbox
    When I fill '1' to 1st row of product return quantity field
    And I select first return reason dropdown option included 'Parcel damaged on arrival' of return reason dropdown

    And 2nd row of product name should contain '3rd Addon for Checkout'
    When I click on 2nd row of product checkbox
    When I fill '1' to 2nd row of product return quantity field
    And I select second return reason dropdown option included 'Others' of return reason dropdown
    Then I should see 1 return reason field
    And I fill '3rd addon return' to 1st return reason field

    And 3rd row of product name should contain '1st Created Free Gift'
    When I click on 3rd row of product checkbox
    When I fill '2' to 3rd row of product return quantity field
    And I select third return reason dropdown option included 'Size issue' of return reason dropdown

    And I select return delivery dropdown option included '7-11 Return Only (C2B)' of return delivery dropdown
    And I select refund dropdown option included 'Others' of refund dropdown
    And I click on agree checkbox
    And I click on confirm return button

  @EAT-1172 @EAT-1172-1
  Scenario: After applying return order, I should be redirected to success page and should see return progress page (7-11 C2B)
    Then I should be redirected to Shop Return Order Success Page
    Then I should see return order confirm image
    And id should contain 'Your return order has been submitted!'
    And id should contain 'An return order confirmation email will be sent to below email'
    Then I mark the value of return order number info as variable return order info
    And return order number info should contain 'Return Order No. ：'
    And return date should contain today date
    And return method should contain '7-11 Return Only (C2B)'
    Then I mark the value of delivery tracking number as variable return tracking number
    And return status should contain 'Returning'
    And refund status should contain 'Pending'
    And 1st row of return product name should contain '13th Product for Checkout'
    And 1st row of return product name should contain 'Blue'
    And 1st row of return product quantity should contain '1'
    And 1st row of return product reason should contain 'Parcel damaged on arrival'
    And 2nd row of return product name should contain '3rd Addon for Checkout'
    And 2nd row of return product name should contain 'Add-on Item'
    And 2nd row of return product quantity should contain '1'
    And 2nd row of return product reason should contain '3rd addon return'
    And 3rd row of return product name should contain '1st Created Free Gift'
    And 3rd row of return product name should contain 'Free Gift'
    And 3rd row of return product quantity should contain '2'
    And 3rd row of return product reason should contain 'Size issue'
    And refund description should contain 'The acutal refund amount will be displayed on Return Order Information Page.'
    And I should see return order link
    And refund description should contain 'Please Contact Us if you have any question.'
    And go to shoppping button should contain 'Continue Shopping'
    When I click on go to shoppping button
    Then I should be redirected to Shop Home Page

    Given I am on Shop Home Page
    When I click on member center button
    Then I should be redirected to Shop User Profile Page
    When I click on tab included 'Orders'
    Then I should be redirected to Shop Orders Page
    Then 1st row of order should contain order number
    Then 1st row of order should contain 'Return Progress'
    Then 1st return order progress button should contain 'Return Progress'
    When I click on return order progress button
    Then I should be redirected to Shop Return Status Check Page
    And I click on go to order show page button
    Then I should be redirected to Shop Orders Show Page
    And I should see view return order button
    And view return order button should contain 'View Return Order'
    When I click on view return order button
    Then I should be redirected to Shop Return Status Check Page
    And return order number info should contain return order number
    And return date should contain today date
    And return method should contain '7-11 Return Only (C2B)'
    And return method should contain return tracking number
    And return status should contain 'Returning'
    And refund status should contain 'Pending'
    And 1st row of return product name should contain '13th Product for Checkout'
    And 1st row of return product name should contain 'Blue'
    And 1st row of return product quantity should contain '1'
    And 1st row of return product reason should contain 'Parcel damaged on arrival'
    And 1st row of product inspect status should contain 'Uninspected'
    And 2nd row of return product name should contain '3rd Addon for Checkout'
    And 2nd row of return product name should contain 'Add-on Item'
    And 2nd row of return product quantity should contain '1'
    And 2nd row of return product reason should contain 'Others'
    And 2nd row of return product reason should contain '3rd addon return'
    And 2nd row of product inspect status should contain 'Uninspected'
    And 3rd row of return product name should contain '1st Created Free Gift'
    And 3rd row of return product name should contain 'Free Gift'
    And 3rd row of return product quantity should contain '2'
    And 3rd row of return product reason should contain 'Size issue'
    And 3rd row of product inspect status should contain 'Uninspected'
    And refund amount should contain 'Pending'
    And refund date should contain 'Pending'
    And refund option should contain 'Others'
    When I click on go to order show page button
    Then I should be redirected to Shop Orders Show Page

    Given I am on Return Orders Page
    Then I click on 1st row of order links
    Then I should be redirected to Return Orders Show Page
    Then return no should contain return order number
    And return tracking number should contain return tracking number

    And ---ROLL BACK---
    Given I am on Promotion Index Page
    When I input "14th Free Gift Promotion" to search field
    Then I should see apply filter label
    Then I should see row of select checkbox list
    Then 1st row of promotion list should contain "14th Free Gift Promotion"
    And I click on 1st row of select checkbox list
    And I select unpublish of bulk actions dropdown
    Then I should see 1 unpublished item

    Given I am on Order Setting Page
    When I click on storefront return toggle
    Then storefront return toggle should not be checked
    And I click on update button
    Then I should be redirected to Dashboard Page