@OneBaseCase @OneQuickTest @ImageService @Admin @FreeGift @createFreeGiftsWithProductSnycOne @fixture-sl-pos @fixture-sl-pos-admin @fixture-integration-one

Feature: Create free gifts with product sync One
  As a merchant
  I want to create free gifts sync One

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

    Given I am on Basic Setting Page
    And I mark the value of shop name field as variable shop name

  @EAT-799 @EAT-799-1
  Scenario: Create free gifts with existing product and check One basic UI
    Given I am on Product Create Page
    When I pick product photo to product photo selector
    Then I should see delete photo button
    And I click on info tab
    And I fill "(dirty data) Unlimited Product for Checkout" to english name field
    And I click on quantity and pricing tab
    And I fill "25" to regular price field
    And I click on unlimited quantity checkbox
    And I scroll down to id
    And I click on settings tab
    And I input "10.1" to weight field
    Then I should be redirected to Product Index Page
    Then popup title should contain "Unlimited Product for Checkout"

    Given I am on Free Gifts Index Page
    Then I should see add button
    When I click on add button
    Then I should be redirected to Free Gifts Create Page
    And I click on select product as gift item checkbox
    Then I should see select product popup
    And I input "Unlimited Product for Checkout" to search field
    And I click on checkbox of product list
    And I click on confirm button
    Then existing product list should contain "Unlimited Product for Checkout"
    Then I should see change product button
    Then row of existing product should contain "Unlimited Product for Checkout"
    When I fill "(dirty data) 1st Created Free Gift" to english name field
    And I pick free gift photo to free gift photo selector
    Then I should see delete photo button
    And I fill "Z001" to SKU field
    And I click on add button
    Then I should see confirmation popover
    Then confirm reminder should contain confirm reminder
    Then confirm product list should contain "Unlimited Product for Checkout"
    And I click on ok button
    Then I should be redirected to Free Gifts Index Page
    Then I should see alert
    Then 1st row of free gift list should contain "1st Created Free Gift"
    Then I should have image free gift photo for row of free gift photo
    Then 1st row of quantity list should contain "∞"
    Then 1st row of status list should contain "Published"
    Then I wait for 30 seconds for combining

    Given I am on One Product Index Page
    When I input "Unlimited Product for Checkout" to search field
    Then product list included 'Unlimited Product for Checkout' and same order of stock quantity should also equal to "0"
    Then product list included 'Unlimited Product for Checkout' and same order of variants quantity should also equal to "0"
    Then product list included 'Unlimited Product for Checkout' and same order of pend to deliver quantity should also equal to "0"
    Then product list included 'Unlimited Product for Checkout' and same order of available quantity should also equal to "0"
    Then I click manage button for the same order of product list included 'Unlimited Product for Checkout'

    Then I should be redirected to One Product Manage Page
    Then sales channel should contain shop name
    Then country should contain "Taiwan"
    Then product name should contain "Unlimited Product for Checkout"
    Then I should see 1 product type
    Then I should see 1 free gift type
    Then I should see 2 publish status
    Then 2nd sku should contain "Z001"
    Then 1st sales channel warehouse should contain "Primary"
    Then 1st sales channel available quantity should contain "∞ Untracked"
    Then 2nd sales channel warehouse should equal to ""
    Then 2nd sales channel available quantity should equal to ""

    When I click on inventory tab
    Then 1st inventory warehouse included 'Primary' and same order of inventory stock quantity should also equal to "0"
    Then 1st inventory warehouse included 'Primary' and same order of inventory pend to deliver quantity should also equal to "0"
    Then 1st inventory warehouse included 'Primary' and same order of inventory available quantity should also equal to "0"
    And ---ROLL BACK---
    Given I am on Product Index Page
    When I select product operations dropdown option included 'Delete' of product operations dropdown
    And I should see delete confirmation popover
    And I click on delete checkbox
    And I click on confirm delete button
    Then product list should not contain 'Unlimited Product for Checkout'

    Given I am on Free Gifts Index Page
    Then I should see row of select checkbox list
    When I click on 1st row of select checkbox list
    When I select delete of bulk actions dropdown
    And I should see confirmation popover
    And I click on delete checkbox
    And I click on confirm delete button

  @EAT-799 @EAT-799-2
  Scenario: Create free gifts quantity with product and check One basic UI
    Given I am on Product Create Page
    When I pick product photo to product photo selector
    Then I should see delete photo button
    And I click on info tab
    And I fill "(dirty data) for free gift product" to english name field
    And I click on quantity and pricing tab
    And I fill "20" to regular price field
    And I fill "10" to sale price field
    And I fill "10" to quantity field
    And I click on add button
    Then I should be redirected to Product Index Page
    Then popup title should contain "for free gift product"

    Given I am on Free Gifts Index Page
    Then I should see add button
    When I click on add button
    Then I should be redirected to Free Gifts Create Page
    And I click on select product as gift item checkbox
    Then I should see select product popup
    And I input "for free gift product" to search field
    And I click on checkbox of product list
    And I click on confirm button
    Then I should see change product button
    Then row of existing product should contain "for free gift product"
    When I fill "(dirty data) 2nd Created Free Gift" to english name field
    And I pick free gift photo to free gift photo selector
    Then I should see delete photo button
    And I fill "Test Free Gift" to SKU field
    And I click on add button
    Then I should see confirmation popover
    And I click on ok button
    Then I should be redirected to Free Gifts Index Page
    Then I should see alert
    Then 1st row of free gift list should contain "2nd Created Free Gift"
    Then I should have image free gift photo for row of free gift photo
    Then 1st row of status list should contain "Published"
    Then I wait for 30 seconds for combining

    Given I am on One Product Index Page
    When I input "for free gift product" to search field
    Then product list included 'for free gift product' and same order of stock quantity should also equal to "10"
    Then product list included 'for free gift product' and same order of variants quantity should also equal to "0"
    Then product list included 'for free gift product' and same order of pend to deliver quantity should also equal to "0"
    Then product list included 'for free gift product' and same order of available quantity should also equal to "10"
    Then I click manage button for the same order of product list included 'for free gift product'

    Then I should be redirected to One Product Manage Page
    Then sales channel should contain shop name
    Then country should contain "Taiwan"
    Then product name should contain "for free gift product"
    Then I should see 1 product type
    Then I should see 1 free gift type
    Then I should see 2 publish status
    Then 2nd sku should contain "Test Free Gift"
    Then sales channel warehouse should contain "Primary"
    Then sales channel available quantity should contain "10"
    Then 2nd sales channel warehouse should equal to ""
    Then 2nd sales channel available quantity should equal to ""

    When I click on inventory tab
    Then 1st inventory warehouse included 'Primary' and same order of inventory stock quantity should also equal to "10"
    Then 1st inventory warehouse included 'Primary' and same order of inventory pend to deliver quantity should also equal to "0"
    Then 1st inventory warehouse included 'Primary' and same order of inventory available quantity should also equal to "10"
    And ---ROLL BACK---
    Given I am on Product Index Page
    When I select product operations dropdown option included 'Delete' of product operations dropdown
    And I should see delete confirmation popover
    And I click on delete checkbox
    And I click on confirm delete button
    Then product list should not contain 'for free gift product'

    Given I am on Free Gifts Index Page
    Then I should see row of select checkbox list
    When I click on 1st row of select checkbox list
    When I select delete of bulk actions dropdown
    And I should see confirmation popover
    And I click on delete checkbox
    And I click on confirm delete button