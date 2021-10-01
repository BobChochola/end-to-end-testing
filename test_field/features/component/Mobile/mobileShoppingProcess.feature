@MobileBaseCase @Admin @Storefront @Mobile @mobileShoppingProcess @fixture-delivery @fixture-payment @fixture-product @fixture-shop @fixture-addon @fixture-promotion @fixture-mobile-basic
Feature: mobile version button assert - Shop
  As a use mobile merchant
  I want check any button in shop

  Background:
    Given I am on Admin Login Page
    And I fill correct account email to email field
    And I fill correct account password to password field
    And I click on login button
    Then I check intercom message notification frame and click clear intercom message button
    Then I check intercom message notification frame and click intercom message close button
    When I check new feature alert notification frame and click new feature alert close button
    When I check and click no thanks button

  @EAT-1117 @EAT-1117-1
  Scenario: mobile version button assert - Shop
    Given I am on Promotion Index Page
    When I input "1st Promotion" to search field
    Then I should see apply filter label
    Then 1st row of promotion list should contain "1st Promotion"
    Then I should see mobile row of select checkbox list
    And I click on 1st mobile row of select checkbox list
    And I select mobile bulk actions dropdown option included "Publish" of mobile bulk actions dropdown
    Then I should see alert

    Given I am on Shop Home Page
    When I click on sign in button
    Then I should be redirected to Shop Login Page

    And I fill email to email field
    And I fill password to password field
    And I click on submit button

    Then I should be redirected to Shop Home Page
    Then I should see side menu button
    And I click on side menu button
    Then I should see side menu dropdown
    And I click on side menu navigation button included "Shop All"

    Then I should be redirected to Shop Product Index Page
    Then I should see mobile product of products list
    When I click on mobile search button
    Then I should see mobile search field
    And I input "13th Product for Checkout" to mobile search field
    Then 1st mobile product of products list should contain '13th Product for Checkout'
    When I click on 1st mobile product of products list

    Then I should be redirected to Shop Product Show Page
    Then I click on add to cart button
    Then I should see cart panel
    Then 1st cart panel price list should contain "1x NT$"
    And I click on close cart panel area
    And I click on addon item checkbox
    And I click on buy together button
    Then I should see cart panel
    Then 2nd cart item list should contain "Addon"
    Then 2nd cart item list should contain "1x NT$"
    Then 1st cart panel price list should contain "2x NT$"
    When I click on checkout button
    Then I should be redirected to Shop Cart Page
    And I select country dropdown option included "Taiwan" of country list dropdown
    And I wait for 5 seconds for loading
    And I select delivery dropdown option included "Custom Delivery" of delivery method dropdown
    And I wait for 5 seconds for loading
    And I select payment dropdown option included "Custom" of payment method dropdown
    And I wait for 5 seconds for loading
    Then promotion description should contain '1st Promotion'
    Then promotion description should contain '-NT$10'
    Then cart item subtotal should contain 'NT$80'
    Then delivery fee should contain 'NT$10'
    Then total should contain 'NT$80'
    And I click on proceed to checkout button

    Then I should be redirected to Shop Checkout Page
    Then I click on cart summary
    Then 1st row of product items should contain "13th Product for Checkout"
    Then 1st cart item price should contain 'NT$35'
    Then 1st cart item quantity should contain '2'
    Then 1st cart item subtotal should contain 'NT$70'
    Then order summary should contain 'Item Subtotal:NT$80'
    Then order summary should contain 'Delivery Fee:NT$10'
    Then order summary should contain 'Total (1 items):NT$80'
    Then discount applied should contain '1st Promotion'
    Then discount applied should contain '-NT$10'
    When I fill name to name field
    And I fill phone to contact number field
    And I click on same as checkbox
    And I click on save number checkbox
    And I click on agree terms checkbox
    And I click on place order button

    Then I should be redirected to Shop Order Confirm Page
    When I click on summary collapse
    Then delivery fee should contain "NT$10"
    Then total should contain "NT$80"
    Then 1st row of product unit price should contain "NT$35"
    Then 1st row of product subtotal should contain "NT$70"
    Then 1st row of product quantity should equal to "QTY: 2"
    Then 1st row of product items should contain "13th Product for Checkout"
    Then 2nd row of product unit price should contain "NT$10"
    Then 2nd row of product subtotal should contain "NT$10"
    Then 2nd row of product quantity should equal to "QTY: 1"
    Then 2nd row of product items should contain "3rd Addon for Checkout"
    Then row of promotion list should contain "1st Promotion"
    Then row of promotion list should contain "-NT$10"
    Then item subtotal should contain 'NT$80'
    Then delivery fee should contain 'NT$10'
    Then total should contain 'NT$80'

    And I click on member center button
    Then I should be redirected to Shop User Profile Page
    Then I should see name field
    And I click on tab included 'Member Points'
    Then I should see point balance amount
    
    When I click on member center tab included 'Orders'
    Then I should be redirected to Shop Orders Page
    When I click on 1st row of order links
    Then I should be redirected to Shop Orders Show Page
    Then I should see order placing date
    And I click on member center button

    Then I should be redirected to Shop User Profile Page
    And  I click on tab included 'Store Credits'
    Then I should be redirected to Shop User Credit Page
    Then I should see row of credit list
    And I click on member center tab

    Then I should be redirected to Shop User Profile Page
    And I click on tab included 'Wishlist'
    Then I should be redirected to Shop Wishlist Page
    And I click on continue shopping button
    Then I should be redirected to Shop Home Page
    And I click on member center button

    Then I should be redirected to Shop User Profile Page
    And I click on tab included 'Messages'
    Then I should be redirected to Shop Message Page
    When I fill message content to message field
    And I click on send button
    Then I should see sender message content
    Given I am on Message Center Page
    When I click on row of message list
    Then I should see message area

    And ---ROLL BACK---
    Given I am on Promotion Index Page
    When I input "1st Promotion" to search field
    Then I should see apply filter label
    Then I should see 1 row of promotion list
    Then 1st row of promotion list should contain "1st Promotion"
    And I click on 1st mobile row of select checkbox list
    And I select mobile unpublish of mobile bulk actions dropdown
    Then I should see 1 unpublished item

  @EAT-1117 @EAT-1117-2
  Scenario: mobile version button assert - advanced page
    Given I am on Bundle Pricing Index Page
    Then 1st tab should contain 'Bundle Pricing'
    Then 2nd tab should contain 'Bundle Group Pricing'
    When I select add promotion dropdown option included 'Bundle Group' of add promotion dropdown
    Then I should be redirected to Bundle Group Create Page
    And I fill 'Buy 1 in Group A & 1 in Group B for $49' to name field
    And I click on stackable off checkbox
    When I fill '1' to group a field
    When I fill '1' to group b field
    When I fill '49' to price field
    Then discount summary should contain 'Purchase 1 items of Selected Products in Group A and 1 items of Selected Products in Group B for NT$49'
    And I should see group a tab
    Then select product button should contain 'Select Products in Group A'
    When I click on select product button
    Then I should see select product popup
    Then I input '6th Product for Checkout' to search field
    Then 1st product list should contain '6th Product for Checkout'
    Then I click on 1st checkbox of product list
    When I click on popup confirm button
    Then 1st selected products should contain '6th Product for Checkout'
    When I click on group b tab
    Then select product button should contain 'Select Products in Group B'
    When I click on select product button
    Then I should see select product popup
    When I input '17th Product for Checkout' to search field
    Then 1st product list should contain '17th Product for Checkout'
    Then I click on 1st checkbox of product list
    When I click on popup confirm button
    Then 1st selected products should contain '17th Product for Checkout'
    When I click on 1st countinue to button
    When I click on 2nd countinue to button
    When I click on 3rd countinue to button
    Then I scroll down to preview button
    When I click on preview button
    Then target group should contain 'All Customers'
    Then stackable pricing should contain 'Off'
    Then promotion name should contain 'Buy 1 in Group A & 1 in Group B for $49'
    Then promotion limitations start date should contain start date
    Then promotion limitations end date should contain 'Never expires'
    When I click on preview group a tab
    Then preview selected products should contain '6th Product for Checkout'
    When I click on preview group b tab
    Then preview selected products should contain '17th Product for Checkout'
    When I click on confirm button
    Then I should see alert
    Then I should be redirected to Bundle Pricing Index Page
    Then 1st row of promotions should contain 'Buy 1 in Group A & 1 in Group B for $49'
    Then 1st row of promotions should contain start date
    Then 1st row of promotions should contain 'Never expires'
    Then 1st row of promotions should contain 'All Customers'
    Then 1st row of promotions should contain 'Unlimited'

    Given I am on Pages Page
    Then I should see 6 row of page list
    Then 6th row of page list should contain '6th, 17th Product for mobile test (do not delete)'
    When I click on 6th advanced page edit button
    Then I should see popover
    Then I click on view page button

    And I switch to 2 of tabs
    Then I should be on Shop Advanced Page
    When I click on sign in button

    Then I should be redirected to Shop Login Page
    And I fill email to email field
    And I fill password to password field
    And I click on submit button
    Then I should be redirected to Shop Advanced Page

    Then 1st product should contain '6th Product for Checkout'
    Then 1st regular price of product list should contain 'NT$59'
    And I click on 1st mobile add to cart button
    Then I should see popover
    Then mobile popover regular price of product list should contain 'NT$59'
    When I fill '1' to popover variation quantity field
    And I click on popover add to cart button
    Then I should see cart panel
    And I click on close cart panel area

    Then 2nd product should contain '17th Product for Checkout'
    Then 1st sale price of product list should contain 'NT$10'
    And I click on 2nd mobile add to cart button
    Then I should see popover
    Then mobile popover sale price of product list should contain 'NT$10'
    When I fill '1' to popover variation quantity field
    And I click on popover add to cart button
    When I click on checkout button

    Then I should be redirected to Shop Cart Page
    Then 1st row of unit price should contain "NT$59"
    Then 1st row of subtotal price should contain "NT$59"
    Then 1st item quantity field should contain '1'
    Then 1st row of cart item should contain '6th Product for Checkout'
    Then 2nd row of unit price should contain "NT$10"
    Then 2nd row of subtotal price should contain "NT$10"
    Then 2nd item quantity field should contain '1'
    Then 2nd row of cart item should contain '17th Product for Checkout'
    When I select country dropdown option included "Taiwan" of country list dropdown
    Then I wait for 3 seconds for loading
    And I select delivery dropdown option included "(DBW) - LocalDelivery" of delivery method dropdown
    Then I wait for 3 seconds for loading
    And I select payment dropdown option included "Custom" of payment method dropdown
    Then promotion description should contain 'Buy 1 in Group A & 1 in Group B for $49'
    Then promotion description should contain '-NT$20'
    Then cart item subtotal should contain 'NT$69'
    Then delivery fee should contain 'NT$15'
    Then total should contain 'NT$64'
    And I click on proceed to checkout button

    Then I should be redirected to Shop Checkout Page
    Then I click on cart summary
    Then 1st row of product items should contain "6th Product for Checkout"
    Then 1st cart item price should contain 'NT$59'
    Then 1st cart item quantity should contain '1'
    Then 1st cart item subtotal should contain 'NT$59'

    Then 2nd row of product items should contain "17th Product for Checkout"
    Then 2nd cart item price should contain 'NT$10'
    Then 2nd cart item quantity should contain '1'
    Then 2nd cart item subtotal should contain 'NT$10'
    Then order summary should contain 'Item Subtotal:NT$69'
    Then order summary should contain 'Delivery Fee:NT$15'
    Then order summary should contain 'Total (2 items):NT$64'
    Then discount applied should contain 'Buy 1 in Group A & 1 in Group B for $49'
    Then discount applied should contain '-NT$20'
    And I select address region dropdown option included "Taipei City" of address region dropdown
    And I select address district dropdown option included "100 Zhongzheng District" of address district dropdown
    And I fill address to delivery address field
    When I fill name to name field
    And I fill phone to contact number field
    And I click on same as checkbox
    And I click on save number checkbox
    And I click on agree terms checkbox
    And I click on place order button
    Then I should be redirected to Shop Order Confirm Page
    When I click on summary collapse
    Then delivery fee should contain "NT$15"
    Then total should contain "NT$64"
    Then 1st row of product unit price should contain "NT$59"
    Then 1st row of product subtotal should contain "NT$59"
    Then 1st row of product quantity should equal to "QTY: 1"
    Then 1st row of product items should contain "6th Product for Checkout"
    Then 2nd row of product unit price should contain "NT$10"
    Then 2nd row of product subtotal should contain "NT$10"
    Then 2nd row of product quantity should equal to "QTY: 1"
    Then 2nd row of product items should contain "17th Product for Checkout"

    Then item subtotal should contain 'NT$69'
    Then delivery fee should contain 'NT$15'
    Then total should contain 'NT$64'
    Then row of promotion list should contain "Buy 1 in Group A & 1 in Group B for $49"
    Then row of promotion list should contain "-NT$20"
    And ---ROLL BACK---
    Given I am on Bundle Pricing Index Page
    And I click on tab included 'Bundle Group Pricing'
    When I click on 1st mobile row of select checkbox list
    And I select mobile delete of mobile bulk actions dropdown
    And I should see confirmation popover
    And I click on delete checkbox
    And I click on confirm delete button
    Then I should see alert

  @EAT-1117 @EAT-1117-3
  Scenario: mobile version button assert - express checkout page
    Given I am on Bundle Pricing Create Page
    And I fill 'Buy 3 for $99' to name field
    And I fill '3' to promotion value field
    And I fill '99' to discounted price field
    And I fill '6th Product for Checkout' to search field
    And I click on search product button
    Then I should see select product popup
    Then 1st product of popover list should contain '6th Product for Checkout'
    And I click on 1st checkbox of product list
    When I click on popup confirm button
    Then selected products should contain '6th Product for Checkout'
    And I click on countinue to button
    When I click on 2nd countinue to button
    Then I click on never expires checkbox
    And I click on end date field
    Then I should see calendar table
    When I click on 3rd available date button
    And I click on done button
    And I click on 3rd countinue to button
    When I click on preview button
    Then promotion name should equal to 'Buy 3 for $99'
    Then promotion limitations start date should contain start date
    Then promotion limitations end date should contain end date
    Then target group should equal to 'All Customers'
    Then discount summary should equal to 'Purchase 3 items of Selected Products for NT$99'
    And I click on confirm button
    Then I should see alert
    Then I should be redirected to Bundle Pricing Index Page
    Then 1st row of promotions should contain 'Buy 3 for $99'
    Then 1st row of promotions should contain start date
    Then 1st row of promotions should contain end date

    Given I am on Shop Home Page
    When I click on sign in button

    Then I should be redirected to Shop Login Page
    And I fill email to email field
    And I fill password to password field
    And I click on submit button
    Then I should be redirected to Shop Home Page

    Given I am on Express Checkout Pages Page
    Then 1st row of page list should contain "6th Product for mobile test (do not delete)"
    And I click on 1st edit button
    Then I should see popover
    Then I click on view page button
    And I switch to 2 of tabs
    Then I should be on Shop Express Checkout Page

    Then product name should contain '6TH PRODUCT FOR CHECKOUT'
    Then unit price should contain 'NT$59'
    When I fill '3' to mobile quantity field
    Then applied promotion should contain 'Buy 3 for $99'
    Then applied promotion should contain '-NT$78'
    When I select country dropdown option included "Taiwan" of country list dropdown
    Then I wait for 3 seconds for loading
    And I select delivery dropdown option included "(DBW) - LocalDelivery" of delivery method dropdown
    Then I wait for 3 seconds for loading
    And I select payment dropdown option included "Custom" of payment method dropdown
    Then item subtotal should contain 'NT$177'
    Then delivery fee should contain 'NT$15'
    Then total should contain 'NT$114'
    And I click on buy now button

    Then I should be redirected to Shop Checkout Page
    Then I click on cart summary
    Then 1st row of product items should contain "6th Product for Checkout"
    Then 1st cart item price should contain 'NT$59'
    Then 1st cart item quantity should contain '3'
    Then 1st cart item subtotal should contain 'NT$177'
    Then total price should contain "NT$114"
    Then order summary should contain 'Item Subtotal:NT$177'
    Then order summary should contain 'Delivery Fee:NT$15'
    Then order summary should contain 'Total (1 items):NT$114'
    And I select address region dropdown option included "Taipei City" of address region dropdown
    And I select address district dropdown option included "100 Zhongzheng District" of address district dropdown
    And I fill address to delivery address field
    When I fill name to name field
    And I fill phone to contact number field
    And I click on same as checkbox
    And I click on save number checkbox
    And I click on agree terms checkbox
    And I click on place order button
    Then I should be redirected to Shop Order Confirm Page
    When I click on summary collapse
    Then delivery fee should contain "NT$15"
    Then total should contain "NT$114"
    Then 1st row of product unit price should contain "NT$59"
    Then 1st row of product subtotal should contain "NT$177"
    Then 1st row of product quantity should equal to "QTY: 3"
    Then 1st row of product items should contain "6th Product for Checkout"
    Then item subtotal should contain 'NT$177'
    Then delivery fee should contain 'NT$15'
    Then total should contain 'NT$114'
    Then row of promotion list should contain "Buy 3 for $99"
    Then row of promotion list should contain "-NT$78"

    And ---ROLL BACK---
    Given I am on Bundle Pricing Index Page
    Then 1st row of promotions should contain 'Buy 3 for $99'
    When I click on 1st mobile row of select checkbox list
    And I select mobile delete of mobile bulk actions dropdown
    And I should see confirmation popover
    And I click on delete checkbox
    And I click on confirm delete button
    Then I should see alert