@BaseCase @Admin @Storefront @Delivery @DeliveryTime @checkTCatSpecifiedDateToggleRelatedErrors @fixture-product @fixture-shop @fixture-payment @fixture-delivery @premiumFeature
Feature: create delivery setting specified date / excluded date check error message and checkout
  As a Shopline
  I can't setting incorrect excluded date check error messages
   and block store-front checkout

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

  @EAT-1202 @EAT-1202-1
  Scenario: create delivery setting specified date / excluded date check error message and checkout
    Given I am on Delivery Create Page
    When I select delivery type dropdown option included 'Delivery' of delivery type dropdown
    Then shipping from edit button should contain 'Taiwan'
    Then shipping to edit button should contain 'Taiwan'
    When I click on search provider button
    Then I should see popover
    And I click on popover row of provider included "Tcat - Room Temp."
    And I click on popover ok button
    And I fill contract code to contract code field
    And I fill sender name to sender name field
    And I fill sender phone to sender phone field
    And I fill sender address to sender address field

    And I fill "(dirty data) DeliverySpecifiedDateAllDisable" to name field
    And I click on specified date toggle
    Then I scroll down to specified date toggle
    Then I should see lead time field
    When I fill '99' to lead time field
    And I click on specified date required checkbox
    And I fill the description to description field
    And I select delivery fee type dropdown option included 'Flat Price' of delivery fee type dropdown
    And I fill Delivery Fee to delivery fee field

    And I click on add button
    Then 1st field error message should contain "Lead Time must be less than 31"
    Then 2nd field error message should contain "Selectable day length (from lead time) is required"
    When I fill '30' to lead time field
    And I fill '10' to selectable day field
    When I click on add button
    Then I should see confirm adding button
    And I click on confirm adding button
    Then alert should not be present
    Then I should be redirected to Delivery Options Page
    Then 1st row of delivery options list should contain "(dirty data) DeliverySpecifiedDateAllDisable"

    Given I am on Shop Product Index Page
    When I input "1st Product for Checkout" to search field
    Then 1st product of products list should contain '1st Product for Checkout'
    When I click on 1st product of products list
    Then I should be redirected to Shop Product Show Page
    And I click on add to cart button
    Then I should see cart panel
    When I click on checkout button
    Then I should be redirected to Shop Cart Page
    And I select country dropdown option included "Taiwan" of country list dropdown
    And I wait for 3 seconds for loading
    And I select delivery dropdown option included "(dirty data) DeliverySpecifiedDateAllDisable" of delivery method dropdown
    And I wait for 3 seconds for loading
    And I select payment dropdown option included "Bank Transfer" of payment method dropdown
    And I wait for 3 seconds for loading
    And I click on proceed to checkout button
    Then I should be redirected to Shop Checkout Page
    And I click on arrival date button
    Then I should see calendar table
    Then I should not see this month enabled date picker
    When I fill name to name field
    And I fill email to email address field
    And I fill phone to contact number field
    And I select delivery address dropdown option included "Taipei City" of 1st delivery address dropdown
    And I select delivery address dropdown option included "100 Zhongzheng District" of 2nd delivery address
    And I fill address to delivery address field
    And I click on same as checkbox
    And I click on accept marketing checkbox
    And I click on place order button
    Then required field error should equal to "Arrival Date is required"
    And ---ROLL BACK---
    Given I am on Delivery Options Page
    Then I click delete button of delivery method list for the same order of row of delivery options list included 'dirty data'
    And I should see delete confirmation popover
    And I click on delete checkbox
    And I click on confirm delete button
    Then table should not contain "(dirty data) DeliverySpecifiedDateAllDisable"