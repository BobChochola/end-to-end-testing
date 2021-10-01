@BaseCase @Storefront @recaptchaOnCheckoutPagePlaceOrderButton-withLogin
@fixture-product @fixture-delivery @fixture-shop @fixture-payment @fixture-shop-recaptcha
Feature: shop_related_recaptcha on Checkout Page place order button(with login)

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

  @EAT-1194 @EAT-1194-2
  Scenario: shop_related_recaptcha on Checkout Page place order button and order comment - with login
    Given I am on Shop Login Page
    And I fill email to email field
    And I fill password to password field
    When I click on submit button
    Then I should be redirected to Shop Home Page
    When I select language dropdown option included 'English' of language dropdown
    And I wait for 3 seconds for loading
    Then language dropdown should contain 'English'

    Given I am on Customer Settings Page
    Then recaptcha toggle should not be checked
    And I click on recaptcha toggle
    When I click on update button
    And I wait for 5 seconds for loading

    Given I am on Shop Product Index Page
    When I input '18th Product for Checkout' to search field
    Then 1st product of products list should contain '18th Product for Checkout'
    When I click on 1st product of products list
    Then I should be redirected to Shop Product Show Page
    When I click on add to cart button
    Then I should see cart panel
    When I click on checkout button
    Then I should be redirected to Shop Cart Page
    And I select country dropdown option included "Taiwan" of country list dropdown
    And I wait for 5 seconds for loading
    And I select delivery dropdown option included "Custom Delivery" of delivery method dropdown
    And I wait for 5 seconds for loading
    And I select payment dropdown option included "Cash on Delivery" of payment method dropdown
    And I wait for 5 seconds for loading
    And I click on proceed to checkout button
    Then I should be redirected to Shop Checkout Page
    When I fill name to name field
    And I fill phone to contact number field
    And I click on save number checkbox
    And I click on same as checkbox
    And I click on agree terms checkbox
    When I click on place order button
    Then I should see recaptcha popover
    When I click on place order button
    Then I should be redirected to Shop Checkout Page
    Then I should see recaptcha popover

    When I open new tab and redirect to customer setting page
    Then I should be redirected to Customer Settings Page
    And I click on recaptcha toggle
    Then recaptcha toggle should not be checked
    When I click on update button
    And I wait for 5 seconds for loading

    When I switch to 1 of tabs
    Then I Refresh
    Then I should be redirected to Shop Checkout Page
    When I fill name to name field
    And I fill phone to contact number field
    And I click on save number checkbox
    And I click on same as checkbox
    And I click on agree terms checkbox
    When I click on place order button
    Then I should be redirected to Shop Order Confirm Page
    When I fill 'no recaptcha' to shop and customer comments field
    Then I click on send button
    Then message sender content should contain 'no recaptcha'

    When I switch to 2 of tabs
    Then I should be redirected to Customer Settings Page
    And I click on recaptcha toggle
    Then recaptcha toggle should be checked
    When I click on update button
    And I wait for 30 seconds for loading

    When I switch to 1 of tabs
    Then I Refresh
    Then I should be redirected to Shop Order Confirm Page
    When I fill 'recaptcha on' to shop and customer comments field
    When I click on send button with recaptcha
    Then I should see recaptcha popover
    And I click on close recaptcha area

    Given I am on Shop Home Page
    When I click on member center button
    Then I should be redirected to Shop User Profile Page
    When I click on member center tab included 'Orders'
    Then I should be redirected to Shop Orders Page
    When I click on row of order links
    Then I should be redirected to Shop Orders Show Page
    When I fill 'recaptcha on' to shop and customer comments field
    When I click on send button with recaptcha
    Then I should see recaptcha popover
    When I click on send button with recaptcha
    Then customer comments content should not contain 'recaptcha on'

    And ---ROLL BACK---
    Given I am on Customer Settings Page
    Then recaptcha toggle should be checked
    And I click on recaptcha toggle
    When I click on update button