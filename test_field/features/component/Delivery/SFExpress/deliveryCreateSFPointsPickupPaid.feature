@BaseCase @Admin @Storefront @Delivery @SFExpress @deliveryCreateSFPointsPickupPaid @baseLocation-HK @superAdmin @fixture-shop @fixture-product @fixture-payment @fixture-promotion @fixture-delivery
Feature: SF with integration Delivery Create and checkout price below sf fee (check zh-hant wording
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

  @EAT-1168 @EAT-1168-2
  Scenario: Shop Cart Delivery - SF with integration
    Given I am on Delivery Create Page
    And I open new tab and redirect to zh-hant url
    When I select delivery type dropdown option included '自取' of delivery type dropdown
    Then shipping from edit button should contain '香港'
    Then shipping to edit button should contain '香港'
    When I click on search provider button
    Then I should see popover
    And I click on popover row of provider included "順豐速運 (串接)"
    And I click on popover ok button
    And I select services dropdown option included "順豐服務點取件" of services dropdown
    And I select pick-up points dropdown option included '7-11便利店取件' of pick-up points dropdown
    And I fill sf merchant id to sf merchant id field
    And I fill sender name to sf company name field
    And I fill the Merchant Name to hk sender name field
    And I fill sender phone to hk sender phone field
    And I fill sender address to hk sender address field
    When I select surcharge dropdown option included '按全單金額歸屬支付方' of surcharge dropdown
    Then I should see sf fee field
    And I fill '$51.11' to sf fee field
    Then sf fee description should contain '當全單金額小於'
    Then sf fee description should contain '，收方支付運費；全單大於等於 $51.11 時，由寄方支付運費。'
    When I click on language tab included '繁體中文'
    And I fill '(dirty data)7-11便利店取件' to name field
    And description field should contain '全單滿 $51.11 即享免運，未達免運門檻會於商品到貨時向您收取運費。'
    When I click on language tab included '英文'
    And I fill '(dirty data)S.F. Express - 7-11 Store Pickup' to name field
    And description field should contain 'Free shipping is available for orders over $51.11. If the threshold is not met, you will be charged for shipping when the goods arrive.'
    And shipping zone area should contain '只適用於香港'
    And I click on delivery execution toggle
    Then I should see add button
    When I click on add button
    Then I should see confirm adding button
    When I click on confirm adding button
    Then I should be on Delivery Options Page
    And 1st row of delivery options list should contain '(dirty data)7-11便利店取件'

    Given I am on Promotion Index Page
    When I input "1st Promotion" to search field
    Then I should see apply filter label
    Then I should see row of select checkbox list
    Then 1st row of promotion list should contain "1st Promotion"
    And I click on 1st row of select checkbox list
    And I select publish of bulk actions dropdown
    Then I should see alert
    And I select promotion option of edit dropdown 
    Then I should be redirected to Promotion Create Page
    Then I click on countinue to button
    Then I click on 2nd countinue to button
    Then I click on 3rd countinue to button
    Then 1st delivery options checkbox should contain 'S.F. Express - 7-11 Store Pickup'
    And I click on 1st delivery options checkbox
    Then I click on preview button
    And I click on confirm button
    Then I should be redirected to Promotion Index Page

    Given I am on Free Shipping Index Page
    When I input "2nd Free Shipping" to search field
    Then I should see apply filter label
    Then I should see row of select checkbox list
    Then 1st row of free shipping list should contain "2nd Free Shipping"
    And I click on 1st row of select checkbox list
    And I select publish of bulk actions dropdown
    Then I should see alert
    When I click row of edit button for the same order of row of promotion name included '2nd Free Shipping'
    Then I should be redirected to Free Shipping Create Page
    Then I click on countinue to button
    Then I click on 2nd countinue to button
    Then I click on 3rd countinue to button
    Then 1st delivery options checkbox should contain 'S.F. Express - 7-11 Store Pickup'
    And I click on 1st delivery options checkbox
    Then I click on preview button
    And I click on confirm button
    Then I should be redirected to Free Shipping Index Page

    Given I am on Shop Product Index Page
    When I input "3rd Product for Checkout" to search field
    Then I should see product of products list
    Then 1st product of products list should contain "3rd Product for Checkout"
    When I click on 1st product of products list
    Then I should be redirected to Shop Product Show Page
    And I fill '4' to product quantity field
    And I fill '1' to addon quantity field    
    When I click on buy together button
    Then I should see cart panel
    When I click on checkout button
    Then I should be redirected to Shop Cart Page
    When I click on login button
    Then I should be redirected to Shop Login Page
    And I fill email to email field
    And I fill password to password field
    And I click on submit button
    Then I should be redirected to Shop Cart Page
    Then I select language dropdown option included '繁' of language dropdown
    And I should see 2 row of cart item
    And I select country dropdown option included '香港' of country list dropdown
    And I wait for 5 seconds for loading
    And I scroll down to delivery method dropdown
    And I select delivery dropdown option included '7-11便利店取件' of delivery method dropdown
    And I wait for 5 seconds for loading
    And I should see SF delivery fee message
    And SF delivery fee message should contain '全單滿 $51.11 即享免運，未達免運門檻會於商品到貨時向您收取運費。'
    And I select payment dropdown option included 'Bank Transfer' of payment method dropdown
    And I wait for 5 seconds for loading
    And I select sf district dropdown option included '香港仔' of sf district dropdown
    And I wait for 5 seconds for loading
    And I select sf location dropdown option included '第S24A舖' of sf location dropdown
    And I wait for 5 seconds for loading
    And applied promotion should contain '2nd Free Shipping'
    And delivery fee should contain 'HK$0'
    And order summary should not contain '運費於到貨時向您收取'
    When I click on decrease button
    And I wait for 5 seconds for loading
    And item quantity field should contain '3'
    And I should see you will be charged for shipping message
    And you will be charged for shipping message should contain '運費於到貨時向您收取'
    And order summary should not contain '運費:'
    When I click on proceed to checkout button
    Then I should be redirected to Shop Checkout Page
    And delivery detail should contain '運費於到貨時向您收取'
    When I click on order total
    And I should see you will be charged for shipping message
    And you will be charged for shipping message should contain '運費於到貨時向您收取'
    And order summary should not contain '運費:'
    And I fill name to name field
    And I fill phone to contact number field
    And I click on save number checkbox
    And I click on same as checkbox
    And I click on agree terms checkbox
    When I click on place order button
    Then I should be redirected to Shop Order Confirm Page
    Then 1st row of delivery detail should contain name
    Then 3nd row of delivery detail should contain '7-11便利店取件'
    When I click on summary collapse
    And you will be charged for shipping message should contain '運費於到貨時向您收取'
    And order summary should not contain '運費:'
    Then I mark the value of order confirm info as variable order info

    When I click on member center button
    Then I should be redirected to Shop User Profile Page
    When I click on member center tab included '訂單'
    Then I should be redirected to Shop Orders Page
    And I click row of order links for the same order of row of order included order number
    Then I should be redirected to Shop Orders Show Page
    And you will be charged for shipping message should contain '運費於到貨時向您收取'
    And order summary should not contain '運費:'

    And ---ROLL BACK---
    Given I am on Shop Cart Page
    Then I select language dropdown option included 'English' of language dropdown
    
    Given I am on Delivery Options Page
    When I click delete button of delivery method list for the same order of row of delivery options list included 'dirty data'
    And I should see delete confirmation popover
    And I click on delete checkbox
    And I click on confirm delete button
    Then table should not contain '(dirty data)7-11便利店取件'

    Given I am on Free Shipping Index Page
    When I input "2nd Free Shipping" to search field
    Then I should see apply filter label
    Then I should see 1 row of free shipping list
    Then 1st row of free shipping list should contain "2nd Free Shipping"
    And I click on 1st row of select checkbox list
    And I select unpublish of bulk actions dropdown

    Given I am on Addon Index Page
    When I click on 1st select checkbox of addon list
    When I select delete of bulk actions dropdown
    And I should see confirmation popover
    And I click on delete checkbox
    And I click on confirm delete button
    Then I should not see confirmation popover

    Given I am on Promotion Index Page
    When I input "1st Promotion" to search field
    Then I should see apply filter label
    Then I should see row of select checkbox list
    Then 1st row of promotion list should contain "1st Promotion"
    And I click on 1st row of select checkbox list
    And I select unpublish of bulk actions dropdown
    Then I should see alert  