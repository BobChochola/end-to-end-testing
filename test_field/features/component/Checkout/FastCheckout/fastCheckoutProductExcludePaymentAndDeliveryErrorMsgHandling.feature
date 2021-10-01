@BaseCase @Storefront @Admin @Checkout @FastCheckout @fastCheckoutProductExcludePaymentAndDeliveryErrorMsgHandling 
@fixture-shop @fixture-product @fixture-payment @fixture-delivery @fixture-paypal-spb-checkout @fixture-mini-fast-checkout @fixture-buynow-checkout @theme-ultra-chic @baseLocation-US
Feature: Fast checkout error handling - Mutiple Products Exclusive In Payment And Delivery
  As a guest
  I want to checkout 2 different products with exclusive setting of payment and delivery
  So that I should see "Your products come with different delivery or payment methods. Please choose other valid methods or place order accordingly."

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

    Given I am on Product Create Page
    When I pick product photo to product photo selector
    Then I should see delete photo button
    And I click on info tab
    And I fill "(dirty data)only local delivery and paypal" to english name field
    And I click on quantity and pricing tab
    And I fill "30" to regular price field
    And I click on unlimited quantity checkbox
    And I click on settings tab
    And I click on excluded delivery collapse
    Then I check row of excluded delivery list and click all of them
    And I click on row of excluded delivery list included 'Local Delivery'
    And I click on excluded payment collapse
    Then I check row of excluded payment list and click all of them
    And I click on row of excluded payment list included 'PayPal / Credit Card'
    And I scroll down to id
    And I click on add button
    Then I should be redirected to Product Edit Page

    Given I am on Product Create Page
    When I pick product photo to product photo selector
    Then I should see delete photo button
    And I click on info tab
    And I fill "(dirty data)only custom payment and delivery" to english name field
    And I click on quantity and pricing tab
    And I fill "30" to regular price field
    And I click on unlimited quantity checkbox
    And I click on settings tab
    And I click on excluded delivery collapse
    Then I check row of excluded delivery list and click all of them
    And I click on row of excluded delivery list included 'Custom Delivery'
    And I click on excluded payment collapse
    Then I check row of excluded payment list and click all of them
    And I click on row of excluded payment list included 'Custom'
    And I scroll down to id
    And I click on add button
    Then I should be redirected to Product Edit Page


  @EAT-1274 @EAT-1274-13
  Scenario: Fast checkout error handling - Mutiple Products Exclusive In Payment And Delivery
    Given I am on Shop Product Index Layout V Two Page
    When I hover over search icon
    When I input "(dirty data)only local delivery and paypal" to search field
    Then 1st product of products list should contain '(dirty data)only local delivery and paypal'
    When I click on 1st product of products list
    Then I should be redirected to Shop Product Show Layout V Two Page
    And I click on add to cart button

    Given I am on Shop Product Index Layout V Two Page
    When I hover over search icon
    When I input "(dirty data)only custom payment and delivery" to search field
    Then 1st product of products list should contain '(dirty data)only custom payment and deliver'
    When I click on 1st product of products list
    Then I should be redirected to Shop Product Show Layout V Two Page
    And I click on add to cart button
    And I hover over cart panel
    Then I should see cart panel
    And I click on checkout button
    Then I should be redirected to Shop Fast Checkout Page
    Then I should not see place order button
    # And error message should contain "Your products come with different delivery or payment methods. Please choose other valid methods or place order accordingly"

    And ---ROLL BACK---
    Given I am on Product Index Page
    And I input '(dirty data)' to search field
    When I click on select all button
    When I select delete selected of bulk actions dropdown
    And I should see delete confirmation popover
    And I click on delete checkbox
    And I click on confirm bulk button