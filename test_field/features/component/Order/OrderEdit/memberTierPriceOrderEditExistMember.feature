@BaseCase @Admin @Order @OrderEdit @Setting @Product @MemberTier @memberTierPriceOrderEditExistMember @EAT-977 @fixture-delivery @fixture-payment
Feature: member price tier product order edit(add/increase/decrease/delete) - logged in
  As a user of Shopline
  I want to edit order with member tier products
  So that order can be saved sucessfully (price should display member tier price)

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

    Given I am on Membership Tier Setting Page
    When I click on add button
    Then I should be redirected to Membership Tier New Page
    When I fill "(dirty data) member tier level 1" to membership tier name field
    And I select membership upgrade condition option included "Single purchase" of membership upgrade condition select button
    And I fill "0" to membership upgrade rules field
    And I fill "20" to member offer field
    And I click on submit button
    Then I should be redirected to Membership Tier Setting Page
    Then I should see row of membership list

    Given I am on Membership Tier Setting Page
    When I click on add button
    Then I should be redirected to Membership Tier New Page
    When I fill "(dirty data) member tier level 2" to membership tier name field
    And I select membership upgrade condition option included "Single purchase" of membership upgrade condition select button
    And I fill "20" to membership upgrade rules field
    And I fill "30" to member offer field
    And I click on submit button
    Then I should be redirected to Membership Tier Setting Page
    Then I should see row of membership list
    And I wait for 3 seconds for loading

    Given I am on Product Create Page
    When I pick product photo to product photo selector
    Then I should see delete photo button
    When I click on info tab
    And I fill "(dirty data) 1 layer product for member tier price" to english name field
    And I click on quantity and pricing tab
    Then I should see 2 member tier price field
    When I fill "100" to regular price field
    And I fill '80' to member price field
    And I fill '60' to 1st member tier price field
    And I fill '50' to 2nd member tier price field
    And I click on unlimited quantity checkbox
    And I click on variations tab
    When I click on variations toggle
    And I input "R" to add options field
    And I input "G" to add options field
    And I click on add button
    Then I should see alert
    Then I should be redirected to Product Edit Page

    Given I am on Product Create Page
    When I pick product photo to product photo selector
    Then I should see delete photo button
    When I click on info tab
    And I fill "(dirty data) 2 layer product for member tier price" to english name field
    And I click on variations tab
    When I click on variations toggle
    And I input "R" to add options field
    And I input "G" to add options field
    When I click on add variation button
    And I input "S" to 2nd add options field
    And I input "M" to 2nd add options field
    And I click on variations same price checkbox
    And I fill "50" to 1st row of variation price field
    And I fill "50" to 2nd row of variation price field
    And I fill "50" to 3rd row of variation price field
    And I fill "50" to 4th row of variation price field
    And I fill "30" to 1st row of variation member price field
    And I fill "30" to 2nd row of variation member price field
    And I fill "30" to 3rd row of variation member price field
    And I fill "30" to 4th row of variation member price field
    And I fill "10" to 1st row of 1st variation member tier price field
    And I fill "10" to 3rd row of 1st variation member tier price field
    And I fill "10" to 4th row of 1st variation member tier price field
    And I fill "5" to 2nd row of 2nd variation member tier price field
    When I fill '10' to 1st row of variation quantity field
    When I fill '10' to 2nd row of variation quantity field
    When I fill '10' to 3rd row of variation quantity field
    When I fill '10' to 4th row of variation quantity field
    Then I scroll down to breadcrumb
    And I click on add button
    Then I should see alert
    Then I should be redirected to Product Edit Page

    Given I am on Product Create Page
    When I pick product photo to product photo selector
    Then I should see delete photo button
    When I click on info tab
    And I fill "(dirty data) main product for member tier price" to english name field
    And I click on quantity and pricing tab
    Then I should see 2 member tier price field
    When I fill "100" to regular price field
    And I fill '80' to member price field
    And I fill '60' to 1st member tier price field
    And I fill '50' to 2nd member tier price field
    And I click on unlimited quantity checkbox
    And I click on add button
    Then I should see alert
    Then I should be redirected to Product Edit Page

    Given I am on Customer List Page
    When I input email to search field
    Then I should see apply filter label
    Then I should see row of select checkbox list
    When I click view button for the same order of customer row included 'testuser@shoplineapp.com'
    Then I should be redirected to Customer Detail Page
    When I scroll down to customer gender
    When I click on membership tier settings update button
    Then I should see membership tier dropdown
    When I select membership tier dropdown option included "member tier level 2" of membership tier dropdown
    And I should see popover
    And I click on popover confirm button
    Then membership tier settings label should contain "member tier level 2"

  @EAT-977-4
  Scenario: member price tier product order edit(add/increase/decrease/delete) - logged in
    Given I am on Orders Page
    When I select export dropdown option included 'Create Order' of export dropdown
    Then I should be redirected to Orders Create Page
    When I click on select customer button
    And I input email to search customer field
    And I click on 1st row of customer checkbox
    And I click on ok save button
    Then I should see phone number field
    And I fill phone to phone number field
    And I click on save phone number checkbox
    Then I click on next button
    And I click on select product button
    Then I should see select popover
    And I click on row of select product included 'main product for member tier price'
    And I click on row of select product included '2 layer product for member tier price'
    And I click on row of select product included '1 layer product for member tier price'
    And I click on ok save button
    Then I should see 3 row of product
    When I click on variation dropdown option included 'G'
    And I wait for 5 seconds for loading
    When I click on variation dropdown option included 'M'
    And I wait for 5 seconds for loading
    When I click on 2nd variation dropdown option included 'R'
    And I wait for 5 seconds for loading
    Then I should see product quantity field
    And I wait for 5 seconds for loading
    When I fill '2' to 1st product quantity field
    And I wait for 5 seconds for loading
    When I fill '2' to 2nd product quantity field
    Then row of product should contain 'NT$100'
    Then 2nd row of product should contain 'NT$60'
    Then 3rd row of product should contain 'NT$50'
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
    Then I should see add discount button
    And I click on create order button
    Then I should be redirected to Orders Show Page
    When I mark the value of order no as variable order number
    Then row of product detail should contain '2 x NT$50'
    Then 2nd row of product detail should contain '2 x NT$30'
    Then 3rd row of product detail should contain '1 x NT$50'
    When I click on product details edit button
    Then I should see product details edit reminder
    Then I click on reminder ok button
    When I click on add product button
    Then I should see product of product list
    When I click on product of product list included '2 layer product for member tier price'
    When I click on product of product list included '1 layer product for member tier price'
    When I click on product of product list included 'main product for member tier price'
    And I click on popup save button
    Then I click on color dropdown option included 'R'
    Then I click on color dropdown option included 'M'
    And I wait for 3 seconds for loading
    Then I click on 2nd color dropdown option included 'G'
    And I wait for 3 seconds for loading
    And I fill "1" to 2nd product quantity field
    And I fill "2" to 3rd product quantity field
    Then I should see 6 product quantity field
    When I click on delete product button
    And I should see delete product ok button
    And I click on delete product ok button
    Then I should see 5 product quantity field
    Then outstanding amount should contain ""
    And I click on product details save button
    Then I should see confirm popover
    And I click on YES button
    Then row of product detail should contain '1 x NT$30 = NT$30'
    Then 2nd row of product detail should contain '2 x NT$50 = NT$100'
    Then 3rd row of product detail should contain '1 x NT$5 = NT$5'
    Then 4th row of product detail should contain '1 x NT$50 = NT$50'
    Then 5th row of product detail should contain '1 x NT$50 = NT$50'

    Given I am on Customer List Page
    When I input email to search field
    Then I should see apply filter label
    Then I should see row of select checkbox list
    When I click view button for the same order of customer row included 'testuser@shoplineapp.com'
    Then I should be redirected to Customer Detail Page
    When I click on membership tier settings update button
    Then I should see membership tier dropdown
    When I select membership tier dropdown option included "Basic" of membership tier dropdown
    And I should see popover
    And I click on popover confirm button
    Then membership tier settings label should contain "Basic"

    Given I am on Orders Page
    When I have sample and click on 1st row of order links included order number
    Then I should be redirected to Orders Show Page
    When I click on product details edit button
    Then I should see product details edit reminder
    Then I click on reminder ok button
    When I click on add product button
    Then I should see product of product list
    When I click on product of product list included '2 layer product for member tier price'
    When I click on product of product list included '1 layer product for member tier price'
    When I click on product of product list included 'main product for member tier price'
    And I click on popup save button
    Then I click on color dropdown option included 'R'
    And I wait for 3 seconds for loading
    Then I click on 2nd color dropdown option included 'S'
    Then I click on 2nd color dropdown option included 'R'
    And I wait for 3 seconds for loading
    And I fill "1" to 2nd product quantity field
    And I fill "2" to 3rd product quantity field
    Then I should see 8 product quantity field
    When I click on delete product button
    And I should see delete product ok button
    And I click on delete product ok button
    Then I should see 7 product quantity field
    Then outstanding amount should contain ""
    And I click on product details save button
    Then I should see confirm popover
    And I click on YES button
    Then 1st row of product detail should contain '1 x NT$50 = NT$50'
    Then 2nd row of product detail should contain '2 x NT$5 = NT$10'
    Then 3rd row of product detail should contain '1 x NT$50 = NT$50'
    Then 4th row of product detail should contain '1 x NT$50 = NT$50'
    Then 5st row of product detail should contain '1 x NT$30 = NT$30'
    Then 6st row of product detail should contain '1 x NT$80 = NT$80'
    Then 7st row of product detail should contain '1 x NT$80 = NT$80'

    And ---ROLL BACK---
    Given I am on Product Index Page
    When I click on 1st row of product checkbox
    When I click on 2nd row of product checkbox
    When I click on 3rd row of product checkbox
    And I select delete selected of bulk actions dropdown
    Then I should see delete confirmation popover
    When I click on delete checkbox
    And I click on confirm bulk button
    Then product list should not contain '1 layer product for member tier price'
    Given I am on Membership Tier Setting Page
    Then I should see dropdown button
    When I select dropdown option included "Delete" of dropdown button
    And I should see confirmation popup window
    And I click on delete button
    And I Refresh
    Then I should see dropdown button
    When I select dropdown option included "Delete" of dropdown button
    And I should see confirmation popup window
    And I click on delete button
    Then membership table should contain "No membership tiers"