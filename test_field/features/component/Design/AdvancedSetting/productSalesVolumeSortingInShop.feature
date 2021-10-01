@BaseCase @Admin @Storefront @Product @Design @AdvancedSetting @productSalesVolumeSortingInShop @fixture-shop @fixture-product-for-sales-sorting @EAT-1043
Feature: Product sort by sale quantity
  As a guest
  I want to find product that I want
  So I can input keyword to search field and find it

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

  @EAT-1043-1
  Scenario: When sort by product sales volume checkbox off, I can not sort by url.
    Given I am on Shop Product Index Page
    When I open new tab and redirect to quantity sold url
    Then I should be redirected to Shop Product Index Page
    When I click on sort dropdown
    Then I should see 5 sort dropdown option
    And sort dropdown should not contain 'Sales Volume: High to Low'
    And 1st sort dropdown option should contain 'Sort by'
    And 2nd sort dropdown option should contain 'Newest to Oldest'
    And 3rd sort dropdown option should contain 'Oldest to Newest'
    And 4th sort dropdown option should contain 'Price: High to Low'
    And 5th sort dropdown option should contain 'Price: Low to High'

  @EAT-1043-2
  Scenario: I want to check Sales Volume High To Low is correct
    Given I am on Product Index Page
    When I click row of edit button for the same order of row of product name included 'No.4 <No layer> <Hidden price>'
    Then I should be redirected to Product Edit Page
    When I click on tab included 'Quantity & Pricing'
    When I click on hide price toggle
    And I wait for 3 seconds loading
    Then hide price toggle should be checked
    And I click on update button
    Then I should be redirected to Product Index Page

    Given I am on Product Index Page
    When I click row of edit button for the same order of row of product name included 'No.5 <One layer> <Preset Publish Date> <Different price as main product>'
    Then I should be redirected to Product Edit Page
    When I click on tab included 'Settings'
    When I click on preset publish date button
    And I click on next month button
    And I click on 1st available date button
    And I click on done button
    And I click on update button
    Then I should be redirected to Product Index Page

    Given I am on Product Index Page
    When I click row of edit button for the same order of row of product name included 'No.6 <Two layer> <Preorder Product> <Different price as main product>'
    Then I should be redirected to Product Edit Page
    When I click on tab included 'Settings'
    When I click on preorder product toggle
    Then preorder product toggle should be checked
    And I should see preorder note field
    Then I fill 'test' to preorder note field
    And I click on update button
    Then I should be redirected to Product Index Page

    Given I am on Design Page
    When I click on advanced setting tab
    Then advanced setting preference should contain 'Enable "sort by product sales volume" on storefront'
    Then advanced setting preference should contain 'Customers will be able to sort products by sales volume'
    When I select language dropdown option included '繁' of language dropdown
    Then advanced setting preference should contain '啟用「商品銷量排序」於商店前台'
    Then advanced setting preference should contain '顧客將能以商品銷量來排序商品'
    When I select language dropdown option included '简' of language dropdown
    Then advanced setting preference should contain '启用「商品销量排序」于商店前台'
    Then advanced setting preference should contain '顾客将能以商品销量来排序商品'
    When I select language dropdown option included 'English' of language dropdown
    Then I should see sort by product sales volume checkbox
    When I check and click unchecked sort by product sales volume checkbox
    And I click on save button
    And I click on publish button
    Then I wait for 10 seconds loading
    Then I should not see publish button

    Given I am on Shop Product Index Page
    Then I click on sort dropdown
    And 6th sort dropdown option should contain 'Sales Volume: High to Low'
    When I select language dropdown option included '繁' of language dropdown
    Then I click on sort dropdown
    And 6th sort dropdown option should contain '銷量: 由高至低'
    When I select language dropdown option included 'English' of language dropdown
    Then I click on sort dropdown
    When I click on sort dropdown option included 'Sales Volume: High to Low'
    Then 1st product of products list should contain 'No.1 <No layer>'
    # 排序邏輯跟原有的不同(若有銷量相等的時候，商品創建時間由新到舊做排序)testuser0114是對的, previewtw97是錯的
    # Then 2nd product of products list should contain 'No.2 <Two layer> <Member price> <Same price as main product> <Same quantity sold as No.3>'
    # Then 3rd product of products list should contain 'No.3 <One layer> <sale price> <Same price as main product> <Same quantity sold as No.2>'
    Then 4th product of products list should contain 'No.4 <No layer> <Hidden price>'
    Then 5th product of products list should contain 'No.5 <One layer> <Preset Publish Date> <Different price as main product>'
    Then 6th product of products list should contain 'No.6 <Two layer> <Preorder Product> <Different price as main product>'
    Then 7th product of products list should contain 'No.7 <Sold out>'

    And ---ROLL BACK---
    Given I am on Product Index Page
    When I click row of edit button for the same order of row of product name included 'No.4 <No layer> <Hidden price>'
    Then I should be redirected to Product Edit Page
    When I click on tab included 'Quantity & Pricing'
    When I click on hide price toggle
    And I wait for 3 seconds loading
    Then hide price toggle should not be checked
    And I click on update button
    Then I should be redirected to Product Index Page

    Given I am on Product Index Page
    When I click row of edit button for the same order of row of product name included 'No.5 <One layer> <Preset Publish Date> <Different price as main product>'
    Then I should be redirected to Product Edit Page
    When I click on tab included 'Settings'
    When I click on preset publish date button
    And I click on clear button
    And I click on update button
    Then I should be redirected to Product Index Page

    Given I am on Product Index Page
    When I click row of edit button for the same order of row of product name included 'No.6 <Two layer> <Preorder Product> <Different price as main product>'
    Then I should be redirected to Product Edit Page
    When I click on tab included 'Settings'
    Then I fill '' to preorder note field
    When I click on preorder product toggle
    Then preorder product toggle should not be checked
    And I click on update button
    Then I should be redirected to Product Index Page

    Given I am on Design Page
    When I click on advanced setting tab
    Then I should see sort by product sales volume checkbox
    When I click on sort by product sales volume checkbox
    And I click on save button
    And I click on publish button
    Then I wait for 10 seconds loading
    Then I should not see publish button