@BaseCase @Admin @Storefront @Delivery @SFExpress @createSFIntegrationAndCheckoutPriceAboveSFFee @baseLocation-HK @superAdmin
@fixture-shop @fixture-product @fixture-payment @fixture-delivery
Feature: SF with integration Delivery Create and checkout price above sf fee

  As a merchant
  I want to create new SF with delivery
  So that I can have different delivery for my shoppers

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

    Given I am on Addon Create Page
    When I click on tab included "Product Level Settings"
    And I fill "3rd Product for Checkout" to search field
    And I click on search product button
     Then 1st product of popover list should contain "3rd Product for Checkout"
    And I should see checkbox of product list
    And I click on 1st checkbox of product list
    And I click on confirm button
    Then I scroll down to add button
    And I fill "10" to 1st row of addon price field
    And I click on tab included "Add-on Item Info"
    And I fill "(dirty data)Add-on Item" to english name field
    When I pick addon photo to addon photo selector
    Then I should see delete photo button
    And I fill "20" to addon quantity field
    And I click on add button
    Then I should see alert

  @EAT-1168 @EAT-1168-1
  Scenario: Shop Cart Delivery - SF with integration
    Given I am on Delivery Create Page
    When I select delivery type dropdown option included 'Delivery' of delivery type dropdown
    Then shipping from edit button should contain 'Hong Kong'
    Then shipping to edit button should contain 'Hong Kong'
    When I click on search provider button
    Then I should see popover
    And I click on popover row of provider included 'S.F. Express'
    And I click on popover ok button
    And I fill '(dirty data)S.F. Express - Office / Home Delivery' to name field
    And I fill sf merchant id to sf merchant id field
    And I fill sender name to sf company name field
    And I fill the Merchant Name to hk sender name field
    And I fill sender phone to hk sender phone field
    And I fill sender address to hk sender address field
    When I select surcharge dropdown option included 'Attributable to the payer according to the total order amount' of surcharge dropdown
    Then I should see sf fee field
    And I fill '29.8' to sf fee field
    Then sf fee description should contain 'When the total order amount is less than'
    Then sf fee description should contain 'the consignee pays the delivery fee. When the full order is greater than or equal to $29.8, the delivery fee will pay by the shipper.'
    And description field should contain 'Free shipping is available for orders over $29.8. If the threshold is not met, you will be charged for shipping when the goods arrive.'
    And shipping zone area should contain 'For Hong Kong only'
    And I click on delivery execution toggle
    Then I should see add button
    When I click on add button
    Then I should see confirm adding button
    When I click on confirm adding button
    Then I should be on Delivery Options Page
    And 1st row of delivery options list should contain 'S.F. Express - Office / Home Delivery'

    Given I am on Shop Product Index Page
    When I input "3rd Product for Checkout" to search field
    Then 1st product of products list should contain '3rd Product for Checkout'
    When I click on 1st product of products list
    Then I should be redirected to Shop Product Show Page
    When I click on add to cart button
    Then I should see cart panel
    When I click on checkout button
    Then I should be redirected to Shop Cart Page
    When I click on login button
    Then I should be redirected to Shop Login Page
    And I fill email to email field
    And I fill password to password field
    And I click on submit button
    Then I should be redirected to Shop Cart Page
    When I select language dropdown option included 'English' of language dropdown
    And I wait for 3 seconds for loading
    Then language dropdown should contain 'English'
    And I should see 1 row of cart item
    And I select country dropdown option included 'Hong Kong' of country list dropdown
    And I wait for 5 seconds for loading
    And I select delivery dropdown option included 'S.F. Express - Office / Home Delivery' of delivery method dropdown
    And I wait for 5 seconds for loading
    And I should see SF delivery fee message
    And SF delivery fee message should contain 'Free shipping is available for orders over $29.8. If the threshold is not met, you will be charged for shipping when the goods arrive.'
    And I select payment dropdown option included 'Bank Transfer' of payment method dropdown
    And I wait for 5 seconds for loading
    And I should see you will be charged for shipping message
    And you will be charged for shipping message should contain 'You will be charged for shipping when the goods arrive.'
    And order summary should not contain 'delivery fee'
    When I click on increase quantity button
    And I wait for 5 seconds for loading
    And item quantity field should contain '2'
    And delivery fee should contain 'HK$0'
    And order summary should not contain 'You will be charged for shipping when the goods arrive.'

    When I click on proceed to checkout button
    Then I should be redirected to Shop Checkout Page
    When I click on order total
    And cart summar delivery fee should contain 'HK$0'
    And order summary should not contain 'You will be charged for shipping when the goods arrive.'
    And I fill name to name field
    And I fill phone to contact number field
    And I click on save number checkbox
    And I click on same as checkbox
    And I select delivery address dropdown option included "Hong Kong Island" of 1st delivery address dropdown
    And I select delivery address dropdown option included "Central and Western" of 2nd delivery address dropdown
    And I select delivery address dropdown option included "The Peak" of 3rd delivery address dropdown
    And I fill address to delivery address field
    And I click on agree terms checkbox
    When I click on place order button
    Then I should be redirected to Shop Order Confirm Page
    Then 1st row of delivery detail should contain name
    Then 3nd row of delivery detail should contain 'S.F. Express - Office / Home Delivery'
    When I click on summary collapse
    And delivery fee should contain 'HK$0'
    And order summary should not contain 'You will be charged for shipping when the goods arrive.'
    Then I mark the value of order confirm info as variable order info

    When I click on member center button
    Then I should be redirected to Shop User Profile Page
    When I click on member center tab included 'Orders'
    Then I should be redirected to Shop Orders Page
    And I click row of order links for the same order of row of order included order number
    Then I should be redirected to Shop Orders Show Page
    And delivery fee should contain 'HK$0'
    And order summary should not contain 'You will be charged for shipping when the goods arrive.'

    And ---ROLL BACK---
    Given I am on Delivery Options Page
    When I click delete button of delivery method list for the same order of row of delivery options list included 'dirty data'
    And I should see delete confirmation popover
    And I click on delete checkbox
    And I click on confirm delete button
    Then table should not contain "(dirty data)S.F. Express - Office / Home Delivery"

    Given I am on Addon Index Page
    When I click on 1st select checkbox of addon list
    When I select delete of bulk actions dropdown
    And I should see confirmation popover
    And I click on delete checkbox
    And I click on confirm delete button
    And addon list should not contain 'Add-on Item Info'