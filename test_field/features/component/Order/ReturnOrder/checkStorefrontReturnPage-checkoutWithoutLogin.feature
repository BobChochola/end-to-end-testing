@BaseCase @Admin @Storefront @Delivery @Order @ReturnOrder @Promotion @checkStorefrontReturnPage-checkoutWithoutLogin @fixture-delivery @fixture-product @fixture-shop @fixture-freegift @fixture-promotion @fixture-payment
@fixture-storefront-return
Feature: checkout an order(without login) >> execute return order page at storefront >> check return delivery on admin return detail page
  As a merchant
  I can turn on return order toggle for customer so that customer can return order in storefront

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
    And I fill new email to email address field
    And I fill phone to contact number field
    And I click on same as checkbox
    And I click on agree terms checkbox
    And I click on become member checkbox
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

    Given I am on Basic Setting Page
    And I mark the value of shop name field as variable shop name

    Given I am on Order Setting Page
    Then I should see storefront return toggle
    When I check and click storefront return toggle off
    Then storefront return toggle should be checked
    And I fill '5' to return order limit day field
    And I click on update button
    Then I should be redirected to Dashboard Page

  @EAT-1171 @EAT-1171-1
  Scenario: checkout an order(without login) >> execute return order page at storefront >> check return delivery on admin return detail page
    Then I wait for 20 seconds for mail sent
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
    When I click on view order button
    And I check and click on proceed button
    When I switch to 2 of tabs
    Then I should be redirected to Shop Orders Show Page
    When I click on sign up button
    Then I should be redirected to Shop Login Page
    When I click on switch to signup tab button
    Then I should be redirected to Shop Sign Up Page
    When I fill new email to email field
    And I fill new account password to password field
    And I fill name to name field
    And I click on agree terms checkbox
    When I click on submit button
    Then I wait for 20 seconds for mail sent

    Given I am on Google Mail Page
    Then I should see search field
    When I input shop name to search field
    Then I should see row of mail list
    When I click on row of mail list included "Please set up your account"
    Then I click on set my password button
    Then I switch to 3 of tabs
    Then I should be redirected to Shop Set Password Page
    When I fill password to new password field
    And I fill password to confirm password field
    And I click on change my password button
    Then I should be redirected to Sign Up Confirmation Page
    Then I should be redirected to Shop Orders Show Page
    When I click on member center button
    Then I should be redirected to Shop User Profile Page
    When I click on tab included 'Orders'
    Then I should be redirected to Shop Orders Page
    Then 1st row of order should contain order number
    When I click on row of order links
    Then I should be redirected to Shop Orders Show Page
    Then I should see apply return order button
    And apply return order button should contain 'Apply Return Order'
    And return expiry date should contain five day of return expiry date
    When I click on apply return order button
    Then I should be redirected to Shop Return Order Page
    Then order link should contain order number
    When I click on order link
    Then I should be redirected to Shop Orders Show Page
    When I click on apply return order button
    Then I should be redirected to Shop Return Order Page
    And 1st row of product name should contain '13th Product for Checkout'
    And 1st row of product quantity should contain '2'
    And 1st row of product return quantity should contain '0'
    When I click on 1st row of product checkbox
    Then I should see 1 row of product return quantity field
    When I fill '1' to 1st row of product return quantity field
    And I select first return reason dropdown option included 'Parcel damaged on arrival' of 1st return reason dropdown

    And 2nd row of product name should contain '3rd Addon for Checkout'
    And 2nd row of product quantity should contain '2'
    And 2nd row of product return quantity should contain '0'
    When I click on 2nd row of product checkbox
    Then I should see 2 row of product return quantity field
    When I fill '1' to 2nd row of product return quantity field
    And I select second return reason dropdown option included 'Others' of 2nd return reason dropdown
    Then I should see 1 return reason field
    And I fill '3rd addon return' to 1st return reason field

    And 3rd row of product name should contain '1st Created Free Gift'
    And 3rd row of product quantity should contain '2'
    And 3rd row of product return quantity should contain '0'
    When I click on 3rd row of product checkbox
    Then I should see 3 row of product return quantity field
    When I fill '2' to 3rd row of product return quantity field
    And I select third return reason dropdown option included 'Size issue' of 3rd return reason dropdown

    And I select return delivery dropdown option included '7-11 Return Only (C2B)' of return delivery dropdown
    Then I fill '陳小明' to name field
    Then I fill '0912345678' to phone field

    And I select refund dropdown option included 'Other' of refund dropdown
    And I click on agree checkbox
    And confirm return button should contain 'Confirm Return Order'
    And I click on confirm return button
    Then I should be redirected to Shop Return Order Success Page

    Given I am on Return Orders Page
    Then I click on 1st row of order links
    Then I should be redirected to Return Orders Show Page
    And 1st row of return product should contain '13th Product for Checkout'
    And 1st row of return product should contain '1 x NT$35'
    And 2nd row of return product should contain '3rd Addon for Checkout'
    And 2nd row of return product should contain '1 x NT$10 '
    And 3rd row of return product should contain '1st Created Free Gift'
    And 3rd row of return product should contain '2 x NT$0 '
    And return type should contain '7-11 Return Only (C2B)'
    And return name should contain '陳小明'
    And return phone should contain '0912345678'

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
    And I fill '7' to return order limit day field
    When I click on storefront return toggle
    Then storefront return toggle should not be checked
    And I click on update button
    Then I should be redirected to Dashboard Page

    Given I am on Customer List Page
    And I click on 1st customer checkbox
    Then I select delete selected of bulk action dropdown
    And I should see popover
    When I click on ok button