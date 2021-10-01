@BaseCase @Admin @Storefront @FreeGift @Checkout @freeGiftCheckout-aimItem @fixture-payment @fixture-delivery @fixture-product @fixture-freegift @fixture-shop @fixture-promotion
Feature: Shop Checkout with two free gifts product
  As a merchant
  I want to create free gifts product and related promotion
  So that customers can buy my product along with free gift

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

    Given I am on Promotion Index Page
    When I input "6th Promotion" to search field
    Then 1st row of promotion list should contain "6th Promotion"
    And I should see apply filter label
    And I should see row of select checkbox list
    And I click on 1st row of select checkbox list
    And I select publish of bulk actions dropdown
    Then I should see alert
    Given I am on Promotion Index Page
    When I input "16th Free Gift Promotion" to search field
    Then 1st row of promotion list should contain "16th Free Gift Promotion"
    And I should see apply filter label
    And I should see row of select checkbox list
    And I click on 1st row of select checkbox list
    And I select publish of bulk actions dropdown
    Then I should see alert

  @C4727
  Scenario: After create free gifts product and promotin, checkout product and get free gifts
    Given I am on Shop Product Index Page
    When I input "2nd Product for Checkout" to search field
    Then 1st product of products list should contain "2nd Product for Checkout"
    When I click on 1st product of products list
    Then I should be redirected to Shop Product Show Page
    When I fill "7" to product quantity field
    And I click on add to cart button
    Then I should see cart panel
    Given I am on Shop Product Index Page
    When I input "7th Product for Checkout" to search field
    Then 1st product of products list should contain "7th Product for Checkout"
    When I click on 1st product of products list
    Then I should be redirected to Shop Product Show Page
    When I fill "3" to product quantity field
    And I click on add to cart button
    Then I should see cart panel
    When I click on checkout button
    Then I should be redirected to Shop Cart Page
    And I select country dropdown option included "Taiwan" of country list dropdown
    And I wait for 5 seconds for loading
    And I select delivery dropdown option included "Local Delivery" of delivery method dropdown
    And I wait for 5 seconds for loading
    And I select payment dropdown option included "Cash on Delivery" of payment method dropdown
    And I wait for 5 seconds for loading
    And I click on proceed to checkout button
    Then I should be redirected to Shop Checkout Page
    And I fill name to name field
    And I fill email to email address field
    And I fill phone to contact number field
    And I click on same as checkbox
    And I select delivery address dropdown option included "Taipei City" of 1st delivery address dropdown
    And I select delivery address dropdown option included "100 Zhongzheng District" of 2nd delivery address dropdown
    And I fill address to delivery address field
    And I click on agree terms checkbox
    And I click on accept marketing checkbox
    And I click on place order button
    Then I should be redirected to Shop Order Confirm Page
    When I click on summary collapse
    Then 1st row of product unit price should contain "NT$1"
    Then 1st row of product quantity should equal to "7"
    Then 1st row of product items should contain "2nd Product for Checkout"
    Then 2nd row of product unit price should contain "NT$49"
    Then 2nd row of product quantity should equal to "3"
    Then 2nd row of product items should contain "7th Product for Checkout"
    Then 3rd row of product unit price should contain "NT$0"
    Then 3rd row of product quantity should equal to "6"
    Then 3rd row of product items should contain "1st Created Free Gift"
    Then item subtotal should contain "NT$154"
    Then delivery fee should contain "NT$10"
    Then total should contain "NT$94"
    Then discount applied should contain "6th Promotion"
    Then discount applied should contain "16th Free Gift Promotion"
    And ---ROLL BACK---
    Given I am on Promotion Index Page
    When I input "6th Promotion" to search field
    Then I should see apply filter label
    Then I should see 1 row of promotion list
    Then 1st row of promotion list should contain "6th Promotion"
    And I click on 1st row of select checkbox list
    And I select unpublish of bulk actions dropdown
    Then I should see 1 unpublished item
    Given I am on Promotion Index Page
    When I input "16th Free Gift Promotion" to search field
    Then I should see apply filter label
    Then I should see 1 row of promotion list
    Then 1st row of promotion list should contain "16th Free Gift Promotion"
    And I click on 1st row of select checkbox list
    And I select unpublish of bulk actions dropdown
    Then I should see 1 unpublished item