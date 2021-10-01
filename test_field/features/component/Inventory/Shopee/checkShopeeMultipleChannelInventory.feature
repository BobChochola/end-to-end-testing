# SL-17330 需要蝦皮串接才能看到Multiple Channel Inventory Page的內容
# @BaseCase @ImageService @Admin @Inventory @Shopee @checkShopeeMultipleChannelInventory @fixture-shopee-api-integration @EAT-691
# Feature:check multiple channel inventory
#   As a merchant
#   I want to check the UI when the rollout key is open
#   Background:
#     Given I am on Admin Login Page
#     And I fill correct account email to email field
#     And I fill correct account password to password field
#     And I click on login button
#     Then I should see successful login
#     Then I check intercom message notification frame and click clear intercom message button
#     Then I check intercom message notification frame and click intercom message close button
#     When I check new feature alert notification frame and click new feature alert close button
#     When I check and click exclude products panel close button
#     When I check and click no thanks button

#   @EAT-691-1
#   Scenario:check multiple channel inventory - have variations
#     Given I am on Product Create Page
#     When I pick product photo to product photo selector
#     Then I should see delete photo button
#     When I pick product photo to product photo selector
#     Then I should see 2 delete photo button
#     Then I scroll down to id
#     And I click on info tab
#     And I fill "(dirty data) 有規格 有SKU 商品" to english name field
#     And I click on quantity and pricing tab
#     And I fill "100" to regular price field
#     Then I scroll down to add button
#     And I click on variations tab
#     When I click on variations toggle
#     And I input "R" to add options field
#     And I input "G" to add options field
#     And I fill "20" to 1st row of variation quantity field
#     And I fill "10" to 2nd row of variation quantity field
#     And I fill "testSKU1" to 1st row of variation sku field
#     And I fill "testSKU2" to 2nd row of variation sku field
#     Then I scroll down to add button
#     And I click on add button
#     And I should see alert
#     Then I should be redirected to Product Edit Page
#     Given I am on Product Index Page
#     Then I should have image product photo for row of product photo list
#     Then 1st row of product list should contain "有規格 有SKU 商品"
#     Then 1st row of regular price list should contain "100"
#     Then 1st row of quantity list should contain "30"
#     Given I am on Inventory Page
#     Then I should see multiple channel inventory button
#     When I click on multiple channel inventory button
#     Then I should be redirected to Multiple Channel Inventory Page
#     Then product table title should contain 'Product Name'
#     Then 1st row of product name should contain '有規格 有SKU 商品'
#     Then product table title should contain 'SKU'
#     Then 1st row of product main SKU should equal to ''
#     Then 1st row of variations SKU should contain 'testSKU1'
#     Then 2nd row of variations SKU should contain 'testSKU2'
#     Then product table title should contain 'Status'
#     Then 1st row of status should contain 'Published'
#     Then product table title should contain 'Total quantity'
#     Then 1st row of product total quantity should contain '30'
#     Then 1st row of product variations quantity should contain '20'
#     Then 2nd row of product variations quantity should contain '10'
#     Then product table title should contain 'SHOPLINE quantity'
#     Then 1st row of product SHOPLINE quantity should contain '30'
#     Then product table title should contain 'Shopee quantity'
#     Then 1st row of product Shopee quantity should equal to ''
#     When I click on edit button
#     Then I should see edit variations quantity field
#     Then I should see decrease variations quantity button
#     Then I should see increase variations quantity button

#     When I fill '100' to 1st edit variations quantity field
#     Then 1st edit variations quantity field should contain '100'
#     Then 1st row of product variations quantity should contain ' → 100'
#     When I click on 2nd increase variations quantity button
#     Then 2nd edit variations quantity field should contain '11'
#     Then 2nd row of product variations quantity should contain ' → 11'
#     Then 1st row of product total quantity should contain ' → 111'
#     Then 1st row of product SHOPLINE quantity should contain ' → 111'
#     And I click on save button
#     Then I should see alert
#     Then 1st row of product total quantity should contain '111'
#     Then 1st row of product variations quantity should contain '100'
#     Then 2nd row of product variations quantity should contain '11'
#     Then ---ROLL BACK---
#     Given I am on Product Index Page
#     When I select product operations dropdown option included 'Delete' of 1st product operations dropdown
#     Then I should see delete confirmation popover
#     And I click on delete checkbox
#     And I click on confirm delete button
#     Then product list should not contain '有規格 有SKU 商品'

#   @EAT-691-2
#   Scenario:check multiple channel inventory - no variations
#     Given I am on Product Create Page
#     When I pick product photo to product photo selector
#     Then I should see delete photo button
#     When I pick product photo to product photo selector
#     Then I should see 2 delete photo button
#     Then I scroll down to id
#     And I click on info tab
#     And I fill "(dirty data) 無規格 無SKU 商品" to english name field
#     And I click on quantity and pricing tab
#     And I fill "200" to regular price field
#     And I fill "1" to quantity field
#     Then I scroll down to add button
#     And I click on add button
#     And I should see alert
#     Then I should be redirected to Product Edit Page
#     Given I am on Product Index Page
#     Then I should have image product photo for row of product photo list
#     Then 1st row of product list should contain "無規格 無SKU 商品"
#     Then 1st row of regular price list should contain "200"
#     Then 1st row of quantity list should contain "1"
#     Given I am on Inventory Page
#     Then I should see multiple channel inventory button
#     When I click on multiple channel inventory button
#     Then I should be redirected to Multiple Channel Inventory Page
#     Then product table title should contain 'Product Name'
#     Then 1st row of product name should contain '無規格 無SKU 商品'
#     Then product table title should contain 'SKU'
#     Then 1st row of product main SKU should equal to ''
#     Then product table title should contain 'Status'
#     Then 1st row of status should contain 'Published'
#     Then product table title should contain 'Total quantity'
#     Then 1st row of product total quantity should contain '1'
#     Then product table title should contain 'SHOPLINE quantity'
#     Then 1st row of product SHOPLINE quantity should contain '1'
#     Then product table title should contain 'Shopee quantity'
#     Then 1st row of product Shopee quantity should equal to ''

#     When I click on edit button
#     Then I should see edit total quantity field
#     Then I should see decrease total quantity button
#     Then I should see increase total quantity button

#     When I click on 1st decrease total quantity button
#     Then 1st row of product total quantity should contain '→ 0'
#     And I click on save button
#     Then I should see alert
#     When I hover over alert close button
#     And I click on alert close button
#     Then 1st row of product total quantity should equal to '0'

#     When I click on edit button
#     And I click on decrease total quantity button
#     Then 1st edit total quantity field should equal to '0'
#     Then 1st row of product total quantity should equal to '0'
#     Then 1st row of product total quantity should not contain '→ 0'
#     And I click on save button
#     Then I should see alert
#     When I hover over alert close button
#     And I click on alert close button
#     Then 1st row of product total quantity should equal to '0'

#     When I click on edit button
#     And I click on increase total quantity button
#     Then 1st edit total quantity field should contain '1'
#     Then 1st row of product total quantity should contain '→ 1'
#     And I click on save button
#     Then I should see alert
#     Then 1st row of product total quantity should contain '1'

#     Then ---ROLL BACK---
#     Given I am on Product Index Page
#     When I select product operations dropdown option included 'Delete' of 1st product operations dropdown
#     Then I should see delete confirmation popover
#     And I click on delete checkbox
#     And I click on confirm delete button
#     Then product list should not contain '無規格 無SKU 商品'