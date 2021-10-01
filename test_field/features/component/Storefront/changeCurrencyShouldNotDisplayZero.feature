@BaseCase @Storefront @changeCurrencyShouldNotDisplayZero @fixture-shop
Feature: Change currency should not display zero
  As a User
  When I change currency, I should not see price displaying 0

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

    Given I am on Design Page
    Then I click on advanced setting tab
    And I click on currency label included "Allow Customers to select the displayed currency"
    And I click on save button
    And I click on publish button
    Then I should see checked checkbox
    And I wait for 10 seconds for loading

    Given I am on Product Setting Page
    Then price range setting block should contain 'Currently using'

    Given I am on Product Create Page
    When I pick product photo to product photo selector
    Then I should see delete photo button
    And I click on info tab
    And I fill "(dirty data) price include 0" to english name field
    And I click on variations tab
    When I click on variations toggle
    And I input "a" to add options field
    And I input "b" to add options field
    And I input "c" to add options field
    And I input "d" to add options field
    Then I click on variations same price checkbox

    And I fill "0" to 1st row of variation price field
    And I fill "980" to 2nd row of variation price field
    And I fill "970" to 3rd row of variation price field
    And I fill "0" to 4th row of variation price field

    And I fill "890" to 1st row of variation sale price field
    And I fill "0" to 2nd row of variation sale price field
    And I fill "870" to 3rd row of variation sale price field
    And I fill "0" to 4th row of variation sale price field

    And I fill "790" to 1st row of variation member price field
    And I fill "780" to 2nd row of variation member price field
    And I fill "0" to 3rd row of variation member price field
    And I fill "0" to 4th row of variation member price field
    Then I scroll down to breadcrumb
    When I click on add button
    Then I should be redirected to Product Edit Page

    Given I am on Product Create Page
    When I pick product photo to product photo selector
    Then I should see delete photo button
    And I click on info tab
    And I fill "(dirty data) price include null" to english name field
    And I click on variations tab
    When I click on variations toggle
    And I input "a" to add options field
    And I input "b" to add options field
    And I input "c" to add options field
    And I input "d" to add options field
    Then I click on variations same price checkbox

    And I fill "990" to 1st row of variation price field
    And I fill "980" to 2nd row of variation price field
    And I fill "970" to 3rd row of variation price field
    And I fill "960" to 4th row of variation price field

    And I fill "890" to 1st row of variation sale price field
    And I fill "870" to 3rd row of variation sale price field

    And I fill "790" to 1st row of variation member price field
    And I fill "780" to 2nd row of variation member price field
    Then I scroll down to breadcrumb
    When I click on add button
    Then I should be redirected to Product Edit Page

    Given I am on Product Create Page
    When I pick product photo to product photo selector
    Then I should see delete photo button
    And I click on info tab
    And I fill "(dirty data) only regular price" to english name field
    And I click on variations tab
    When I click on variations toggle
    And I input "a" to add options field
    And I input "b" to add options field
    And I input "c" to add options field
    And I input "d" to add options field
    Then I click on variations same price checkbox

    And I fill "990" to 1st row of variation price field
    And I fill "980" to 2nd row of variation price field
    And I fill "970" to 3rd row of variation price field
    And I fill "0" to 4th row of variation price field

    And I fill "0" to 1st row of variation sale price field
    And I fill "0" to 2nd row of variation sale price field
    And I fill "0" to 3rd row of variation sale price field
    And I fill "0" to 4th row of variation sale price field

    And I fill "0" to 1st row of variation member price field
    And I fill "0" to 2nd row of variation member price field
    And I fill "0" to 3rd row of variation member price field
    And I fill "0" to 4th row of variation member price field
    Then I scroll down to breadcrumb
    When I click on add button
    Then I should be redirected to Product Edit Page

    Given I am on Product Create Page
    When I pick product photo to product photo selector
    Then I should see delete photo button
    And I click on info tab
    And I fill "(dirty data) only member price" to english name field
    And I click on variations tab
    When I click on variations toggle
    And I input "a" to add options field
    And I input "b" to add options field
    And I input "c" to add options field
    And I input "d" to add options field
    Then I click on variations same price checkbox

    And I fill "0" to 1st row of variation price field
    And I fill "0" to 2nd row of variation price field
    And I fill "0" to 3rd row of variation price field
    And I fill "0" to 4th row of variation price field

    And I fill "0" to 1st row of variation sale price field
    And I fill "0" to 2nd row of variation sale price field
    And I fill "0" to 3rd row of variation sale price field
    And I fill "0" to 4th row of variation sale price field

    And I fill "790" to 1st row of variation member price field
    And I fill "780" to 2nd row of variation member price field
    And I fill "770" to 3rd row of variation member price field
    And I fill "760" to 4th row of variation member price field
    Then I scroll down to breadcrumb
    When I click on add button
    Then I should be redirected to Product Edit Page

    Given I am on Product Create Page
    When I pick product photo to product photo selector
    Then I should see delete photo button
    And I click on info tab
    And I fill "(dirty data) all price 0" to english name field
    And I click on variations tab
    When I click on variations toggle
    And I input "a" to add options field
    And I input "b" to add options field
    And I input "c" to add options field
    And I input "d" to add options field
    Then I click on variations same price checkbox

    And I fill "0" to 1st row of variation price field
    And I fill "0" to 2nd row of variation price field
    And I fill "0" to 3rd row of variation price field
    And I fill "0" to 4th row of variation price field

    And I fill "0" to 1st row of variation sale price field
    And I fill "0" to 2nd row of variation sale price field
    And I fill "0" to 3rd row of variation sale price field
    And I fill "0" to 4th row of variation sale price field

    And I fill "0" to 1st row of variation member price field
    And I fill "0" to 2nd row of variation member price field
    And I fill "0" to 3rd row of variation member price field
    And I fill "0" to 4th row of variation member price field
    Then I scroll down to breadcrumb
    When I click on add button
    Then I should be redirected to Product Edit Page

  @EAT-941 @EAT-941-1
  Scenario: Change currency should not display zero in v1 theme
    Given I am on Shop Product Index Page
    When I input "price include 0" to search field
    Then product of products list should contain 'price include 0'
    Then product price should equal to 'NT$870 ~ NT$980'
    When I input "price include null" to search field
    Then product of products list should contain 'price include null'
    Then product price should equal to 'NT$870 ~ NT$980'
    When I input "only regular price" to search field
    Then product of products list should contain 'only regular price'
    Then product price should equal to 'NT$970 ~ NT$990'
    When I input "only member price" to search field
    Then product of products list should contain 'only member price'
    Then 1st product of products list should not contain 'NT$'
    When I input "all price 0" to search field
    Then product of products list should contain 'all price 0'
    Then 1st product of products list should not contain 'NT$'
    When I select currency included 'HKD' of currency dropdown
    When I input "price include 0" to search field
    Then product of products list should contain 'price include 0'
    Then product price should contain 'HK$'
    When I select currency included 'TWD' of currency dropdown
    When I input "price include 0" to search field
    Then product of products list should contain 'price include 0'
    Then product price should equal to 'NT$870 ~ NT$980'
    When I input "price include null" to search field
    Then product of products list should contain 'price include null'
    Then product price should equal to 'NT$870 ~ NT$980'
    When I input "only regular price" to search field
    Then product of products list should contain 'only regular price'
    Then product price should equal to 'NT$970 ~ NT$990'
    When I input "only member price" to search field
    Then product of products list should contain 'only member price'
    Then 1st product of products list should not contain 'NT$'
    When I input "all price 0" to search field
    Then product of products list should contain 'all price 0'
    Then 1st product of products list should not contain 'NT$'

    Given I am on Shop Login Page
    And I fill email to email field
    And I fill password to password field
    When I click on submit button
    Then I should be redirected to Shop Product Index Page
    When I select language dropdown option included 'English' of language dropdown
    And I wait for 3 seconds for loading
    Then language dropdown should contain 'English'
    When I input "price include 0" to search field
    Then product of products list should contain 'price include 0'
    Then product price should equal to 'NT$780 ~ NT$870'
    When I input "price include null" to search field
    Then product of products list should contain 'price include null'
    Then product price should equal to 'NT$780 ~ NT$960'
    When I input "only regular price" to search field
    Then product of products list should contain 'only regular price'
    Then product price should equal to 'NT$970 ~ NT$990'
    When I input "only member price" to search field
    Then product of products list should contain 'only member price'
    Then product price should equal to 'NT$760 ~ NT$790'
    When I input "all price 0" to search field
    Then product of products list should contain 'all price 0'
    Then 1st product of products list should not contain 'NT$'
    When I select currency included 'HKD' of currency dropdown
    When I input "price include 0" to search field
    Then product of products list should contain 'price include 0'
    Then product price should contain 'HK$'
    When I select currency included 'TWD' of currency dropdown
    When I input "price include 0" to search field
    Then product of products list should contain 'price include 0'
    Then product price should equal to 'NT$780 ~ NT$870'
    When I input "price include null" to search field
    Then product of products list should contain 'price include null'
    Then product price should equal to 'NT$780 ~ NT$960'
    When I input "only regular price" to search field
    Then product of products list should contain 'only regular price'
    Then product price should equal to 'NT$970 ~ NT$990'
    When I input "only member price" to search field
    Then product of products list should contain 'only member price'
    Then product price should equal to 'NT$760 ~ NT$790'
    When I input "all price 0" to search field
    Then product of products list should contain 'all price 0'
    Then 1st product of products list should not contain 'NT$'

    And ---ROLL BACK---
    Given I am on Product Index Page
    When I click row of product checkbox for the same order of row of product name included 'price include 0'
    When I click row of product checkbox for the same order of row of product name included 'price include null'
    When I click row of product checkbox for the same order of row of product name included 'only regular price'
    When I click row of product checkbox for the same order of row of product name included 'only member price'
    When I click row of product checkbox for the same order of row of product name included 'all price 0'
    When I select delete selected of bulk actions dropdown
    Then I should see delete confirmation popover
    Then I click on delete checkbox
    Then I click on confirm bulk button
    And I wait for 5 seconds for loading
    Given I am on Design Page
    Then I click on advanced setting tab
    And I click on currency label included "Allow Customers to select the displayed currency"
    And I click on save button
    And I click on publish button

  @EAT-941 @EAT-941-2 @theme-kingsman @fixture-without-layout-engine
  Scenario: Change currency should not display zero in v2 theme
    Given I am on Shop Product Index Layout V Two Page
    When I hover over search icon
    And I input "price include 0" to search field
    Then kingsman product of products list should contain 'price include 0'
    Then product price should equal to 'NT$870 ~ NT$980'
    When I hover over search icon
    And I input "price include null" to search field
    Then kingsman product of products list should contain 'price include null'
    Then product price should equal to 'NT$870 ~ NT$980'
    When I hover over search icon
    And I input "only regular price" to search field
    Then kingsman product of products list should contain 'only regular price'
    Then product price should equal to 'NT$970 ~ NT$990'
    When I hover over search icon
    And I input "only member price" to search field
    Then kingsman product of products list should contain 'only member price'
    Then 1st kingsman product of products list should not contain 'NT$'
    When I hover over search icon
    And I input "all price 0" to search field
    Then kingsman product of products list should contain 'all price 0'
    Then 1st kingsman product of products list should not contain 'NT$'
    When I select currency included 'HKD' of currency dropdown
    When I hover over search icon
    And I input "price include 0" to search field
    Then kingsman product of products list should contain 'price include 0'
    Then product price should contain 'HK$'
    When I select currency included 'TWD' of currency dropdown
    When I hover over search icon
    And I input "price include 0" to search field
    Then kingsman product of products list should contain 'price include 0'
    Then product price should equal to 'NT$870 ~ NT$980'
    When I hover over search icon
    And I input "price include null" to search field
    Then kingsman product of products list should contain 'price include null'
    Then product price should equal to 'NT$870 ~ NT$980'
    When I hover over search icon
    And I input "only regular price" to search field
    Then kingsman product of products list should contain 'only regular price'
    Then product price should equal to 'NT$970 ~ NT$990'
    When I hover over search icon
    And I input "only member price" to search field
    Then kingsman product of products list should contain 'only member price'
    Then 1st kingsman product of products list should not contain 'NT$'
    When I hover over search icon
    And I input "all price 0" to search field
    Then kingsman product of products list should contain 'all price 0'
    Then 1st kingsman product of products list should not contain 'NT$'

    Given I am on Shop Login Page
    And I fill email to email field
    And I fill password to password field
    When I click on submit button
    Then I should be redirected to Shop Product Index Layout V Two Page
    When I select language dropdown option included 'English' of language dropdown
    And I wait for 3 seconds for loading
    Then language dropdown should contain 'English'
    When I hover over search icon
    And I input "price include 0" to search field
    Then kingsman product of products list should contain 'price include 0'
    Then product price should equal to 'NT$780 ~ NT$870'
    When I hover over search icon
    And I input "price include null" to search field
    Then kingsman product of products list should contain 'price include null'
    Then product price should equal to 'NT$780 ~ NT$960'
    When I hover over search icon
    And I input "only regular price" to search field
    Then kingsman product of products list should contain 'only regular price'
    Then product price should equal to 'NT$970 ~ NT$990'
    When I hover over search icon
    And I input "only member price" to search field
    Then kingsman product of products list should contain 'only member price'
    Then product price should equal to 'NT$760 ~ NT$790'
    When I hover over search icon
    And I input "all price 0" to search field
    Then kingsman product of products list should contain 'all price 0'
    Then 1st kingsman product of products list should not contain 'NT$'
    When I select currency included 'HKD' of currency dropdown
    When I hover over search icon
    And I input "price include 0" to search field
    Then kingsman product of products list should contain 'price include 0'
    Then product price should contain 'HK$'
    When I select currency included 'TWD' of currency dropdown
    When I hover over search icon
    And I input "price include 0" to search field
    Then kingsman product of products list should contain 'price include 0'
    Then product price should equal to 'NT$780 ~ NT$870'
    When I hover over search icon
    And I input "price include null" to search field
    Then kingsman product of products list should contain 'price include null'
    Then product price should equal to 'NT$780 ~ NT$960'
    When I hover over search icon
    And I input "only regular price" to search field
    Then kingsman product of products list should contain 'only regular price'
    Then product price should equal to 'NT$970 ~ NT$990'
    When I hover over search icon
    And I input "only member price" to search field
    Then kingsman product of products list should contain 'only member price'
    Then product price should equal to 'NT$760 ~ NT$790'
    When I hover over search icon
    And I input "all price 0" to search field
    Then kingsman product of products list should contain 'all price 0'
    Then 1st kingsman product of products list should not contain 'NT$'

    And ---ROLL BACK---
    Given I am on Product Index Page
    When I click row of product checkbox for the same order of row of product name included 'price include 0'
    When I click row of product checkbox for the same order of row of product name included 'price include null'
    When I click row of product checkbox for the same order of row of product name included 'only regular price'
    When I click row of product checkbox for the same order of row of product name included 'only member price'
    When I click row of product checkbox for the same order of row of product name included 'all price 0'
    When I select delete selected of bulk actions dropdown
    Then I should see delete confirmation popover
    Then I click on delete checkbox
    Then I click on confirm bulk button
    And I wait for 5 seconds for loading
    Given I am on Design Page
    Then I click on advanced setting tab
    And I click on currency label included "Allow Customers to select the displayed currency"
    And I click on save button
    And I click on publish button