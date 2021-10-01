@OneBaseCase @Admin @Order @Search @createManualOrderSyncOne @fixture-payment @fixture-delivery @fixture-product @fixture-payment @fixture-delivery @fixture-sl-pos @fixture-sl-pos-admin @fixture-integration-one
Feature: Create manual order and check One basic UI
  As a merchant
  I Create manual order sync One

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

  @EAT-963 @EAT-963-1
  Scenario: Create manual order and check product quantity on One (unlimited)
    Given I am on Product Index Page
    When I input "15th Product for Checkout" to search field
    Then 1st row of product list should contain "15th Product for Checkout"
    Then row of quantity list should contain "∞"

    Given I am on One Product Index Page
    When I input '15th Product for Checkout' to search field
    Then pend to deliver quantity should equal to "0"
    Then available quantity should equal to "0"
    Then I click manage button for the same order of product list included '15th Product for Checkout'

    Then I should be redirected to One Product Manage Page
    Then 1st sales channel should contain shop name
    Then sales channel available quantity should contain '∞ Untracked'
    And I click on inventory tab
    Then 1st inventory warehouse should contain "Primary"
    Then 1st inventory pend to deliver quantity should equal to '0'
    Then 1st inventory available quantity should equal to '0'

    Given I am on Orders Page
    When I select export dropdown option included 'Create Order' of export dropdown
    Then I should be redirected to Orders Create Page
    When I click on select customer button
    When I input email to search customer field
    And I click on 1st row of customer checkbox
    And I click on ok save button
    Then I should see phone number field
    And I fill phone to phone number field
    Then I should see save phone number checkbox
    And I click on save phone number checkbox
    Then I should see next button
    And I click on 1st next button
    Then I should see select product button
    When I click on select product button
    Then I should see select popover
    And I input "15th Product for Checkout" to search product field
    Then 1st row of select product should contain '15th Product for Checkout'
    And I click on 1st row of select product
    And I click on ok save button
    Then I should see product next button
    And I click on product next button
    Then I should see shipping destination dropdown
    And I select shipping destination dropdown option included "Taiwan" of shipping destination dropdown
    Then I wait for 3 seconds for loading
    And I select delivery method dropdown option included "Custom Delivery" of delivery method dropdown
    Then I wait for 3 seconds for loading
    And I click on same as customer info checkbox
    And I click on delivery next button
    Then I should see payment method dropdown
    When I select payment method dropdown option included "Custom" of payment method dropdown
    Then I wait for 3 seconds for loading
    And I click on create order button
    Then I should be redirected to Orders Show Page
    Then 1st row of activity log list should contain "Created order from admin"
    Then I mark the value of order no as variable order number

    Given I am on One Product Index Page
    When I input '15th Product for Checkout' to search field
    Then 1st product name included '15th Product for Checkout' and same order of pend to deliver quantity should also equal to '1'
    Then 1st product name included '15th Product for Checkout' and same order of available quantity should also equal to '0'
    Then I click manage button for the same order of product list included '15th Product for Checkout'

    Then I should be redirected to One Product Manage Page
    Then 1st sales channel should contain shop name
    Then sales channel available quantity should equal to "∞ Untracked"
    And I click on inventory tab
    Then 1st inventory warehouse should contain "Primary"
    Then 1st inventory pend to deliver quantity should equal to '1'
    Then 1st inventory available quantity should equal to "0"

    And ---ROLL BACK---
    Given I am on Orders Page
    Then 1st row of order links should contain order number
    Then row of delivery status should contain "Unfulfilled"
    When I click on 1st row of order links
    Then I should be redirected to Orders Show Page
    And I select Cancelled of order status dropdown
    And I click on send notification checkbox
    And I click on YES button
    Then order status should equal to "Cancelled"

  @EAT-963 @EAT-963-2
  Scenario: Create manual order ckeck product quantity on One (1 layer limited)
    Given I am on Product Index Page
    When I input "19th Product for Checkout" to search field
    Then 1st row of product list should contain "19th Product for Checkout"
    Then I mark the value of row of quantity list as variable origin quantity

    Given I am on One Product Index Page
    When I input '19th Product for Checkout' to search field
    Then product list included '19th Product for Checkout' and same order of variants quantity should also contain "1"
    Then product list included '19th Product for Checkout' and same order of pend to deliver quantity should also equal to "0"
    Then product list included '19th Product for Checkout' and same order of available quantity should also contain origin quantity
    Then I click manage button for the same order of product list included '19th Product for Checkout'
    Then I should be redirected to One Product Manage Page
    Then 1st sales channel should contain shop name
    Then sales channel available quantity should contain origin quantity
    
    And I click on inventory tab
    Then 1st inventory warehouse should contain "Primary"
    Then 1st inventory pend to deliver quantity should equal to '0'
    Then 1st inventory available quantity should equal to origin quantity

    Given I am on Orders Page
    When I select export dropdown option included 'Create Order' of export dropdown
    Then I should be redirected to Orders Create Page
    When I click on select customer button
    When I input email to search customer field
    And I click on 1st row of customer checkbox
    And I click on ok save button
    Then I should see phone number field
    And I fill phone to phone number field
    Then I should see save phone number checkbox
    And I click on save phone number checkbox
    Then I should see next button
    And I click on 1st next button
    Then I should see select product button
    When I click on select product button
    Then I should see select popover
    And I input "19th Product for Checkout" to search product field
    Then 1st row of select product should contain '19th Product for Checkout'
    And I click on 1st row of select product
    And I click on ok save button
    And I select variation dropdown option included "Blue" of variation dropdown
    Then I should see product next button
    And I click on product next button
    Then I should see shipping destination dropdown
    And I select shipping destination dropdown option included "Taiwan" of shipping destination dropdown
    Then I wait for 3 seconds for loading
    And I select delivery method dropdown option included "Custom Delivery" of delivery method dropdown
    Then I wait for 3 seconds for loading
    And I click on same as customer info checkbox
    And I click on delivery next button
    Then I should see payment method dropdown
    When I select payment method dropdown option included "Custom" of payment method dropdown
    Then I wait for 3 seconds for loading
    And I click on create order button
    Then I should be redirected to Orders Show Page
    Then 1st row of activity log list should contain "Created order from admin"
    Then I mark the value of order no as variable order number

    Given I am on One Product Index Page
    When I input '19th Product for Checkout' to search field
    Then product name included '19th Product for Checkout' and same order of pend to deliver quantity should also equal to '1'
    Then product name included '19th Product for Checkout' and same order of available quantity should also contain checkout order quantity
    Then I click manage button for the same order of product list included '19th Product for Checkout'

    Then I should be redirected to One Product Manage Page
    Then 1st sales channel should contain shop name
    Then sales channel available quantity should contain checkout order quantity
    And I click on inventory tab
    Then 1st inventory warehouse should contain "Primary"
    Then 1st inventory pend to deliver quantity should equal to '1'
    Then 1st inventory available quantity should contain checkout order quantity

    And ---ROLL BACK---
    Given I am on Orders Page
    Then 1st row of order links should contain order number
    Then row of delivery status should contain "Unfulfilled"
    When I click on 1st row of order links
    Then I should be redirected to Orders Show Page
    And I select Cancelled of order status dropdown
    And I click on send notification checkbox
    And I click on YES button
    Then order status should equal to "Cancelled"

  @EAT-963 @EAT-963-3
  Scenario: Create manual order ckeck product quantity on One (2 layer limited)
    Given I am on Product Index Page
    When I input "10th Product for Checkout" to search field
    Then 1st row of product list should contain "10th Product for Checkout"
    Then I mark the value of row of quantity list as variable origin quantity
    And I click on 1st row of edit button

    Then I should be redirected to Product Edit Page
    And I click on variations tab
    Then I mark the value of 2nd row of variation quantity field as variable variation origin quantity

    Given I am on One Product Index Page
    When I input '10th Product for Checkout' to search field
    Then product list included '10th Product for Checkout' and same order of variants quantity should also contain "4"
    Then product list included '10th Product for Checkout' and same order of pend to deliver quantity should also equal to "0"
    Then product list included '10th Product for Checkout' and same order of available quantity should also contain origin quantity
    Then I click manage button for the same order of product list included '10th Product for Checkout'
    Then I should be redirected to One Product Manage Page
    Then variant included 'Blue, S' and same order of sales channel should also contain shop name
    Then variant included 'Blue, M' and same order of sales channel available quantity should also contain variation origin quantity

    And I click on inventory tab
    Then inventory row of variant dropdown included 'Blue, S' and same order of primary inventory pend to deliver quantity should also equal to '0'
    Then inventory row of variant dropdown included 'Blue, M' and same order of primary inventory stock quantity should also contain variation origin quantity

    Given I am on Orders Page
    When I select export dropdown option included 'Create Order' of export dropdown
    Then I should be redirected to Orders Create Page
    When I click on select customer button
    When I input email to search customer field
    And I click on 1st row of customer checkbox
    And I click on ok save button
    Then I should see phone number field
    And I fill phone to phone number field
    Then I should see save phone number checkbox
    And I click on save phone number checkbox
    Then I should see next button
    And I click on 1st next button
    Then I should see select product button
    When I click on select product button
    Then I should see select popover
    And I input "10th Product for Checkout" to search product field
    Then 1st row of select product should contain '10th Product for Checkout'
    And I click on 1st row of select product
    And I click on ok save button
    And I select variation dropdown option included "Blue" of variation dropdown
    And I wait for 5 seconds for connecting
    And I select variation dropdown option included 'M' of 2nd variation dropdown
    Then I should see product next button
    And I click on product next button
    Then I should see shipping destination dropdown
    And I select shipping destination dropdown option included "Taiwan" of shipping destination dropdown
    Then I wait for 5 seconds for loading
    And I select delivery method dropdown option included "Custom Delivery" of delivery method dropdown
    Then I wait for 5 seconds for loading
    And I click on same as customer info checkbox
    And I click on delivery next button
    Then I should see payment method dropdown
    When I select payment method dropdown option included "Custom" of payment method dropdown
    Then I wait for 5 seconds for loading
    And I click on create order button
    Then I should be redirected to Orders Show Page
    Then 1st row of activity log list should contain "Created order from admin"
    Then I mark the value of order no as variable order number

    Given I am on One Product Index Page
    When I input '10th Product for Checkout' to search field
    Then product name included '10th Product for Checkout' and same order of pend to deliver quantity should also equal to '1'
    Then product name included '10th Product for Checkout' and same order of available quantity should also contain checkout order quantity
    Then I click manage button for the same order of product list included '10th Product for Checkout'

    Then I should be redirected to One Product Manage Page
    Then variant included 'Blue, S' and same order of sales channel should also contain shop name
    Then variant included 'Blue, M' and same order of sales channel available quantity should also contain vatiation checkout order quantity
    And I click on inventory tab
    Then inventory row of variant dropdown included 'Blue, S' and same order of primary inventory pend to deliver quantity should also equal to '0'
    Then inventory row of variant dropdown included 'Blue, M' and same order of primary inventory pend to deliver quantity should also equal to '1'
    Then inventory row of variant dropdown included 'Blue, M' and same order of primary inventory available quantity should also contain vatiation checkout order quantity
    Then inventory row of variant dropdown included 'Red, S' and same order of primary inventory pend to deliver quantity should also equal to '0'
    Then inventory row of variant dropdown included 'Red, M' and same order of primary inventory pend to deliver quantity should also equal to '0'

    And ---ROLL BACK---
    Given I am on Orders Page
    Then 1st row of order links should contain order number
    Then row of delivery status should contain "Unfulfilled"
    When I click on 1st row of order links
    Then I should be redirected to Orders Show Page
    And I select Cancelled of order status dropdown
    And I click on send notification checkbox
    And I click on YES button
    Then order status should equal to "Cancelled"