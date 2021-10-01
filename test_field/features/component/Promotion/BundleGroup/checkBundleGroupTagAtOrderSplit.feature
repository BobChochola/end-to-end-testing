@BaseCase @Storefront @Admin @Promotion @BundleGroup @checkBundleGroupTagAtOrderSplit @EAT-998 @EAT-998-2
@fixture-shop @fixture-product @fixture-delivery @fixture-payment @fixture-promotion
Feature: Checkout bundle group promotion tag display when execute order split and check on mail.
  As a merchant
  When I want to checkout with bundle group promotion and check tag display in admin/shop/email.

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

    Given I am on Bundle Pricing Index Page
    Then 1st tab should contain 'Bundle Pricing'
    Then 2nd tab should contain 'Bundle Group Pricing'
    When I select add promotion dropdown option included 'Bundle Group' of add promotion dropdown
    Then I should be redirected to Bundle Group Create Page
    And I fill '(dirty data) Buy 2 in Group A & 1 in Group B for $49' to name field
    And I click on stackable off checkbox
    When I fill '2' to group a field
    When I fill '1' to group b field
    When I fill '49' to price field
    Then discount summary should contain 'Purchase 2 items of Selected Products in Group A and 1 items of Selected Products in Group B for NT$49'
    And I should see group a tab
    Then select product button should contain 'Select Products in Group A'
    When I click on select product button
    Then I should see select product popup
    Then I input '6th Product for Checkout' to search field
    Then 1st product list should contain '6th Product for Checkout'
    Then I click on 1st checkbox of product list
    Then I input '10th Product for Checkout' to search field
    Then 1st product list should contain '10th Product for Checkout'
    Then I click on 1st checkbox of product list
    When I click on popup confirm button
    Then selected products should contain '6th Product for Checkout'
    Then selected products should contain '10th Product for Checkout'
    When I click on group b tab
    Then select product button should contain 'Select Products in Group B'
    When I click on select product button
    Then I should see select product popup
    When I input '17th Product for Checkout' to search field
    Then 1st product list should contain '17th Product for Checkout'
    Then I click on 1st checkbox of product list
    When I input '18th Product for Checkout' to search field
    Then 1st product list should contain '18th Product for Checkout'
    Then I click on 1st checkbox of product list
    When I click on popup confirm button
    Then selected products should contain '17th Product for Checkout'
    Then selected products should contain '18th Product for Checkout'
    When I click on 1st countinue to button
    When I click on 2nd countinue to button
    When I click on 3rd countinue to button
    Then I scroll down to preview button
    When I click on preview button
    Then target group should contain 'All Customers'
    Then stackable pricing should contain 'Off'
    Then promotion name should contain 'Buy 2 in Group A & 1 in Group B for $49'
    Then promotion limitations start date should contain start date
    Then promotion limitations end date should contain 'Never expires'
    When I click on preview group a tab
    Then preview selected products should contain '6th Product for Checkout'
    Then preview selected products should contain '10th Product for Checkout'
    When I click on preview group b tab
    Then preview selected products should contain '17th Product for Checkout'
    Then preview selected products should contain '18th Product for Checkout'
    When I click on confirm button
    Then I should see alert
    Then I should be redirected to Bundle Pricing Index Page
    Then 1st row of promotions should contain 'Buy 2 in Group A & 1 in Group B for $49'
    Then 1st row of promotions should contain start date
    Then 1st row of promotions should contain 'Never expires'
    Then 1st row of promotions should contain 'All Customers'
    Then 1st row of promotions should contain 'Unlimited'

    Given I am on Shop Product Index Page
    Then I input '6th Product for Checkout' to search field
    Then 1st product of products list should contain '6th Product for Checkout'
    When I click on 1st product of products list
    Then I should be redirected to Shop Product Show Page
    When I click on add to cart button
    Then I should see cart panel

    Given I am on Shop Product Index Page
    Then I input '10th Product for Checkout' to search field
    Then 1st product of products list should contain '10th Product for Checkout'
    When I click on 1st product of products list
    Then I should be redirected to Shop Product Show Page
    And I click on increase button
    When I click on add to cart button
    Then I should see cart panel

    Given I am on Shop Product Index Page
    Then I input '17th Product for Checkout' to search field
    Then 1st product of products list should contain '17th Product for Checkout'
    When I click on 1st product of products list
    Then I should be redirected to Shop Product Show Page
    And I click on increase button
    When I click on add to cart button
    Then I should see cart panel
    When I click on checkout button
    Then I should be redirected to Shop Cart Page
    When I select country dropdown option included "Taiwan" of country list dropdown
    And I wait for 3 seconds loading
    And I select delivery dropdown option included "Custom" of delivery method dropdown
    And I wait for 3 seconds loading
    And I select payment dropdown option included "Bank" of payment method dropdown
    And I wait for 3 seconds loading
    And applied promotion should contain 'Buy 2 in Group A & 1 in Group B for $49'
    And I click on proceed to checkout button
    Then I should be redirected to Shop Checkout Page
    When I fill name to name field
    And I fill email to email address field
    And I fill phone to contact number field
    And I click on same as checkbox
    And I click on agree terms checkbox
    And I click on become member checkbox
    And I click on place order button
    Then I should be redirected to Shop Order Confirm Page
    Then I mark the value of order confirm info as variable order info

  Scenario: Checkout bundle group promotion tag display at order split and mail.
    Given I am on Orders Page
    Then 1st row of order links should contain order number
    When I click on 1st row of order links
    Then I should be redirected to Orders Show Page
    When I click on split button
    Then I should be redirected to Order Split Page
    Then I should see 3 bundle tag
    Then 1st promotion label should contain 'Buy 2 in Group A & 1 in Group B for $49'
    Then 1st row of product name should contain 'Bundle Group'
    Then 1st row of product name should contain '6th Product for Checkout'
    Then 2nd row of product name should not contain 'Bundle Group'
    Then 2nd row of product name should contain '10th Product for Checkout'
    Then 3rd row of product name should not contain 'Bundle Group'
    Then 3rd row of product name should contain '17th Product for Checkout'
    Then 4th row of product name should contain 'Bundle Group'
    Then 4th row of product name should contain '10th Product for Checkout'
    Then 5th row of product name should contain 'Bundle Group'
    Then 5th row of product name should contain '17th Product for Checkout'
    And I fill '1' to 1st row of split quantity field
    And I fill '1' to 3rd row of split quantity field
    And I fill '1' to 4th row of split quantity field
    When I click on split button
    Then I click on send child email checkbox
    When I click on confirm button
    Then I should be redirected to Orders Page
    Then I click on 1st row of order links
    Then I should be redirected to Orders Show Page
    Then parent order number should contain order number
    Then I should see 2 bundle tag
    Then 1st row of product detail should contain 'Bundle Group'
    Then 1st row of product detail should contain '6th Product for Checkout'
    Then 2nd row of product detail should not contain 'Bundle Group'
    Then 2nd row of product detail should contain '17th Product for Checkout'
    Then 3rd row of product detail should contain 'Bundle Group'
    Then 3rd row of product detail should contain '10th Product for Checkout'
    Then promotion discount should contain '-NT$64'
    Then promotion discount should contain 'Buy 2 in Group A & 1 in Group B for $49'

    Given I am on Orders Page
    Then 2nd row of order links should equal to order number
    When I click on 2nd row of order links
    Then I should be redirected to Orders Show Page
    Then I should see 1 bundle tag
    Then 1st row of product detail should contain '10th Product for Checkout'
    Then 2nd row of product detail should contain 'Bundle Group'
    Then 2nd row of product detail should contain '17th Product for Checkout'
    Then promotion discount should contain '-NT$6'
    Then promotion discount should contain 'Buy 2 in Group A & 1 in Group B for $49'

    Given I am on Google Mail Page
    When I fill customer email to account field
    And I click on identifier next button
    Then I should see password field
    When I input account password to password field
    And I check and click password next button
    Then I should see search field
    When I input order number to search field
    And I wait for 3 seconds loading
    Then I should see row of mail list
    When I click on row of mail list included 'Order has been split'
    Then 1st row of product should contain '10th Product for Checkout'
    Then 2nd row of product should contain '17th Product for Checkout'
    Then 2nd row of product should not contain 'Bundle Group'
    When I input order number to search field
    And I wait for 3 seconds loading
    Then I should see row of mail list
    When I click on row of mail list included 'New Order (Split Order)'
    Then 1st row of product should contain '6th Product for Checkout'
    Then 1st row of product should not contain 'Bundle Group'
    Then 2nd row of product should contain '17th Product for Checkout'
    Then 3rd row of product should contain '10th Product for Checkout'
    Then 3rd row of product should not contain 'Bundle Group'

    And ---ROLL BACK---
    Given I am on Bundle Pricing Index Page
    And I click on tab included 'Bundle Group Pricing'
    Then I click on 1st row of select checkbox list
    When I select delete of bulk actions dropdown
    Then I should see confirmation popover
    Then I click on delete checkbox
    When I click on confirm delete button
    Then promotions should contain 'No promotions yet'