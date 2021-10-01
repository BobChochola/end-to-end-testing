@BaseCase @Admin @Storefront @checkProductPrice @fixture-shop @fixture-delivery @fixture-payment
Feature: Check product price in product index page, shop product index page, shop product show page
  As a User
  I would have correct price after create/edit product in prodcut index page, shop product index page and shop product show page

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

  @EAT-991 @EAT-991-1
  Scenario: Check no variation product price in product index page, shop product index page, shop product show page
    Given I am on Product Create Page
    When I pick product photo to product photo selector
    Then I should see delete photo button
    And I click on info tab
    And I fill "(dirty data)check price 1st product" to english name field
    And I click on quantity and pricing tab
    And I fill "20" to regular price field
    And I fill "15" to sale price field
    And I fill "10" to quantity field
    And I scroll down to breadcrumb
    And I click on add button
    Then I should see alert
    Then I should be redirected to Product Edit Page

    Given I am on Product Index Page
    Then 1st row of product list should contain "check price 1st product"
    Then 1st row of regular price list should contain "NT$20"
    Then 1st row of sale price list should contain "NT$15"
    Then 1st row of quantity list should contain "10"

    Given I am on Shop Product Index Page
    When I input "check price 1st product" to search field
    Then 1st product of products list should contain 'check price 1st product'
    Then product strikethrough regular price should contain 'NT$20'
    Then product sale price should contain 'NT$15'
    And I click on 1st product of products list
    Then I should be redirected to Shop Product Show Page
    Then Strikethrough regular price should contain 'NT$20'
    Then sale price should contain "NT$15"
    When I click on add to cart button
    Then I should see cart panel
    Then cart panel price list should contain "NT$15"
    When I click on checkout button
    Then I should be redirected to Shop Cart Page
    Then row of unit price should contain "NT$20"
    Then row of unit price should contain "NT$15"

    Given I am on Product Index Page
    Then 1st row of product list should contain "check price 1st product"
    And I click on 1st row of edit button
    Then I should be redirected to Product Edit Page
    And I click on quantity and pricing tab
    And I fill "100" to regular price field
    And I fill "50" to sale price field
    And I fill "5" to member price field
    And I click on update button
    
    Then I should be redirected to Product Index Page
    And I should see alert
    Then 1st row of product list should contain "check price 1st product"
    Then 1st row of regular price list should contain "NT$100"
    Then 1st row of sale price list should contain "NT$50"
    Then 1st row of quantity list should contain "10"

    Given I am on Shop Product Index Page
    When I input "check price 1st product" to search field
    Then 1st product of products list should contain 'check price 1st product'
    Then product strikethrough regular price should contain 'NT$100'
    Then product sale price should contain 'NT$50'
    And I click on 1st product of products list
    Then I should be redirected to Shop Product Show Page
    Then Strikethrough regular price should contain 'NT$100'
    Then sale price should contain "NT$50"
    When I click on add to cart button
    Then I should see cart panel
    Then cart panel price list should contain "NT$50"
    When I click on checkout button
    Then I should be redirected to Shop Cart Page
    Then row of unit price should contain "NT$100"
    Then row of unit price should contain "NT$50"

    Given I am on Shop Login Page
    And I fill email to email field
    And I fill password to password field
    When I click on submit button
    Then I should be redirected to Shop Cart Page
    When I select language dropdown option included 'English' of language dropdown
    And I wait for 3 seconds for loading
    Then language dropdown should contain 'English'

    Given I am on Shop Product Index Page
    When I input "check price 1st product" to search field
    Then 1st product of products list should contain 'check price 1st product'
    Then I should see member price flag
    Then product strikethrough regular price should contain 'NT$100'
    Then product sale price should contain 'NT$5'
    And I click on 1st product of products list

    Then I should be redirected to Shop Product Show Page
    Then Strikethrough regular price should contain 'NT$100'
    Then sale price should contain "NT$5 Member Only"
    When I click on add to cart button
    Then I should see cart panel
    Then cart panel price list should contain "NT$5"
    When I click on checkout button
    Then I should be redirected to Shop Cart Page
    Then row of unit price should contain "NT$100"
    Then row of unit price should contain "NT$5"
    And ---ROLL BACK---
    Given I am on Product Index Page
    When I click row of product checkbox for the same order of row of product name included 'check price 1st product'
    When I select delete selected of bulk actions dropdown
    Then I should see delete confirmation popover
    Then I click on delete checkbox
    Then I click on confirm bulk button

  @EAT-991 @EAT-991-2
  Scenario: Check 1 layer product price in product index page, shop product index page, shop product show page
    Given I am on Product Setting Page
    Then price range setting block should contain 'Currently using'

    Given I am on Product Create Page
    When I pick product photo to product photo selector
    Then I should see delete photo button
    And I click on info tab
    And I fill "check price 2nd product" to english name field
    And I click on variations tab
    And I click on variations toggle
    When I input "R" to add options field
    And I input "G" to add options field
    And I click on variations same price checkbox
    And I click on unlimited quantity checkbox
    Then I should see row of variation price field
    Then I should see row of variation member price field
    And I fill "50" to 1st row of variation price field
    And I fill "60" to 2nd row of variation price field
    And I fill "40" to 1st row of variation sale price field
    And I fill "30" to 2nd row of variation sale price field
    And I click on add button
    Then I should see alert
    Then I should be redirected to Product Edit Page

    Given I am on Product Index Page
    Then 1st row of product list should contain "check price 2nd product"
    Then 1st row of regular price list should contain "NT$50"
    Then 1st row of quantity list should contain "∞"

    Given I am on Shop Product Index Page
    When I input "check price 2nd product" to search field
    Then product of products list should contain 'check price 2nd product'
    Then product strikethrough regular price should contain 'NT$60'
    Then product sale price should contain 'NT$30 ~ NT$40'
    And I click on 1st product of products list

    Then I should be redirected to Shop Product Show Page
    Then Strikethrough regular price should contain 'NT$50'
    Then sale price should contain "NT$40"
    And I select dropdown option included 'G' of variation dropdown
    Then Strikethrough regular price should contain 'NT$60'
    Then sale price should contain "NT$30"
    When I click on add to cart button
    Then I should see cart panel
    Then cart panel price list should contain "NT$30"
    When I click on checkout button
    Then I should be redirected to Shop Cart Page
    Then row of unit price should contain "NT$60"
    Then row of unit price should contain "NT$30"

    Given I am on Product Index Page
    Then 1st row of product list should contain "check price 2nd product"
    And I click on 1st row of edit button
    Then I should be redirected to Product Edit Page
    And I click on variations tab
    Then I should see row of variation price field
    Then I should see row of variation member price field
    And I fill "45" to 1st row of variation price field
    And I fill "55" to 2nd row of variation price field
    And I fill "35" to 1st row of variation sale price field
    And I fill "25" to 1st row of variation sale price field
    And I fill "10" to 1st row of variation member price field
    And I fill "10" to 2nd row of variation member price field
    And I click on update button
    Then I should be redirected to Product Index Page
    And I should see alert
    Then I Refresh
    When I input "check price 2nd product" to search field
    Then 1st row of product list should contain "check price 2nd product"
    Then 1st row of regular price list should contain "NT$45"
    Then 1st row of sale price list should contain "NT$25"
    Then 1st row of quantity list should contain "∞"

    Given I am on Shop Product Index Page
    When I input "check price 2nd product" to search field
    Then product of products list should contain 'check price 2nd product'
    Then product strikethrough regular price should contain 'NT$55'
    Then product sale price should contain 'NT$25 ~ NT$30'
    And I click on 1st product of products list
    Then I should be redirected to Shop Product Show Page
    Then Strikethrough regular price should contain 'NT$45'
    Then sale price should contain "NT$25"
    And I select dropdown option included 'G' of variation dropdown
    Then Strikethrough regular price should contain 'NT$55'
    Then sale price should contain "NT$30"
    When I click on add to cart button
    Then I should see cart panel
    Then cart panel price list should contain "NT$30"
    When I click on checkout button
    Then I should be redirected to Shop Cart Page
    Then row of unit price should contain "NT$55"
    Then row of unit price should contain "NT$30"

    Given I am on Shop Login Page
    And I fill email to email field
    And I fill password to password field
    When I click on submit button
    Then I should be redirected to Shop Cart Page
    When I select language dropdown option included 'English' of language dropdown
    And I wait for 3 seconds for loading
    Then language dropdown should contain 'English'

    Given I am on Shop Product Index Page
    When I input "check price 2nd product" to search field
    Then product of products list should contain 'check price 2nd product'
    Then product strikethrough regular price should contain 'NT$55'
    Then product sale price should contain 'NT$10'
    Then I should see member price flag
    And I click on 1st product of products list

    Then I should be redirected to Shop Product Show Page
    Then Strikethrough regular price should contain "NT$45"
    Then sale price should contain "NT$10 Member Only"
    And I select dropdown option included 'G' of variation dropdown
    Then Strikethrough regular price should contain 'NT$55'
    Then sale price should contain "NT$10 Member Only"
    When I click on add to cart button
    Then I should see cart panel
    Then cart panel price list should contain "NT$10"
    When I click on checkout button
    Then I should be redirected to Shop Cart Page
    Then row of unit price should contain "NT$55"
    Then row of unit price should contain "NT$10"
    And ---ROLL BACK---
    Given I am on Product Index Page
    When I click row of product checkbox for the same order of row of product name included 'check price 2nd product'
    When I select delete selected of bulk actions dropdown
    Then I should see delete confirmation popover
    Then I click on delete checkbox
    Then I click on confirm bulk button

  @EAT-991 @EAT-991-3
  Scenario: Check 2 layer product price click same main product price in product index page, shop product index page, shop product show page
    Given I am on Product Create Page
    When I pick product photo to product photo selector
    Then I should see delete photo button
    And I click on info tab
    And I fill "check price 3rd product" to english name field
    And I click on quantity and pricing tab
    And I fill "20" to regular price field
    And I fill "15" to sale price field
    And I fill "10" to quantity field
    And I click on variations tab
    And I click on variations toggle
    When I input "R" to 1st add options field
    And I input "G" to 1st add options field
    And I click on add variation button
    When I input "M" to 2nd add options field
    And I input "L" to 2nd add options field
    And I click on unlimited quantity checkbox
    And I click on add button
    Then I should see alert
    Then I should be redirected to Product Edit Page

    Given I am on Product Index Page
    Then 1st row of product list should contain "check price 3rd product"
    Then 1st row of regular price list should contain "NT$20"
    Then 1st row of quantity list should contain "∞"

    Given I am on Shop Product Index Page
    When I input "check price 3rd product" to search field
    Then product of products list should contain 'check price 3rd product'
    Then product strikethrough regular price should contain 'NT$20'
    Then product sale price should contain 'NT$15'
    When I click on 1st product of products list

    Then I should be redirected to Shop Product Show Page
    Then Strikethrough regular price should contain 'NT$20'
    Then sale price should contain "NT$15"
    And I select dropdown option included "L" of 2nd variation dropdown
    Then Strikethrough regular price should contain 'NT$20'
    Then sale price should contain "NT$15"
    And I select dropdown option included 'G' of variation dropdown
    Then Strikethrough regular price should contain 'NT$20'
    Then sale price should contain "NT$15"
    And I select dropdown option included "M" of 2nd variation dropdown
    Then Strikethrough regular price should contain 'NT$20'
    Then sale price should contain "NT$15"
    When I click on add to cart button
    Then I should see cart panel
    Then cart panel price list should contain "NT$15"
    When I click on checkout button
    Then I should be redirected to Shop Cart Page
    Then row of unit price should contain "NT$20"
    Then row of unit price should contain "NT$15"

    Given I am on Product Index Page
    Then 1st row of product list should contain "check price 3rd product"
    And I click on 1st row of edit button
    Then I should be redirected to Product Edit Page
    And I click on quantity and pricing tab
    And I fill "40" to regular price field
    And I fill "20" to sale price field
    And I fill "5" to member price field
    And I click on update button
    Then I should be redirected to Product Index Page
    And I should see alert
    When I input "check price 3rd product" to search field
    Then I Refresh
    Then 1st row of product list should contain "check price 3rd product"
    Then 1st row of regular price list should contain "NT$40"
    Then 1st row of sale price list should contain "NT$20"
    Then 1st row of quantity list should contain "∞"

    Given I am on Shop Product Index Page
    When I input "check price 3rd product" to search field
    Then product of products list should contain 'check price 3rd product'
    Then product strikethrough regular price should contain 'NT$40'
    Then product sale price should contain 'NT$20'
    And I click on 1st product of products list
    Then I should be redirected to Shop Product Show Page
    Then Strikethrough regular price should contain 'NT$40'
    Then sale price should contain "NT$20"
    And I select dropdown option included 'G' of variation dropdown
    Then Strikethrough regular price should contain 'NT$40'
    Then sale price should contain "NT$20"
    And I select dropdown option included 'L' of 2nd variation dropdown
    Then Strikethrough regular price should contain 'NT$40'
    Then sale price should contain "NT$20"
    And I select dropdown option included 'R' of variation dropdown
    Then Strikethrough regular price should contain 'NT$40'
    Then sale price should contain "NT$20"
    When I click on add to cart button
    Then I should see cart panel
    Then cart panel price list should contain "NT$20"
    When I click on checkout button
    Then I should be redirected to Shop Cart Page
    Then row of unit price should contain "NT$40"
    Then row of unit price should contain "NT$20"

    Given I am on Shop Login Page
    And I fill email to email field
    And I fill password to password field
    When I click on submit button
    Then I should be redirected to Shop Cart Page
    When I select language dropdown option included 'English' of language dropdown
    And I wait for 3 seconds for loading
    Then language dropdown should contain 'English'

    Given I am on Shop Product Index Page
    When I input "check price 3rd product" to search field
    Then product of products list should contain 'check price 3rd product'
    Then product strikethrough regular price should contain 'NT$40'
    Then product sale price should contain 'NT$5'
    Then I should see 1 member price flag
    When I click on 1st product of products list

    Then I should be redirected to Shop Product Show Page
    Then Strikethrough regular price should contain 'NT$40'
    Then sale price should contain "NT$5 Member Only"
    And I select dropdown option included "L" of 2nd variation dropdown
    Then Strikethrough regular price should contain 'NT$40'
    Then sale price should contain "NT$5 Member Only"
    And I select dropdown option included 'G' of variation dropdown
    Then Strikethrough regular price should contain 'NT$40'
    Then sale price should contain "NT$5 Member Only"
    And I select dropdown option included "M" of 2nd variation dropdown
    Then Strikethrough regular price should contain 'NT$40'
    Then sale price should contain "NT$5 Member Only"
    When I click on add to cart button
    Then I should see cart panel
    Then cart panel price list should contain "NT$5"
    When I click on checkout button
    Then I should be redirected to Shop Cart Page
    Then row of unit price should contain "NT$40"
    Then row of unit price should contain "NT$5"
    And ---ROLL BACK---
    Given I am on Product Index Page
    When I click row of product checkbox for the same order of row of product name included 'check price 3rd product'
    When I select delete selected of bulk actions dropdown
    Then I should see delete confirmation popover
    Then I click on delete checkbox
    Then I click on confirm bulk button