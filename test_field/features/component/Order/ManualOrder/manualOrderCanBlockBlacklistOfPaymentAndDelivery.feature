@BaseCase @Admin @Order @ManualOrder @manualOrderCanBlockBlacklistOfPaymentAndDelivery @fixture-payment @fixture-delivery @fixture-product @EAT-588
Feature: Should also block blacklist of payment/delivery in backend
  As a merchant
  I want to add an order in backend
  If the payment/delivery method is not acceptable ,I will see error message

  Background:
    Given I am on Admin Login Page
    When I fill correct account email to email field
    And I fill correct account password to password field
    And I click on login button
    Then I should see successful login
    Then I check intercom message notification frame and click clear intercom message button
    Then I check intercom message notification frame and click intercom message close button
    When I check new feature alert notification frame and click new feature alert close button
    When I check and click exclude products panel close button
    When I check and click no thanks button

  @EAT-588-1
  Scenario: change the exclude payment of the product
    Given I am on Orders Page
    When I select export dropdown option included 'Create Order' of export dropdown
    Then I should be redirected to Orders Create Page
    When I click on select customer button
    Then I should see select popover
    When I input email to search customer field
    And I click on 1st row of customer checkbox
    And I click on ok save button
    And I fill phone to phone number field
    And I click on save phone number checkbox
    And I click on next button
    And I click on select product button
    Then I should see select popover
    When I input '15th Product for Checkout' to search product field
    Then 1st row of select product should contain '15th Product for Checkout'
    And I click on 1st row of select product
    And I click on ok save button
    Then row of product should contain '15th Product for Checkout'
    When I click on product next button
    Then I should see default null value
    When I select shipping destination dropdown option included 'Taiwan' of shipping destination dropdown
    And I wait for 3 seconds for loading
    And I select delivery method dropdown option included 'Custom Delivery' of delivery method dropdown
    And I click on same as customer info checkbox
    And I click on delivery next button
    Then I should see default null value
    When I select payment method dropdown option included 'Custom' of payment method dropdown

    When I switch to 2 of tabs
    Given I am on Product Index Page
    When I input '15th Product for Checkout' to search field
    Then 1st row of product list should contain '15th Product for Checkout'
    And I click on 1st row of edit button
    Then I should be redirected to Product Edit Page
    When I click on settings tab
    And I click on excluded payment collapse
    And I scroll down to excluded payment list
    And I click on row of excluded payment list included 'Custom'
    Then I should see strikethrough
    When I click on 2nd update button
    Then I should be redirected to Product Index Page
    Then I should see alert
    Then alert should contain 'Changes saved!'

    When I switch to 1 of tabs
    And I should be on Orders Create Page
    And I click on create order button
    And I wait for 3 seconds for loading
    Then I should see error message frame
    Then error message frame should contain error message

    When I select payment method dropdown option included 'Cash on Delivery' of payment method dropdown
    When I click on language dropdown
    And I click on 2nd language dropdown option
    When I switch to 2 of tabs
    And I should be on Product Index Page
    When I input '15th Product for Checkout' to search field
    Then 1st row of product list should contain '15th Product for Checkout'
    And I click on 1st row of edit button
    Then I should be redirected to Product Edit Page
    When I click on settings tab
    And I click on excluded payment collapse
    And I scroll down to excluded payment list
    And I click on row of excluded payment list included 'Cash on Delivery'
    Then I should see strikethrough
    When I click on 2nd update button
    Then I should be redirected to Product Index Page
    Then I should see alert
    Then alert should contain 'Changes saved!'

    When I switch to 1 of tabs
    And I should be on Orders Create Page
    And I click on create order button
    And I wait for 3 seconds for loading
    Then I should see error message frame
    Then error message frame should contain chinese error message
    Then ---ROLL BACK---
    When I click on language dropdown
    And I click on 1st language dropdown option
    When I switch to 2 of tabs
    Given I am on Product Index Page
    When I input '15th Product for Checkout' to search field
    Then 1st row of product list should contain '15th Product for Checkout'
    And I click on 1st row of edit button
    Then I should be redirected to Product Edit Page
    When I click on settings tab
    And I click on excluded payment collapse
    And I click on row of excluded payment list included 'Custom'
    And I click on row of excluded payment list included 'Cash on Delivery'
    Then I should not see strikethrough
    When I click on 2nd update button
    Then I should be redirected to Product Index Page

  @EAT-588-2
  Scenario: change the exclude delivery of the product
    Given I am on Orders Page
    When I select export dropdown option included 'Create Order' of export dropdown
    Then I should be redirected to Orders Create Page
    When I click on select customer button
    Then I should see select popover
    When I input email to search customer field
    And I click on 1st row of customer checkbox
    And I click on ok save button
    And I fill phone to phone number field
    And I click on save phone number checkbox
    And I click on next button
    And I click on select product button
    Then I should see select popover
    When I input '15th Product for Checkout' to search product field
    Then 1st row of select product should contain '15th Product for Checkout'
    And I click on 1st row of select product
    And I click on ok save button
    Then row of product should contain '15th Product for Checkout'
    When I click on product next button
    Then I should see default null value
    When I select shipping destination dropdown option included 'Taiwan' of shipping destination dropdown
    And I wait for 3 seconds for loading
    And I select delivery method dropdown option included 'Custom Delivery' of delivery method dropdown
    And I wait for 3 seconds for loading
    And I click on same as customer info checkbox
    And I click on delivery next button
    Then I should see default null value
    When I select payment method dropdown option included 'Custom' of payment method dropdown
    And I click on delivery detail

    When I switch to 2 of tabs
    Given I am on Product Index Page
    When I input '15th Product for Checkout' to search field
    Then 1st row of product list should contain '15th Product for Checkout'
    And I click on 1st row of edit button
    Then I should be redirected to Product Edit Page
    When I click on settings tab
    And I scroll down to excluded delivery collapse
    And I click on excluded delivery collapse
    And I click on row of excluded delivery list included 'Custom Delivery'
    Then I should see strikethrough
    When I click on 2nd update button
    Then I should be redirected to Product Index Page
    Then I should see alert
    Then alert should contain 'Changes saved!'

    When I switch to 1 of tabs
    And I should be on Orders Create Page
    And I click on create order button
    And I wait for 3 seconds for loading
    Then I should see error message frame
    Then error message frame should contain error message

    When I click on language dropdown
    And I click on 2nd language dropdown option
    And I click on delivery detail
    And I select delivery method dropdown option included 'Local Delivery' of delivery method dropdown
    And I wait for 3 seconds for loading
    And I select delivery address dropdown option included '台北市' of 1st delivery address dropdown
    And I select delivery address dropdown option included '105' of 2nd delivery address dropdown
    And I fill address to delivery address field
    When I switch to 2 of tabs
    And I should be on Product Index Page
    When I input '15th Product for Checkout' to search field
    Then 1st row of product list should contain '15th Product for Checkout'
    And I click on 1st row of edit button
    Then I should be redirected to Product Edit Page
    When I click on settings tab
    And I click on excluded delivery collapse
    And I scroll down to excluded payment list
    And I click on row of excluded delivery list included 'Local Delivery'
    Then I should see strikethrough
    When I click on 2nd update button
    Then I should be redirected to Product Index Page
    Then I should see alert
    Then alert should contain 'Changes saved!'

    When I switch to 1 of tabs
    And I should be on Orders Create Page
    And I click on create order button
    And I wait for 3 seconds for loading
    Then I should see error message frame
    Then error message frame should contain chinese error message
    Then ---ROLL BACK---
    When I click on language dropdown
    And I click on 1st language dropdown option
    When I switch to 2 of tabs
    Given I am on Product Index Page
    When I input '15th Product for Checkout' to search field
    Then 1st row of product list should contain '15th Product for Checkout'
    And I click on 1st row of edit button
    Then I should be redirected to Product Edit Page
    When I click on settings tab
    And I click on excluded delivery collapse
    And I click on row of excluded delivery list included 'Custom Delivery'
    And I click on row of excluded delivery list included 'Local Delivery'
    Then I should not see strikethrough
    When I click on 2nd update button
    Then I should be redirected to Product Index Page

  @EAT-588-3
  Scenario: Custom payment exclude custom delivery
    Given I am on Payment Setting Page
    When I click on add button
    Then I should be redirected to Payment Create Page
    When I select payment type dropdown option included 'Custom' of payment type dropdown
    When I click on language tab included 'Traditional Chinese'
    And I fill "(dirty data)test payment" to name field
    And I fill instruction to payment instructions field
    When I click on add button
    Then I should see confirm adding button
    And I click on confirm adding button
    Then I should be redirected to Payment Setting Page
    And 1st row of payment method list should contain "test payment"

    Given I am on Orders Page
    When I select export dropdown option included 'Create Order' of export dropdown
    Then I should be redirected to Orders Create Page
    When I click on select customer button
    Then I should see select popover
    When I input email to search customer field
    And I click on 1st row of customer checkbox
    And I click on ok save button
    And I fill phone to phone number field
    And I click on save phone number checkbox
    And I click on next button
    And I click on select product button
    Then I should see select popover
    When I input '15th Product for Checkout' to search product field
    Then 1st row of select product should contain '15th Product for Checkout'
    And I click on 1st row of select product
    And I click on ok save button
    Then row of product should contain '15th Product for Checkout'
    When I click on product next button
    And I wait for 3 seconds for loading
    Then I should see default null value
    When I select shipping destination dropdown option included 'Taiwan' of shipping destination dropdown
    And I wait for 3 seconds for loading
    And I select delivery method dropdown option included 'Custom Delivery' of delivery method dropdown
    And I wait for 3 seconds for loading
    And I click on same as customer info checkbox
    And I click on delivery next button
    Then I should see default null value
    When I select payment method dropdown option included 'test payment' of payment method dropdown

    When I switch to 2 of tabs
    Given I am on Payment Setting Page
    Then 1th row of payment method list should contain 'test payment'
    When I click on 1th edit button of payment method list 
    Then I should be redirected to Payment Edit Page
    When I fill 'test payment' to name field
    And I scroll down to excluded delivery options
    And I click on excluded delivery options included 'Custom Delivery'
    Then I should see strikethrough
    When I click on update button
    Then I should be redirected to Payment Setting Page

    When I switch to 1 of tabs
    And I should be on Orders Create Page
    And I click on create order button
    And I wait for 5 seconds for loading
    Then I should see error message frame
    Then error message frame should contain error message

    When I click on language dropdown
    And I click on 2nd language dropdown option
    And I click on delivery detail
    And I select delivery method dropdown option included 'Local Delivery' of delivery method dropdown
    And I wait for 3 seconds for loading
    And I select delivery address dropdown option included '台北市' of 1st delivery address dropdown
    And I select delivery address dropdown option included '105' of 2nd delivery address dropdown
    And I fill address to delivery address field
    And I click on delivery next button
    And I select payment method dropdown option included 'test payment' of payment method dropdown
    When I switch to 2 of tabs
    And I should be on Payment Setting Page
    Then 1st row of payment method list should contain 'test payment'
    When I click on 1st edit button of payment method list 
    Then I should be redirected to Payment Edit Page
    When I fill 'test payment' to name field
    And I scroll down to excluded delivery options
    And I click on excluded delivery options included 'Local Delivery'
    Then I should see strikethrough
    When I click on update button
    Then I should be redirected to Payment Setting Page

    When I switch to 1 of tabs
    And I should be on Orders Create Page
    And I click on create order button
    And I wait for 3 seconds for loading
    Then I should see error message frame
    Then error message frame should contain chinese error message
    Then ---ROLL BACK---
    When I click on language dropdown
    And I click on 1st language dropdown option
    When I switch to 2 of tabs
    Given I am on Payment Setting Page
    When I click on 1st delete button of payment method list
    And I should see delete confirmation popover
    And I click on delete checkbox
    And I click on confirm delete button
    Then 1st row of payment method list should not contain 'test payment'

  @EAT-588-4
  Scenario: Blacklist
    Given I am on Customer List Page
    When I mark the value of 1st row of user email as variable blacklist email
    And I click on view button
    Then I should be redirected to Customer Detail Page
    When I click on blacklist button
    Then I should see popover
    When I click on popover confirm button

    Given I am on Orders Page
    When I select export dropdown option included 'Create Order' of export dropdown
    Then I should be redirected to Orders Create Page
    When I click on select customer button
    Then I should see select popover
    When I input blacklist email to search customer field
    And I click on 1st row of customer checkbox
    And I click on ok save button
    And I fill phone to phone number field
    And I click on save phone number checkbox
    And I click on next button
    And I click on select product button
    Then I should see select popover
    When I input '15th Product for Checkout' to search product field
    Then 1st row of select product should contain '15th Product for Checkout'
    And I click on 1st row of select product
    And I click on ok save button
    Then row of product should contain '15th Product for Checkout'
    When I click on product next button
    Then I should see default null value
    When I select shipping destination dropdown option included 'Taiwan' of shipping destination dropdown
    And I wait for 3 seconds for loading
    And I select delivery method dropdown option included 'Custom Delivery' of delivery method dropdown
    And I wait for 3 seconds for loading
    And I click on same as customer info checkbox
    And I click on delivery next button
    Then I should see default null value
    When I select payment method dropdown option included 'Custom' of payment method dropdown
    And I click on create order button
    And I wait for 3 seconds for loading
    Then I should see error message frame
    Then error message frame should contain blacklist error message

    When I click on language dropdown
    And I click on 2nd language dropdown option
    When I click on delivery detail
    And I click on delivery next button
    And I click on create order button
    Then I should see error message frame
    Then error message frame should contain chinese blacklist error message
    Then ---ROLL BACK---
    When I click on language dropdown
    And I click on 1st language dropdown option
    Given I am on Customer List Page
    Then 1st row of user email should contain blacklist email
    When I click on view button
    Then I should be redirected to Customer Detail Page
    When I click on blacklist button
    Then I should see popover
    When I click on popover confirm button