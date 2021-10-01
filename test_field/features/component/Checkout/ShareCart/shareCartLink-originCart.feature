@BaseCase @Admin @Storefront @Checkout @ShareCart @CouponCode @shareCartLink-originCart
@fixture-payment @fixture-delivery @fixture-product @fixture-shop @fixture-promotion @fixture-addon
Feature: Checkout different product with Affiliate campaign - url redirect to origin cart
  As a customer
  I want to checkout different variations with promotion

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

    Given I am on Shop Product Index Page
    When I input "10th Product for Checkout" to search field
    Then 1st product of products list should contain "10th Product for Checkout"
    And I click on 1st product of products list
    Then I should be redirected to Shop Product Show Page
    When I click on dropdown option included "Red"
    When I click on dropdown option included "M"
    And I fill '2' to product quantity field
    And I click on add to cart button
    And I click on close cart panel area
    And I click on dropdown option included "Blue"
    When I click on dropdown option included "S"
    And I fill '2' to product quantity field
    And I click on add to cart button
    Then I should see checkout button

    Given I am on Affiliate Campaign Create Page
    When I fill '(dirty data)Affiliate campaign checkout without promotion' to name field
    And I click on countinue to button
    Then I should see condition field
    When I fill '90' to condition field
    And I click on fixed amount radio
    Then I should see fixed amount value field
    When I fill '10' to fixed amount value field
    And I click on 2nd countinue to button
    And I click on 3rd countinue to button
    Then I should see affiliate code field
    When I fill 'shoplineqe' to affiliate code field
    When I click on preview button
    When I mark the value of affiliate link field as variable affiliate link
    And I click on publish button
    Then I should be redirected to Affiliate Campaign Index Page
    Then row of affiliate campaign should contain '(dirty data)Affiliate campaign checkout without promotion'
    When I open new tab and redirect to affiliate link
    When I switch to 2 of tabs
    Then I should be redirected to Shop Home Page

    Given I am on Shop Product Index Page
    When I input "12th Product for Checkout" to search field
    Then 1st product of products list should contain "12th Product for Checkout"
    And I click on 1st product of products list
    Then I should be redirected to Shop Product Show Page
    And I fill '2' to product quantity field
    When I click on add to cart button
    Then I should see cart panel

    Given I am on Shop Product Index Page
    When I input "13th Product for Checkout" to search field
    Then 1st product of products list should contain "13th Product for Checkout"
    And I click on 1st product of products list
    Then I should be redirected to Shop Product Show Page
    And I fill '2' to product quantity field
    And I fill '2' to addon quantity field
    When I click on buy together button
    Then I should see cart panel
    And I click on checkout button
    Then I should be redirected to Shop Cart Page
    Then I scroll down to country dropdown option 
    Then I select country dropdown option included "Taiwan" of country list dropdown
    And I wait for 3 seconds for loading
    Then I select delivery dropdown option included "Custom Delivery" of delivery method dropdown
    And I wait for 3 seconds for loading
    Then I select payment dropdown option included "Bank" of payment method dropdown
    And I wait for 3 seconds for loading
    Then I take a snapshot
    And I click on apply coupon code button
    Then I should see coupon code field
    And I input "ExceptECPay" to coupon code field
    And I wait for 3 seconds for loading
    When I click on share cart link button
    Then I should see success alert
    Then success alert should contain 'Website address copied:Affiliate code (shoplineqe), 4 products'

  @EAT-1165 @EAT-1165-2
  Scenario: Checkout different variations with promotion
    Given I am on Shop Home Page
    When I click on message button
    Then I should see message popup
    Then I paste copied text to pop-up message field
    Then I mark the value of pop-up message field as variable copy url
    When I open new tab and redirect to copy url
    Then I should be redirected to Shop Cart Page
    Then I should see 5 row of cart item
    And 1st row of cart item should contain '10th Product for Checkout'
    And 1st row of cart item should contain 'Red'
    And 1st row of cart item should contain 'M'
    And 1st item quantity field should contain '3'
    And 2nd row of cart item should contain '10th Product for Checkout'
    And 2nd row of cart item should contain 'Blue'
    And 2nd row of cart item should contain 'S'
    And 2nd item quantity field should contain '3'
    And 3th row of cart item should contain '12th Product for Checkout'
    And 3rd item quantity field should contain '3'
    And 4th row of cart item should contain '13th Product for Checkout'
    And 4th item quantity field should contain '3'
    And 5th row of cart item should contain '3rd Addon for Checkout'
    And 5th item quantity field should contain '2'
    Then I scroll down to country dropdown option 
    Then I select country dropdown option included "Taiwan" of country list dropdown
    And I wait for 3 seconds for loading
    Then I select delivery dropdown option included "Custom Delivery" of delivery method dropdown
    And I wait for 3 seconds for loading
    Then I select payment dropdown option included "Bank" of payment method dropdown
    And I wait for 3 seconds for loading
    And I click on proceed to checkout button
    Then I should be redirected to Shop Checkout Page
    When I fill name to name field
    And I fill email to email address field
    And I fill phone to contact number field
    And I click on same as checkbox
    And I click on agree terms checkbox
    And I click on place order button
    Then I should be redirected to Shop Order Confirm Page
    Then I mark the value of order confirm info as variable order info

    And ---ROLL BACK---
    Given I am on Affiliate Campaign Index Page
    When I click on row of affiliate campaign checkbox
    Then I should see bulk action dropdown
    When I select bulk action dropdown option included 'Delete' of bulk action dropdown
    Then I should see popover
    When I click on delete checkbox
    And I click on delete ok button
    Then I should not see popover
    Then affiliate campaign table should not contain '(dirty data)Affiliate campaign checkout without promotion'