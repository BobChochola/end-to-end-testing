@BaseCase2 @Admin @Storefront @Product @Setting @productListingSoldOutUI
@fixture-shop @EAT-380
Feature: Product Listing Sold Out UI - Handle Search Result Pages
  As a shopper
  I want to see the sold out alert shows in the products list

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

    Given I am on Product Setting Page
    Then I should see sold out toggle
    When I check and click sold out toggle off
    When I check and click sold out toggle off
    And I click on update button
    Then I should see alert
    Then sold out toggle should be checked

    Given I am on Product Create Page
    When I pick product photo to product photo selector
    Then I should see delete photo button
    And I click on info tab
    And I fill '(dirty data) test sold out' to english name field
    When I scroll down to related product collapse
    Then I should see related product collapse
    And I click on related product collapse
    And I click on related product display none button
 
    And I click on add button 
    Then I should be redirected to Product Edit Page
    And I should see alert

  @productListingSoldOutUI-1
  Scenario: check product no var, out of stock on product at shop advanced/product list/category list/product search page
    Given I am on Product Create Page
    When I pick product photo to product photo selector
    Then I should see delete photo button
    And I click on info tab
    And I fill '(dirty data) no var, out of stock' to english name field
    And I click on quantity and pricing tab
    And I fill "10" to regular price field
    And I fill "0" to quantity field
    And I scroll down to id
    And I click on add button
    Then I should be redirected to Product Edit Page
    And I should see alert

    Given I am on Product Index Page
    And I click on 2nd row of edit button
    Then I should be redirected to Product Edit Page
    When I click on tab included "Info"
    Then I should see related product collapse
    And I click on related product collapse
    When I click on related product custom button
    Then I should see popup
    When I click on 1st related product add button
    And I click on popup save button
    And I click on update button
    Then I should be redirected to Product Index Page
    And I should see alert
    Given I am on Shop Product Index Page
    Then 1st product of products list should contain 'no var, out of stock'
    Then 1st product of products list should contain "SOLD OUT"
    And I input 'no var, out of stock' to search field
    Then breadcrumb should contain 'no var, out of stock'
    Then 1st product of products list should contain 'no var, out of stock'
    Then 1st product of products list should contain "SOLD OUT"
    And I click on 1st row of categories
    Then product of products list included 'no var, out of stock' and same order of product of products list should also contain 'SOLD OUT'
    And I input '(dirty data) test sold out' to search field
    Then breadcrumb should contain '(dirty data) test sold out'
    Then 1st product of products list should contain '(dirty data) test sold out'
    When I click on 1st product of products list
    Then I should be redirected to Shop Product Show Page
    And I scroll down to product of related products
    Then 1st product of related products should contain "no var, out of stock"
    Then 1st product of related products should contain "SOLD OUT"
    Given I am on Pages Page
    When I click on add advanced page button
    Then I should be redirected to Advanced Select Page
    When I click on 2th template
    Then I should be redirected to Page Builder Page
    Then I should see skip the guide button
    When I click on skip the guide button
    When I click on menu button
    Then I should see menu
    Then I should see single product button
    When I drag single product button to top location
    And I check and click empty single product
    And I wait for 3 seconds for loading
    Then I should see popup
    When I input 'no var, out of stock' to popup search field
    When I click on popup product included 'no var, out of stock'
    And I click on popup save button
    Then I should see single product
    And I click on save button
    Then I should see view page button
    And I click on view page button
    And I switch to 2 of tabs
    Then I should be redirected to Shop Advanced Page
    Then 1st product should contain "no var, out of stock"
    Then 1st product should contain "SOLD OUT"
    And ---ROLL BACK---
    Given I am on Pages Page
    When I click on delete button
    Then I should see popover
    And I click on confirm button
    Then I click on ok button
    Given I am on Product Setting Page
    Then I should see sold out toggle
    When I click on sold out toggle
    When I check and click sold out toggle on
    And I click on update button
    Then I should see alert
    Then sold out toggle should not be checked
    Given I am on Product Index Page
    When I input "(dirty data)" to search field
    Then product list should contain '(dirty data)'
    When I click on select all button
    And I select delete selected of bulk actions dropdown
    Then I should see delete confirmation popover
    And I click on delete checkbox
    And I click on confirm bulk button
    Then product list should not contain '(dirty data)'

  @productListingSoldOutUI-2
  Scenario: check product with var, all var out of stock on product at shop advanced/product list/category list/product search page
    Given I am on Product Create Page
    When I pick product photo to product photo selector
    Then I should see delete photo button
    And I click on info tab
    And I fill '(dirty data) with var, all var out of stock' to english name field
    And I click on quantity and pricing tab
    And I fill "10" to regular price field
    And I click on variations tab
    When I click on variations toggle
    And I input "Blue" to add options field
    And I input "Red" to add options field
    And I fill "0" to 1st row of variation quantity field
    And I fill "0" to 2nd row of variation quantity field
    And I click on add button
    Then I should be redirected to Product Edit Page
    And I should see alert

    Given I am on Product Index Page
    And I click on 2nd row of edit button
    Then I should be redirected to Product Edit Page
    When I click on tab included "Info"
    Then I should see related product collapse
    And I click on related product collapse
    When I click on related product custom button
    Then I should see popup
    When I click on 1st related product add button
    And I click on popup save button
    And I click on update button
    Then I should be redirected to Product Index Page
    And I should see alert
    Given I am on Shop Product Index Page
    Then 1st product of products list should contain 'with var, all var out of stock'
    Then 1st product of products list should contain "SOLD OUT"
    And I input 'with var, all var out of stock' to search field
    Then breadcrumb should contain 'with var, all var out of stock'
    Then 1st product of products list should contain 'with var, all var out of stock'
    Then 1st product of products list should contain "SOLD OUT"
    And I click on 1st row of categories
    Then product of products list included 'with var, with var, all var out of stock' and same order of product of products list should also contain 'SOLD OUT'
    And I input '(dirty data) test sold out' to search field
    Then breadcrumb should contain '(dirty data) test sold out'
    Then 1st product of products list should contain '(dirty data) test sold out'
    When I click on 1st product of products list
    Then I should be redirected to Shop Product Show Page
    And I scroll down to product of related products
    Then 1st product of related products should contain "with var, all var out of stock"
    Then 1st product of related products should contain "SOLD OUT"
    Given I am on Pages Page
    When I click on add advanced page button
    Then I should be redirected to Advanced Select Page
    When I click on 2th template
    Then I should be redirected to Page Builder Page
    Then I should see skip the guide button
    When I click on skip the guide button
    When I click on menu button
    Then I should see menu
    Then I should see single product button
    When I drag single product button to top location
    And I check and click empty single product
    And I wait for 3 seconds for loading
    Then I should see popup
    When I input 'with var, all var out of stock' to popup search field
    When I click on popup product included 'with var, all var out of stock'
    And I click on popup save button
    Then I should see single product
    And I click on save button
    Then I should see view page button
    And I click on view page button
    And I switch to 2 of tabs
    Then I should be redirected to Shop Advanced Page
    Then 1st product should contain "with var, all var out of stock"
    Then 1st product should contain "SOLD OUT"
    And ---ROLL BACK---
    Given I am on Pages Page
    When I click on delete button
    Then I should see popover
    And I click on confirm button
    Then I click on ok button
    Given I am on Product Setting Page
    Then I should see sold out toggle
    When I click on sold out toggle
    When I check and click sold out toggle on
    And I click on update button
    Then I should see alert
    Then sold out toggle should not be checked
    Given I am on Product Index Page
    When I input "(dirty data)" to search field
    Then product list should contain '(dirty data)'
    When I click on select all button
    And I select delete selected of bulk actions dropdown
    Then I should see delete confirmation popover
    And I click on delete checkbox
    And I click on confirm bulk button
    Then product list should not contain '(dirty data)'

  @productListingSoldOutUI-3 @fixture-payment @fixture-delivery
  Scenario: check product enough stock > checkout > out of stock on product at shop advanced/product list/category list/product search page
    Given I am on Product Create Page
    When I pick product photo to product photo selector
    Then I should see delete photo button
    And I click on info tab
    And I fill '(dirty data) enough stock > checkout > out of stock' to english name field
    And I click on quantity and pricing tab
    And I fill "10" to regular price field
    And I fill "10" to quantity field
    And I scroll down to id
    And I click on add button
    Then I should be redirected to Product Edit Page

    Given I am on Product Index Page
    And I click on 2nd row of edit button
    Then I should be redirected to Product Edit Page
    When I click on tab included "Info"
    Then I should see related product collapse
    And I click on related product collapse
    When I click on related product custom button
    Then I should see popup
    When I click on 1st related product add button

    And I click on popup save button
    And I click on update button
    Then I should be redirected to Product Index Page
    And I should see alert

    Given I am on Shop Product Index Page
    And I input "enough stock > checkout > out of stock" to search field
    Then 1st product of products list should contain 'enough stock > checkout > out of stock'
    And I click on 1st product of products list
    Then I should be redirected to Shop Product Show Page
    When I fill "10" to product quantity field
    When I click on add to cart button
    Then I should see cart panel
    When I click on checkout button
    Then I should be redirected to Shop Cart Page
    And I select country dropdown option included "Taiwan" of country list dropdown
    And I wait for 5 seconds for loading
    And I select delivery dropdown option included "Custom Delivery" of delivery method dropdown
    And I wait for 5 seconds for loading
    And I select payment dropdown option included "Custom" of payment method dropdown
    And I wait for 5 seconds for loading
    And I click on proceed to checkout button
    Then I should be redirected to Shop Checkout Page
    When I fill name to name field
    And I fill email to email address field
    And I fill phone to contact number field
    And I click on same as checkbox
    And I click on agree terms checkbox
    And I click on place order button
    Then I should be redirected to Shop Order Confirm Page

    Given I am on Shop Product Index Page
    Then 1st product of products list should contain 'enough stock > checkout > out of stock'
    Then 1st product of products list should contain "SOLD OUT"
    And I input 'enough stock > checkout > out of stock' to search field
    Then breadcrumb should contain 'enough stock > checkout > out of stock'
    Then 1st product of products list should contain 'enough stock > checkout > out of stock'
    Then 1st product of products list should contain "SOLD OUT"
    And I click on 1st row of categories
    Then product of products list included 'enough stock > checkout > out of stock' and same order of product of products list should also contain 'SOLD OUT'
    And I input '(dirty data) test sold out' to search field
    Then breadcrumb should contain '(dirty data) test sold out'
    Then 1st product of products list should contain '(dirty data) test sold out'
    When I click on 1st product of products list
    Then I should be redirected to Shop Product Show Page
    And I scroll down to product of related products
    Then 1st product of related products should contain "enough stock > checkout > out of stock"
    Then 1st product of related products should contain "SOLD OUT"
    Given I am on Pages Page
    When I click on add advanced page button
    Then I should be redirected to Advanced Select Page
    When I click on 2th template
    Then I should be redirected to Page Builder Page
    Then I should see skip the guide button
    When I click on skip the guide button
    When I click on menu button
    Then I should see menu
    Then I should see single product button
    When I drag single product button to top location
    And I check and click empty single product
    And I wait for 3 seconds for loading
    Then I should see popup
    When I input 'enough stock > checkout > out of stock' to popup search field
    When I click on popup product included 'enough stock > checkout > out of stock'
    And I click on popup save button
    Then I should see single product
    And I click on save button
    Then I should see view page button
    And I click on view page button
    And I switch to 2 of tabs
    Then I should be redirected to Shop Advanced Page
    Then 1st product should contain "enough stock > checkout > out of stock"
    Then 1st product should contain "SOLD OUT"
    And ---ROLL BACK---
    Given I am on Pages Page
    When I click on delete button
    Then I should see popover
    And I click on confirm button
    Then I click on ok button
    Given I am on Product Setting Page
    Then I should see sold out toggle
    When I click on sold out toggle
    When I check and click sold out toggle on
    And I click on update button
    Then I should see alert
    Then sold out toggle should not be checked
    Given I am on Product Index Page
    When I input "(dirty data)" to search field
    Then product list should contain '(dirty data)'
    When I click on select all button
    And I select delete selected of bulk actions dropdown
    Then I should see delete confirmation popover
    And I click on delete checkbox
    And I click on confirm bulk button
    Then product list should not contain '(dirty data)'