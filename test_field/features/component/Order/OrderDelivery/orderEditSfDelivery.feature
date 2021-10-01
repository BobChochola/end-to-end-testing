@BaseCase @Admin @Storefront @Order @OrderDelivery @orderEditSfDelivery
@fixture-product @fixture-payment @fixture-delivery @fixture-shop @baseLocation-HK
Feature: Order edit with delivery sf
  As a merchant
  I want to edit the order delivery
  So that I can edit Zeek2door to S.F. Express - 7-11 Store Pickup

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

  @C3850 @C3850-1
  Scenario: Zeek2door Order edit delivery detail
    Given I am on Shop Product Index Page
    And I input "2nd Product for Checkout" to search field
    Then 1st product of products list should contain '2nd Product for Checkout'
    And I click on 1st product of products list
    Then I should be redirected to Shop Product Show Page
    When I click on add to cart button
    Then I should see cart panel
    When I click on checkout button
    Then I should be redirected to Shop Cart Page
    And I select country dropdown option included "Hong Kong" of country list dropdown
    And I wait for 5 seconds for loading
    And I select delivery dropdown option included "Zeek2door (Same Day Home Delivery)" of delivery method dropdown
    And I wait for 5 seconds for loading
    And I select payment dropdown option included "Bank Transfer" of payment method dropdown
    And I wait for 5 seconds for loading
    And I click on proceed to checkout button
    Then I should be redirected to Shop Checkout Page
    When I fill name to name field
    And I fill email to email address field
    And I fill phone to contact number field
    And I click on same as checkbox
    And I scroll down to place order button
    And I select sf address region dropdown option included "Hong Kong" of sf address region dropdown
    And I wait for 5 seconds for loading
    And I select sf address district dropdown option included "Central District" of sf address district dropdown
    And I wait for 5 seconds for loading
    And I select sf address area dropdown option included "Central" of sf address area dropdown
    And I wait for 5 seconds for loading
    And I select delivery time dropdown option included "AM" of delivery time dropdown
    And I wait for 5 seconds for loading
    And I fill address to delivery address field
    And I click on agree terms checkbox
    And I click on accept marketing checkbox
    And I click on place order button
    Then I should be redirected to Shop Order Confirm Page
    Given I am on Orders Page
    When I click on 1st row of order links
    Then I should be redirected to Orders Show Page
    Then customer name should contain name
    Then customer email should contain email
    Then customer phone should contain phone
    Then delivery method should contain "Zeek2door (Same Day Home Delivery)"
    Then recipient name should contain name
    Then recipient phone should contain phone
    Then delivery form should contain recipient address
    Then delivery form should contain sf address area
    Then delivery form should contain "AM"
    When I Refresh
    Then I should see delivery form edit button
    When I click on delivery form edit button
    And I select delivery method dropdown option included "S.F. Express - 7-11 Store Pickup" of delivery method dropdown
    Then I should see edit delivery detail popover
    And I fill edited name to delivery detail recipient name field
    And I fill edited phone to delivery detail recipient phone field
    And I select sf express district dropdown option included "Mong Kok" of sf express district dropdown
    And I select sf express location dropdown option included "G/F., 81 Tung Choi Street, Mongkok,  KLN" of sf express location dropdown
    And I click on delivery change agree checkbox
    And I click on delivery detail save button
    Then I should see alert
    Then recipient name should contain edited name
    Then recipient phone should contain edited phone
    Then delivery form should contain "G/F., 81 Tung Choi Street, Mongkok, KLNSF"