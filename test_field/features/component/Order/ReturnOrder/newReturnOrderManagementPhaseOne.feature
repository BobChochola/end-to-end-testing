@BaseCase @Admin @Storefront @Delivery @Order @ReturnOrder @newReturnOrderManagementPhaseOne
@fixture-delivery @fixture-payment @fixture-product @fixture-shop
Feature: Check New Return Order Management Phase1. And I can't see return button instead of delivery status is arrived or collected
  As a merchant
  I want custom return delivery options and I can return all product or part of product

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

    Given I am on Return Delivery Create Page
    When I select delivery type dropdown option included 'Custom' of delivery type dropdown
    And I fill the Merchant Name to merchant name field
    When I fill '(dirty data) Custom Return' to name field
    And I click on add button
    And I click on confirm adding button
    Then I should be redirected to Delivery Options Page
    When I click on tab included 'Return Delivery Options'
    Then 1st row of return delivery options list should contain "Custom Return"

    Given I am on Shop Product Index Page
    When I input "1st Product for Checkout" to search field
    Then 1st product of products list should contain '1st Product for Checkout'
    When I click on 1st product of products list
    Then I should be redirected to Shop Product Show Page
    And I click on add to cart button
    Given I am on Shop Product Index Page
    When I input "2nd Product for Checkout" to search field
    Then 1st product of products list should contain '2nd Product for Checkout'
    When I click on 1st product of products list
    Then I should be redirected to Shop Product Show Page
    And I click on add to cart button
    Then I should see cart panel
    When I click on checkout button
    Then I should be redirected to Shop Cart Page
    And I select country dropdown option included "Taiwan" of country list dropdown
    And I wait for 5 seconds for loading
    And I select delivery dropdown option included "Custom Delivery" of delivery method dropdown
    And I wait for 5 seconds for loading
    And I select payment dropdown option included "Bank" of payment method dropdown
    And I wait for 5 seconds for loading
    And I click on proceed to checkout button
    Then I should be redirected to Shop Checkout Page
    And I fill name to name field
    And I fill email to email address field
    And I fill phone to contact number field
    And I click on same as checkbox
    And I click on agree terms checkbox
    And I click on accept marketing checkbox
    And I click on place order button
    Then I should be redirected to Shop Order Confirm Page
    Then I mark the value of order confirm info as variable order info

  @EAT-819 @EAT-819-1 @EAT-1260 @EAT-1260-2
  Scenario: Custom Return part of product by custom Return(delivery status is arrived). And search by order number.
    Given I am on Orders Page
    Then 1st row of order links should contain order number
    When I click on 1st row of order links
    Then I should be redirected to Orders Show Page
    Then 1st row of product detail should contain '1st Product for Checkout'
    Then 2nd row of product detail should contain '2nd Product for Checkout'
    And product details should not contain 'Return Oreder'
    When I select update order delivery status option included 'Shipping' of update order delivery status dropdown
    Then I click on confirm button
    And product details should not contain 'Return Oreder'
    When I select update order delivery status option included 'Shipped' of update order delivery status dropdown
    Then I click on confirm button
    And product details should not contain 'Return Oreder'
    When I select update order delivery status option included 'Returned' of update order delivery status dropdown
    Then I click on confirm button
    And product details should not contain 'Return Oreder'
    When I select update order delivery status option included 'Returning' of update order delivery status dropdown
    Then I click on confirm button
    And product details should not contain 'Return Oreder'
    When I select update order delivery status option included 'Arrived' of update order delivery status dropdown
    Then I click on confirm button
    Then I should see view return button
    Then I click on view return button

    Then I should be redirected to Place Return Order Page
    Then 1st row of product list should contain '1st Product for Checkout'
    Then 2nd row of product list should contain '2nd Product for Checkout'
    When I click on 1st row of product checkbox
    Then I should see quantity field
    When I click on return delivery dropdown
    Then I should see return delivery dropdown option
    And I select return delivery dropdown option included 'Custom Return' of return delivery dropdown
    Then recipient name field should contain name
    Then recipient phone field should contain phone
    And I select delivery address dropdown option included "Taipei City" of 1st delivery address dropdown
    And I select delivery address dropdown option included "100 Zhongzheng District" of 2nd delivery address dropdown
    And I fill 'qwerty' to address field
    And I select return payment dropdown option included 'Custom' of return payment dropdown
    And I click on place return button
    Then I should see popover
    And I click on OK button
    Then I should be redirected to Return Orders Show Page
    Then product details should contain '1st Product for Checkout'
    Then return type should contain 'Custom Return'
    Then return name should contain name
    Then return phone should contain phone
    Then return address should contain 'Taiwan'
    Then return address should contain 'Taipei City'
    Then return address should contain '100Taipei City Zhongzheng District'
    When I click on delivery details edit button
    Then I should see return name field
    Then I should see return phone field
    Then I should see return address field
    Then I should see return address dropdown
    Then I should see return city field
    Then I fill 'name' to return name field
    When I click on delivery details save button
    Then I should see popover
    Then I click on yes button
    Then I should see alert
    Then return name should contain 'name'
    When I click on update tracking button
    Then I should see popover
    Then I fill '12345678' to tracking number field
    Then I fill 'courier' to courier name field
    When I click on ok button
    Then courier name should equal to 'courier'
    Then tracking number should equal to '12345678'
    And I mark the value of return no as variable return number

    Given I am on Return Orders Page
    When I input order number to search field
    Then 1st row of order links should contain return number
    Then I click on 1st row of order links
    Then I should be redirected to Return Orders Show Page
    Then parent order number should contain order number
    Then return no should equal to return number 

    And ---ROLL BACK---
    Given I am on Delivery Options Page
    And I click on tab included 'Return Delivery Options'
    When I click delete button of return delivery method list for the same order of row of return delivery options list included '(dirty data) Custom Return'
    Then I should see delete confirmation popover
    Then I click on delete checkbox
    When I click on confirm delete button
    Then 1st row of return delivery options list should not contain '(dirty data) Custom Return'

  @EAT-819 @EAT-819-2
  Scenario: Custom Return all product by custom Return(delivery status is collected). And search by return order number.
    Given I am on Orders Page
    Then 1st row of order links should contain order number
    When I click on 1st row of order links
    Then I should be redirected to Orders Show Page
    Then 1st row of product detail should contain '1st Product for Checkout'
    Then 2nd row of product detail should contain '2nd Product for Checkout'
    When I select update order delivery status option included 'Collected' of update order delivery status dropdown
    Then I click on confirm button
    Then I should see view return button
    Then I click on view return button
    Then I should be redirected to Place Return Order Page
    Then 1st row of product list should contain '1st Product for Checkout'
    Then 2nd row of product list should contain '2nd Product for Checkout'
    When I click on select all checkbox
    Then I should see quantity field
    And I select return delivery dropdown option included 'Custom Return' of return delivery dropdown
    Then recipient name field should contain name
    Then recipient phone field should contain phone
    And I select country dropdown option included "Taiwan" of country dropdown
    And I select delivery address dropdown option included "Taipei City" of 1st delivery address dropdown
    And I select delivery address dropdown option included "100 Zhongzheng District" of 2nd delivery address dropdown
    And I fill 'qwerty' to address field
    And I select return payment dropdown option included 'Custom' of return payment dropdown
    And I click on place return button
    Then I should see popover
    And I click on OK button
    Then I should be redirected to Return Orders Show Page
    Then 1st product details should contain '1st Product for Checkout'
    Then 2nd product details should contain '2nd Product for Checkout'
    Then return type should contain 'Custom Return'
    Then return name should contain name
    Then return phone should contain phone
    Then return address should contain 'Taiwan'
    Then return address should contain 'Taipei City'
    Then return address should contain '100Taipei City Zhongzheng District'
    When I click on delivery details edit button
    Then I should see return name field
    Then I should see return phone field
    Then I should see return address field
    Then I should see return address dropdown
    Then I should see return city field
    Then I fill 'name' to return name field
    When I click on delivery details save button
    Then I should see popover
    Then I click on yes button
    Then I should see alert
    Then return name should contain 'name'
    When I click on update tracking button
    Then I should see popover
    Then I fill '12345678' to tracking number field
    Then I fill 'courier' to courier name field
    When I click on ok button
    Then courier name should equal to 'courier'
    Then tracking number should equal to '12345678'
    And I mark the value of return no as variable return number

    Given I am on Return Orders Page
    Then 1st row of order links should contain return number
    Then I click on 1st row of order links
    Then I should be redirected to Return Orders Show Page
    Then parent order number should contain order number
    Then return no should equal to return number

    And ---ROLL BACK---
    Given I am on Delivery Options Page
    And I click on tab included 'Return Delivery Options'
    When I click delete button of return delivery method list for the same order of row of return delivery options list included '(dirty data) Custom Return'
    Then I should see delete confirmation popover
    Then I click on delete checkbox
    When I click on confirm delete button
    Then 1st row of return delivery options list should not contain '(dirty data) Custom Return'