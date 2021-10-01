@BaseCase @Admin @Storefront @FreeGift @Checkout @freeGiftCheckout-multiplePromotions @fixture-product @fixture-payment @fixture-delivery @fixture-freegift @fixture-shop @fixture-promotion
Feature: Shop Checkout with two free gifts product
  As a merchant
  I want to publish two different free gifts product and related promotions
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
    When I input "17th Free Gift Promotion" to search field
    Then 1st row of promotion list should contain "17th Free Gift Promotion"
    Then I should see apply filter label
    Then I should see row of select checkbox list
    And I click on 1st row of select checkbox list
    And I select publish of bulk actions dropdown
    Then I should see alert
    Then I input "18th Free Gift Promotion" to search field
    Then 1st row of promotion list should contain "18th Free Gift Promotion"
    Then I should see apply filter label
    Then I should see row of select checkbox list
    And I click on 1st row of select checkbox list
    And I select publish of bulk actions dropdown
    Then I should see alert

  @C4729
  Scenario: Checkout products and get free gifts
    Given I am on Shop Product Index Page
    When I input "7th Product for Checkout" to search field
    Then 1st product of products list should contain "7th Product for Checkout"
    When I click on 1st product of products list
    Then I should be redirected to Shop Product Show Page
    When I fill "6" to product quantity field
    And I click on add to cart button
    Then I should see cart panel
    Given I am on Shop Product Index Page
    When I input "17th Product for Checkout" to search field
    Then 1st product of products list should contain "17th Product for Checkout"
    When I click on 1st product of products list
    Then I should be redirected to Shop Product Show Page
    When I fill "5" to product quantity field
    And I click on add to cart button
    Then I should see cart panel
    When I click on checkout button
    Then I should be redirected to Shop Cart Page
    And I select country dropdown option included "Taiwan" of country list dropdown
    And I wait for 5 seconds for loading
    And I select delivery dropdown option included "7-11 Pickup and pay in store (C2C)" of delivery method dropdown
    And I wait for 5 seconds for loading
    And I select payment dropdown option included "Pay on 7-11 Store Pickup (C2C)" of payment method dropdown
    And I wait for 5 seconds for loading
    And I click on proceed to checkout button
    Then I should be redirected to Shop Checkout Page
    When I click on pick store button
    Then I should be redirected to Seven Pick Store Page
    When I click on id search button
    And I switch to main frame frame
    Then I should see store id field
    And I fill store id to store id field
    And I click on search button
    And I click on 1st store list
    When I switch to default frame
    Then I should see store confirm button
    And I click on store confirm button
    And I click on agree button
    And I click on submit button
    Then I should be redirected to Shop Checkout Page
    And I fill name to name field
    And I fill email to email address field
    And I fill phone to contact number field
    And I click on same as checkbox
    And I click on agree terms checkbox
    And I click on accept marketing checkbox
    And I click on place order button
    Then I should be redirected to Shop Order Confirm Page
    When I click on summary collapse
    Then 1st row of product unit price should contain "NT$49"
    Then 1st row of product quantity should equal to "6"
    Then 1st row of product items should contain "7th Product for Checkout"
    Then 2nd row of product unit price should contain "NT$10"
    Then 2nd row of product quantity should equal to "5"
    Then 2nd row of product items should contain "17th Product for Checkout"
    Then 3rd row of product unit price should contain "NT$0"
    Then 3rd row of product quantity should equal to "2"
    Then 3rd row of product items should contain "1st Created Free Gift"
    Then 4th row of product unit price should contain "NT$0"
    Then 4th row of product quantity should equal to "6"
    Then 4th row of product items should contain "2nd Created Free Gift"
    Then item subtotal should contain "NT$344"
    Then delivery fee should contain "NT$10"
    Then total should contain "NT$354"
    Then discount applied should contain "17th Free Gift Promotion"
    Then discount applied should contain "18th Free Gift Promotion"
    And ---ROLL BACK---
    Given I am on Promotion Index Page
    When I input "17th Free Gift Promotion" to search field
    Then I should see apply filter label
    Then I should see 1 row of promotion list
    Then 1st row of promotion list should contain "17th Free Gift Promotion"
    And I click on 1st row of select checkbox list
    And I select unpublish of bulk actions dropdown
    Then I should see 1 unpublished item
    When I input "18th Free Gift Promotion" to search field
    Then I should see apply filter label
    Then I should see 1 row of promotion list
    Then 1st row of promotion list should contain "18th Free Gift Promotion"
    And I click on 1st row of select checkbox list
    And I select unpublish of bulk actions dropdown
    Then I should see 1 unpublished item