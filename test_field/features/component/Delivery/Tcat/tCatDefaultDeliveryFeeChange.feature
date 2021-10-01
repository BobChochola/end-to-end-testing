@BaseCase @Admin @Storefront @Delivery @Tcat @tCatDefaultDeliveryFeeChange @fixture-shop @fixture-product @fixture-payment @fixture-create-Tcat
Feature: Tcat default delivery fee change
  As a merchant
  I can see the default delivery fee of Tcat is NT$160 under refrigerated/frozen setting and NT$130 under room temp. setting

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

  @tCatDefaultDeliveryFeeChange-1
  Scenario: Tcat - Room Temp.
    Given I am on Delivery Options Page
    When I click on 6th publish button of delivery method list
    When I click on 6th edit button of delivery method list
    Then I should be redirected to Delivery Edit Page
    Then providers should contain "Tcat - Room Temp."
    Then delivery fee field should contain "130"
    Given I am on Delivery Options Page
    When I click on 5th publish button of delivery method list
    When I click on 5th edit button of delivery method list
    Then I should be redirected to Delivery Edit Page
    Then providers should contain "Tcat - Room Temp. (Collect on Delivery)"
    Then delivery fee field should contain "130"
    Given I am on Shop Product Index Page
    When I input "1st Product for Checkout" to search field
    Then 1st product of products list should contain "1st Product for Checkout"
    When I click on 1st product of products list
    Then I should be redirected to Shop Product Show Page
    And I click on add to cart button
    Then I should see cart panel
    When I click on checkout button
    Then I should be redirected to Shop Cart Page
    And I select country dropdown option included "Taiwan" of country list dropdown
    And I wait for 5 seconds for loading
    And I select delivery dropdown option included "黑貓-常溫" of delivery method dropdown
    And I wait for 5 seconds for loading
    Then delivery fee should contain "130"
    And I select delivery dropdown option included "黑貓-常溫（貨到付款）" of delivery method dropdown
    And I wait for 5 seconds for loading
    Then delivery fee should contain "130"

    And ---ROLL BACK---
    Given I am on Delivery Options Page
    When I click on 6th publish button of delivery method list
    And I click on 5th publish button of delivery method list
    Then 6th publish button of delivery method list should contain "Publish"
    Then 5th publish button of delivery method list should contain "Publish"

  @tCatDefaultDeliveryFeeChange-2
  Scenario: Tcat - Refrigerated
    Given I am on Delivery Options Page
    When I click on 4th publish button of delivery method list
    When I click on 4th edit button of delivery method list
    Then I should be redirected to Delivery Edit Page
    Then providers should contain "Tcat - Refrigerated"
    Then delivery fee field should contain "160"
    Given I am on Delivery Options Page
    When I click on 3rd publish button of delivery method list
    When I click on 3rd edit button of delivery method list
    Then I should be redirected to Delivery Edit Page
    Then providers should contain "Tcat - Refrigerated (Collect on Delivery)"
    Then delivery fee field should contain "160"
    Given I am on Shop Product Index Page
    When I input "1st Product for Checkout" to search field
    Then 1st product of products list should contain "1st Product for Checkout"
    When I click on 1st product of products list
    Then I should be redirected to Shop Product Show Page
    And I click on add to cart button
    Then I should see cart panel
    When I click on checkout button
    Then I should be redirected to Shop Cart Page
    And I select country dropdown option included "Taiwan" of country list dropdown
    And I wait for 5 seconds for loading
    And I select delivery dropdown option included "黑貓-冷藏" of delivery method dropdown
    And I wait for 5 seconds for loading
    Then delivery fee should contain "160"
    And I select delivery dropdown option included "黑貓-冷藏（貨到付款）" of delivery method dropdown
    And I wait for 5 seconds for loading
    Then delivery fee should contain "160"

    And ---ROLL BACK---
    Given I am on Delivery Options Page
    When I click on 4th publish button of delivery method list
    And I click on 3rd publish button of delivery method list
    Then 4th publish button of delivery method list should contain "Publish"
    Then 3rd publish button of delivery method list should contain "Publish"

  @tCatDefaultDeliveryFeeChange-3
  Scenario: Tcat - Frozen
    Given I am on Delivery Options Page
    When I click on 2nd publish button of delivery method list
    When I click on 2nd edit button of delivery method list
    Then I should be redirected to Delivery Edit Page
    Then providers should contain "Tcat - Frozen"
    Then delivery fee field should contain "160"
    Given I am on Delivery Options Page
    When I click on 1st publish button of delivery method list
    When I click on 1st edit button of delivery method list
    Then I should be redirected to Delivery Edit Page
    Then providers should contain "Tcat - Frozen (Collect on Delivery)"
    Then delivery fee field should contain "160"
    Given I am on Shop Product Index Page
    When I input "1st Product for Checkout" to search field
    Then 1st product of products list should contain "1st Product for Checkout"
    When I click on 1st product of products list
    Then I should be redirected to Shop Product Show Page
    And I click on add to cart button
    Then I should see cart panel
    When I click on checkout button
    Then I should be redirected to Shop Cart Page
    And I select country dropdown option included "Taiwan" of country list dropdown
    And I wait for 5 seconds for loading
    And I select delivery dropdown option included "黑貓-冷凍" of delivery method dropdown
    And I wait for 5 seconds for loading
    Then delivery fee should contain "160"
    And I select delivery dropdown option included "黑貓-冷凍（貨到付款）" of delivery method dropdown
    And I wait for 5 seconds for loading
    Then delivery fee should contain "160"

    And ---ROLL BACK---
    Given I am on Delivery Options Page
    When I click on 2nd publish button of delivery method list
    And I click on 1st publish button of delivery method list
    Then 2nd publish button of delivery method list should contain "Publish"
    Then 1st publish button of delivery method list should contain "Publish"