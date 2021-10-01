@BaseCase @Admin @Storefront @Order @OrderSplit @checkOrderSplitAndEditStatus
@fixture-shop @fixture-product @fixture-delivery @fixture-payment @EAT-501
Feature: Order split and edit by 7-11
  As a merchant
  I want to see the reminder when I spilt and edit the order

  Background:
    Given I am on Shop Product Index Page
    When I input "1st Product for Checkout" to search field
    Then 1st product of products list should contain '1st Product for Checkout'
    When I click on 1st product of products list
    Then I should be redirected to Shop Product Show Page
    When I fill '5' to product quantity field
    And I click on add to cart button
    Then I should see cart panel
    When I click on checkout button
    Then I should be redirected to Shop Cart Page
    And I select country dropdown option included "Taiwan" of country list dropdown
    And I wait for 5 seconds for loading
    And I select delivery dropdown option included "7-11 Pickup and pay in store (C2C)" of delivery method dropdown
    And I wait for 5 seconds for loading
    And I select payment dropdown option included "Pay on 7-11 Store Pickup (C2C)" of payment method dropdown
    And I wait for 5 seconds for loading
    And I click on proceed to checkout button
    Then I should be redirected to Shop Checkout Page
    When I click on pick store button
    Then I should be redirected to Seven Pick Store Page
    When I click on id search button
    When I switch to main frame frame
    Then I should see store id field
    And I fill store id to store id field
    And I click on search button
    And I click on 1st store list
    When I switch to default frame
    Then I should see store confirm button
    And I click on store confirm button
    And I click on agree button
    And I click on submit button
    Then I should be redirected to Shop Checkout Page
    When I fill name to name field
    And I fill email to email address field
    And I fill phone to contact number field
    And I click on same as checkbox
    And I click on agree terms checkbox
    And I click on accept marketing checkbox
    And I click on place order button
    Then I should be redirected to Shop Order Confirm Page

  @EAT-501-1
  Scenario: Check spilt order
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
    Given I am on Orders Page
    When I click on 1st row of order links
    Then I should be redirected to Orders Show Page
    Then I scroll down to payment status
    And I click on execute shipment button
    Then I should see execute shipment popover
    And I click on popup save button
    And I click on OK button
    Then I scroll down to breadcrumb
    When I click on split button
    Then I should be redirected to Order Split Page
    And I input '2' to 1st row of split quantity field
    And I select ZH of language dropdown
    When I click on split button
    Then I should see confirm popup
    Then confirm popup should contain "拆單將更新代收金額，故需要重新執行出貨及列印新標籤，若您已經寄出包裹請勿按下確定並取消編輯！"
    And I click on cancel button
    And I select EN of language dropdown
    When I click on split button
    Then I should see confirm popup
    Then confirm popup should contain "Order amount may be changed after order split, so you need to re-execute shipment and labels need to be re-printed. Please click cancel order split if you've shipped out this order!"
    And I click on confirm button
    When I click on confirm button
    Then I should see ok button
    When I click on ok button
    Then I should see confirm button
    When I click on confirm button
    Then I should see alert
    Then I should be redirected to Orders Page
    When I click on 1st row of order links
    Then I should be redirected to Orders Show Page
    Then I should see alert
    Then alert should contain 'This order is split from (parent order):'

  @EAT-501-2
  Scenario: Check edit order
    Given I am on Admin Login Page
    When I fill correct account email to email field
    And I fill correct account password to password field
    And I click on login button
    And I should see successful login
    Then I check intercom message notification frame and click clear intercom message button
    Then I check intercom message notification frame and click intercom message close button
    When I check new feature alert notification frame and click new feature alert close button
    When I check and click exclude products panel close button
    When I check and click no thanks button
    Given I am on Orders Page
    When I click on 1st row of order links
    Then I should be redirected to Orders Show Page
    When I select ZH of language dropdown
    And I click on product details edit button
    Then I should see product details edit reminder
    Then I click on reminder ok button
    When I fill "3" to 1st product quantity field
    And I click on product details save button
    Then I should see confirm popover
    Then I should see edit alert
    Then confirm popover should contain "編輯商品資訊將更新代收金額，故需要重新執行出貨及列印新標籤，若您已經寄出包裹請勿按下確定並取消編輯！"
    When I click on cancle button
    And I click on product details cancel button
    And I select EN of language dropdown
    When I click on product details edit button
    Then I should see product details edit reminder
    Then I click on reminder ok button
    When I fill "3" to 1st product quantity field
    And I click on product details save button
    Then I should see confirm popover
    Then I should see edit alert
    Then confirm popover should contain "Order amount may be changed after order edit, so you need to re-execute shipment and labels need to be re-printed. Please click cancel order edit if you've shipped out this order!"
    When I click on OK button
    Then I should see success message