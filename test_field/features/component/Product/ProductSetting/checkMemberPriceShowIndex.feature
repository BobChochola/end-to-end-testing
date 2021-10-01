@BaseCase @ImageService @Admin @CRM @Product @Setting @checkMemberPriceShowIndex @EAT-566
Feature: Member Price Show Product Index by Toggle
  As a user of Shopline
  I want to create multiple products
  So that my customer can see those products after created

  Background:
    Given I am on Admin Login Page
    When I fill correct account email to email field
    And I fill correct account password to password field
    And I click on login button
    Then I should see successful login
    Then I check intercom message notification frame and click clear intercom message button
    Then I check intercom message notification frame and click intercom message close button
    When I check new feature alert notification frame and click new feature alert close button
    When I check and click exclude products panel close button
    When I check and click no thanks button

    Given I am on Product Setting Page
    Then I should see member price toggle
    When I check and click member price toggle on
    Then member price toggle should not be checked
    When I click on update button
    Then I should see alert

  @EAT-566-1
  Scenario: Check member price language
    Given I am on Product Setting Page
    Then member price title should contain 'Member price shown on product related pages whether login or not'
    Then I should see member price en faq
    Then member price content should contain 'Turn ON this function: Customer can see member price on product related pages whether login or not.'
    Then member price content should contain 'Turn OFF this function: Customer can only see member price when login as a member.'
    Then I should see member price toggle
    Then member price toggle should not be checked
    When I check and click member price toggle off
    When I click on update button
    Then member price toggle should be checked
    When I select language dropdown option included '中文(繁)' of language dropdown
    Then member price title should contain '會員價於登入前即顯示於商品相關頁開關'
    Then I should see member price zh faq
    Then member price content should contain '啟用功能：顧客於登入前，於商品相關頁即可看到會員價格，但不能在未登入情況下以會員價結帳。'
    Then member price content should contain '關閉功能：顧客於登入前，於任何產品頁皆無法看到會員價格。'
    And ---ROLL BACK---
    And I click on member price toggle
    When I click on update button
    Then member price toggle should not be checked

  @EAT-566-2 @fixture-shop
  Scenario: Single variation with member price
    Given I am on Product Create Page
    When I pick product photo to product photo selector
    Then I should see delete photo button
    And I click on info tab
    And I fill '(dirty data) Member pricing product single variation' to english name field
    And I click on quantity and pricing tab
    And I fill '100' to regular price field
    And I fill '50' to member price field
    And I click on unlimited quantity checkbox
    And I click on add button
    Then I should see alert
    Then I should be redirected to Product Edit Page
    Given I am on Product Index Page
    Then I should see row of product photo list
    Then I should have image product photo for row of product photo list
    Then 1st row of product list should contain 'Member pricing product'
    Then 1st row of regular price list should contain 'NT$100'
    Then 1st row of regular price list should not contain 'NT$50'
    And I switch to 2 of tabs
    Given I am on Shop Product Index Page
    When I input 'Member pricing product single variation' to search field
    Then 1st product of products list should contain 'Member pricing product single variation'
    Then 1st product of products list should contain "NT$100"
    Then 1st product of products list should not contain "NT$50"
    When I click on 1st product of products list
    Then I should be redirected to Shop Product Show Page
    Then I should not see reminder member price
    And I switch to 1 of tabs
    Given I am on Product Setting Page
    Then I should see member price toggle
    Then member price toggle should not be checked
    When I check and click member price toggle off
    When I click on update button
    Then member price toggle should be checked
    And I switch to 2 of tabs
    Then I should be redirected to Shop Product Show Page
    Then I Refresh
    Then I should see reminder member price
    Then regular price should equal to 'NT$100'
    Then reminder member price should equal to 'NT$50 Member Only'
    And ---ROLL BACK---
    Given I am on Product Index Page
    When I select product operations dropdown option included 'Delete' of product operations dropdown
    Then I should see delete confirmation popover
    And I click on delete checkbox
    And I click on confirm delete button
    Then product list should not contain 'Member pricing product'
    Given I am on Product Setting Page
    And I click on member price toggle
    When I click on update button
    Then member price toggle should not be checked

  @EAT-566-3 @fixture-shop
  Scenario: Variations with member price
    Given I am on Product Create Page
    When I pick product photo to product photo selector
    Then I should see delete photo button
    And I click on info tab
    And I fill '(dirty data) Member pricing product two variation' to english name field
    And I click on variations tab
    And I click on variations toggle
    And I input 'Red' to add options field
    And I input 'Green' to add options field
    When I click on add variation button
    And I input 'S' to 2nd add options field
    And I input 'M' to 2nd add options field
    And I click on variations same price checkbox
    And I fill '50' to 1st row of variation price field
    And I fill '50' to 2nd row of variation price field
    And I fill '50' to 3rd row of variation price field
    And I fill '50' to 4th row of variation price field
    And I fill '40' to 1st row of variation member price field
    And I fill '30' to 2nd row of variation member price field
    And I fill '20' to 3rd row of variation member price field
    And I fill '10' to 4th row of variation member price field
    And I fill '40' to 1st row of variation quantity field
    And I fill '30' to 2nd row of variation quantity field
    And I fill '20' to 3rd row of variation quantity field
    And I fill '10' to 4th row of variation quantity field
    Then I scroll down to breadcrumb
    And I click on add button
    Then I should see alert
    Then I should be redirected to Product Edit Page
    Given I am on Product Index Page
    Then I should be redirected to Product Index Page
    Then I should see row of product photo list
    Then I should have image product photo for row of product photo list
    Then 1st row of product list should contain 'Member pricing product two variation'
    And I switch to 2 of tabs
    Given I am on Shop Product Index Page
    When I input 'Member pricing product two variation' to search field
    Then 1st product of products list should contain 'Member pricing product two variation'
    When I click on 1st product of products list
    Then I should be redirected to Shop Product Show Page
    Then I should not see member price
    And I switch to 1 of tabs

    Given I am on Product Setting Page
    Then I should see member price toggle
    Then member price toggle should not be checked
    When I click on member price toggle off
    Then member price toggle should be checked
    When I click on update button
    Then I should see alert

    And I switch to 2 of tabs
    Then I should be redirected to Shop Product Show Page
    Then I Refresh
    Then I should see reminder member price
    Then regular price should equal to 'NT$50'
    And I select variation option included 'Red' of 1st variation selector
    And I select variation option included 'S' of 2nd variation selector
    Then reminder member price should equal to 'NT$40 Member Only'
    And I select variation option included 'M' of 2nd variation selector
    Then reminder member price should equal to 'NT$30 Member Only'
    And I select variation option included 'Green' of 1st variation selector
    And I select variation option included 'M' of 2nd variation selector
    Then reminder member price should equal to 'NT$10 Member Only'
    And I select variation option included 'S' of 2nd variation selector
    Then reminder member price should equal to 'NT$20 Member Only'
    And ---ROLL BACK---
    Given I am on Product Index Page
    When I select product operations dropdown option included 'Delete' of product operations dropdown
    Then I should see delete confirmation popover
    And I click on delete checkbox
    And I click on confirm delete button
    Then product list should not contain 'Member pricing product two variation'
    Given I am on Product Setting Page
    And I click on member price toggle
    When I click on update button
    Then member price toggle should not be checked