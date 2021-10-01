@BaseCase @Admin @Storefront @Delivery @DeliveryTime @deliveryTimeToggleSyncCheckoutErrorMessage-Selectable @fixture-product @fixture-shop @fixture-payment @fixture-delivery
Feature: delivery setting specified date sync with dispaly error message in checkout page 
  As a Shopline
  I can setting excluded date and block store-front checkout

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

  @EAT-1202 @EAT-1202-3
  Scenario: delivery setting specified date sync with dispaly error message in checkout page 
    Given I am on Delivery Create Page
    When I select delivery type dropdown option included 'Custom' of delivery type dropdown
    And I fill "(dirty data) DeliverySpecifiedDate" to name field
    And I click on specified date toggle
    Then I scroll down to specified date toggle
    Then I should see selectable day field
    When I fill '2' to selectable day field
    And I click on specified date required checkbox

    And I select delivery fee type dropdown option included 'Flat Price' of delivery fee type dropdown
    And I click on select shipping countries link
    Then I should see shipping zone settings popup
    When I click on applicable shipping countries taiwan
    And I click on right angle bracket button
    And I click on ok button
    And I fill Delivery Fee to delivery fee field
    And I click on add button
    Then I should see confirm adding button
    And I click on confirm adding button
    Then I should be redirected to Delivery Options Page

    When I switch to 2 of tabs
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
    And I select delivery dropdown option included "(dirty data) DeliverySpecifiedDate" of delivery method dropdown
    And I wait for 3 seconds for loading
    And I select payment dropdown option included "Bank Transfer" of payment method dropdown
    And I wait for 3 seconds for loading
    And I click on proceed to checkout button
    Then I should be redirected to Shop Checkout Page
    When I fill name to name field
    And I fill phone to contact number field
    And I fill email to email address field
    And I click on same as checkbox
    And I select delivery address dropdown option included "Taipei City" of 1st delivery address dropdown
    And I select delivery address dropdown option included "100 Zhongzheng District" of 2nd delivery address dropdown
    And I fill address to delivery address field
    And I click on agree terms checkbox
    And I click on arrival date button
    Then I should see calendar table
    And I click on 2nd this month enabled date picker

    When I switch to 1 of tabs
    Then I should be redirected to Delivery Options Page
    Then I click on 1st edit button of delivery method list

    Then I should be redirected to Delivery Edit Page
    When I fill '1' to selectable day field
    And I click on update button
    Then I should be redirected to Delivery Options Page

    When I switch to 2 of tabs
    Then I should be redirected to Shop Checkout Page
    And I click on place order button
    Then error alert should contain "The selected delivery time is not available. Please refresh the page and choose another arrival dates and time slots before place the order again."
    And ---ROLL BACK---
    Given I am on Delivery Options Page
    Then I click delete button of delivery method list for the same order of row of delivery options list included 'dirty data'
    And I should see delete confirmation popover
    And I click on delete checkbox
    And I click on confirm delete button
    Then table should not contain "(dirty data) DeliverySpecifiedDate"