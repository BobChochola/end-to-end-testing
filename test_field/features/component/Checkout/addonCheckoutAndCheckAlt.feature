@BaseCase @ImageService @Admin @Storefront @Checkout @Marketing @ImageALT @addonCheckoutAndCheckAlt
@fixture-shop @fixture-product @fixture-payment @fixture-delivery @EAT-1022
Feature: Addon Products Checkout and check image alt
  As a guest
  I want to checkout products with addon products
  So that I can get addon products that I want

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

  @C3845 @EAT-1022-1
  Scenario: Checkout - Addon and check image alt
    Given I am on Addon Create Page
    And I click on tab included "Product Level Settings"
    And I should see search field
    And I fill "2nd Product for Checkout" to search field
    And I click on search product button
    Then 1st product of popover list should contain "2nd Product for Checkout"
    And I should see checkbox of product list
    And I click on 1st checkbox of product list
    And I click on confirm button
    Then I should not see checkbox of product list
    And I click on same addon price checkbox
    And I fill "20" to addon price field
    And I click on tab included "Add-on Item Info"
    Then I should see english name field
    And I fill "(dirty data) Add-on Item with alt" to english name field
    When I pick addon photo to addon photo selector
    Then I should see delete photo button
    Then I should see alt button
    When I click on alt button
    And I fill 'addon alt test' to alt field
    And I click on alt ok button
    And I click on unlimited checkbox
    Then I click on add button
    Then I should see alert
    Given I am on Addon Index Page
    Then 1st row of addon list should contain "Add-on Item with alt"
    Then I should have image addon photo for row of addon photo list
    Then 1st row of addon list should contain "∞"
    Then 1st row of addon list should contain "Never expires"

    Given I am on Addon Index Page
    When I click edit button of addon list for the same order of row of addon list included '2nd Addon for Checkout'
    Then I should be redirected to Addon Edit Page
    Then I should see delete photo button
    Then I should see alt button
    When I click on alt button
    And I fill 'addon alt edit test' to alt field
    And I click on alt ok button
    And I click on update button
    Then I should be redirected to Addon Index Page

    Given I am on Shop Product Index Page
    When I input "2nd Product for Checkout" to search field
    Then product of products list should contain '2nd Product for Checkout'
    When I click on 1st product of products list
    Then I should be redirected to Shop Product Show Page
    Then addon item should contain "Add-on Item with alt"
    Then the tag name of addon item image is 'img'
    Then addon item image should have attribute 'alt' equal to 'addon alt test'
    When I click on addon item checkbox
    And I click on buy together button
    Then I should see cart panel
    Then 1st cart item list should contain '2nd Product for Checkout'
    Then 2nd cart item list should contain 'Add-on Item with alt'
    Then the tag name of 2nd cart panel image list is 'img'
    Then 2nd cart panel image list should have attribute 'alt' equal to 'addon alt test'

    Given I am on Shop Product Index Page
    When I input "8th Product for Checkout" to search field
    Then product of products list should contain '8th Product for Checkout'
    And I click on 1st product of products list
    Then I should be redirected to Shop Product Show Page
    Then addon item should contain "2nd Addon for Checkout"
    Then the tag name of addon item image is 'img'
    Then addon item image should have attribute 'alt' equal to 'addon alt edit test'
    When I click on addon item checkbox
    And I click on buy together button
    Then I should see cart panel
    Then 3rd cart item list should contain '8th Product for Checkout'
    Then 4th cart item list should contain '2nd Addon for Checkout'
    Then the tag name of 4th cart panel image list is 'img'
    Then 4th cart panel image list should have attribute 'alt' equal to 'addon alt edit test'
    When I click on checkout button
    Then I should be redirected to Shop Cart Page
    Then 1st row of cart item should contain '2nd Product for Checkout'
    Then 2nd row of cart item should contain 'Add-on Item with alt'
    Then 3rd row of cart item should contain '8th Product for Checkout'
    Then 4th row of cart item should contain '2nd Addon for Checkout'
    Then the tag name of 2nd row of cart item image is 'a'
    Then 2nd row of cart item image should not have attribute 'alt'
    Then the tag name of 4th row of cart item image is 'a'
    Then 4th row of cart item image should not have attribute 'alt'
    And I select country dropdown option included "Taiwan" of country list dropdown
    And I wait for 5 seconds for loading
    And I select delivery dropdown option included "7-11 Pickup and pay in store (B2C)" of delivery method dropdown
    And I wait for 5 seconds for loading
    And I select payment dropdown option included "Pay on 7-11 Store Pickup (B2C)" of payment method dropdown
    And I wait for 5 seconds for loading
    And I click on proceed to checkout button
    Then I should be redirected to Shop Checkout Page
    When I click on cart summary
    Then 2nd row of product items should contain 'Add-on Item with alt'
    Then the tag name of 2nd row of product image is 'a'
    Then 2nd row of product image should not have attribute 'alt'
    Then 4th row of product items should contain '2nd Addon for Checkout'
    Then the tag name of 4th row of product image is 'a'
    Then 4th row of product image should not have attribute 'alt'
    When I click on pick store button
    Then I should be redirected to Seven Pick Store Page
    When I click on id search button
    And I switch to main frame frame
    And I fill store id to store id field
    And I click on search button
    And I click on 1st store list
    And I switch to default frame
    Then I should see store confirm button
    When I click on store confirm button
    And I click on agree button
    And I click on submit button
    Then I should be redirected to Shop Checkout Page
    When I fill name to name field
    And I fill email to email address field
    And I fill phone to contact number field
    And I click on same as checkbox
    And I click on agree terms checkbox
    And I click on place order button
    Then I should be redirected to Shop Order Confirm Page
    When I click on summary collapse
    Then 1st row of product unit price should contain "NT$1"
    Then 1st row of product quantity should equal to "1"
    Then 1st row of product items should contain "2nd Product for Checkout"
    Then 2nd row of product unit price should contain "NT$20"
    Then 2nd row of product quantity should equal to "1"
    Then 2nd row of product items should contain "Add-on Item with alt"
    Then the tag name of 2nd row of product image is 'a'
    Then 2nd row of product image should not have attribute 'alt'
    Then 3rd row of product unit price should contain "NT$50"
    Then 3rd row of product quantity should equal to "1"
    Then 3rd row of product items should contain "8th Product for Checkout"
    Then 3rd row of product items should contain "Blue"
    Then 4th row of product unit price should contain "NT$10"
    Then 4th row of product quantity should equal to "1"
    Then 4th row of product items should contain "2nd Addon for Checkout"
    Then the tag name of 4th row of product image is 'a'
    Then 4th row of product image should not have attribute 'alt'
    Then item subtotal should contain "NT$81"
    Then delivery fee should contain "NT$10"
    Then total should contain "NT$91"
    Given I am on Orders Page
    When I click on 1st row of order links
    Then I should be redirected to Orders Show Page
    Then order date should contain order date
    Then customer name should contain name
    Then customer email should contain email
    Then customer phone should contain phone
    Then delivery method should contain "7-11 Pickup and pay in store (B2C)"
    Then payment type should contain "Pay on 7-11 Store Pickup (B2C)"
    When I Refresh
    Then third party recipient name should contain name
    Then third party recipient phone should contain phone
    Then product details should contain "Add-on Item"
    And ---ROLL BACK---
    Given I am on Addon Index Page
    Then 1st row of addon list should contain 'Add-on Item with alt'
    When I click on 1st select checkbox of addon list
    When I select delete of bulk actions dropdown
    And I should see confirmation popover
    And I click on delete checkbox
    And I click on confirm delete button
    Then I should not see confirmation popover

    Given I am on Addon Index Page
    When I click edit button of addon list for the same order of row of addon list included '2nd Addon for Checkout'
    Then I should be redirected to Addon Edit Page
    Then I should see delete photo button
    Then I should see alt button
    When I click on alt button
    And I fill '' to alt field
    And I click on alt ok button
    And I click on update button
    Then I should be redirected to Addon Index Page