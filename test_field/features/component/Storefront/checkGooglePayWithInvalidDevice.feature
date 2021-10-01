@BaseCase2 @Storefront @Payment @checkGooglePayWithInvalidDevice
@baseLocation-HK @fixture-googlepay
Feature: Check Google Pay info with invalid device
  Check Google Pay option and btn can show up at making payments
  with valid products, delivery options & settings

  @SL-3459 @SL-3459-2
  Scenario: Show correct info with valid products ,delivery options
    Given I am on Shop Product Index Page
    And I click on 1st product of products list
    Then I should be redirected to Shop Product Show Page
    And I click on add to cart button
    Then I should see cart panel
    When I click on checkout button
    Then I should be redirected to Shop Cart Page
    And I select payment dropdown option included "Google Pay" of payment method dropdown
    And I click on proceed to checkout button
    Then I should be redirected to Shop Checkout Page
    And I wait for 3 seconds for loading
    Then I Refresh
    Then error alert should contain "The device does not support Google Pay, please check the following"