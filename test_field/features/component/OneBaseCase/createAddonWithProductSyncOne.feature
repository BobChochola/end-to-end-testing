@OneBaseCase @OneQuickTest @ImageService @Admin @Addon @createAddonWithProductSyncOne @fixture-sl-pos @fixture-sl-pos-admin @fixture-integration-one
Feature: Create Add-on items with product and check One basic UI
  As a user of Shopline
  I can create add-on item with product sync One

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

  @EAT-801 @EAT-801-1 @fixture-product
  Scenario: Create Add-on items existing product assign main productand check One basic UI
    Given I am on Product Create Page
    When I pick product photo to product photo selector
    Then I should see delete photo button
    And I click on info tab
    And I fill "(dirty data) Existing product for checkout" to english name field
    And I click on quantity and pricing tab
    And I fill "25" to regular price field
    And I fill "100" to quantity field
    And I scroll down to id
    And I click on add button
    Then I should be redirected to Product Index Page
    Then popup title should contain "Existing product for checkout"

    Given I am on Addon Create Page
    When I click on tab included "Product Level Settings"
    Then I should see valid date field
    When I click on valid date field
    Then I should see calendar table
    When I click on today button
    And I click on done button
    And I click on invalid date field
    Then I should see calendar table
    When I click on 3rd available date button
    And I click on done button
    And I fill "2nd Product for Checkout" to search field
    And I click on search product button
    Then 1st product of popover list should contain "2nd Product for Checkout"
    And I should see checkbox of product list
    And I click on 1st checkbox of product list
    And I click on confirm button
    Then I should not see checkbox of product list
    Then I scroll down to add button
    And I fill "20" to 1st row of addon price field
    And I click on tab included "Add-on Item Info"

    Then I should see english name field
    When I click on select existing product checkbox
    Then I should see select product popup
    And I input "Existing product for checkout" to existing product search field
    And I click on checkbox existing of product list
    And I click on existing product ok button
    Then existing product panel should contain "Existing product for checkout"
    And I fill "(dirty data) Add-on Item" to english name field
    When I pick addon photo to addon photo selector
    Then I should see delete photo button
    And I fill "Z001" to SKU field
    And I click on add button
    Then I should see confirm popup
    Then confirm reminder should contain confirm reminder
    Then confirm product list should contain "Existing product for checkout"
    And I click on ok button
    Then I should see alert

    Then I should be redirected to Addon Index Page
    Then 1st row of addon list should contain "Add-on Item"
    Then I wait for 30 seconds for product sync

    Given I am on One Product Index Page
    When I input "Existing product for checkout" to search field
    Then product list included 'Existing product for checkout' and same order of stock quantity should also equal to "100"
    Then product list included 'Existing product for checkout' and same order of variants quantity should also equal to "0"
    Then product list included 'Existing product for checkout' and same order of pend to deliver quantity should also equal to "0"
    Then product list included 'Existing product for checkout' and same order of available quantity should also equal to "100"
    Then I click manage button for the same order of product list included 'Existing product for checkout'

    Then I should be redirected to One Product Manage Page
    Then sales channel should contain shop name
    Then country should contain "Taiwan"
    Then product name should contain "Existing product for checkout"
    Then 2nd product name should contain "Add-on Item"
    Then I should see 1 product type
    Then I should see 1 add on item type
    Then I should see 2 publish status
    Then 1st sku should contain ""
    Then 2nd sku should contain "Z001"
    Then 1st sales channel warehouse should contain "Primary"
    Then 1st sales channel available quantity should contain "100"
    Then 2nd sales channel warehouse should equal to ""
    Then 2nd sales channel available quantity should equal to ""

    When I click on inventory tab
    Then 1st inventory warehouse included 'Primary' and same order of inventory stock quantity should also equal to "100"
    Then 1st inventory warehouse included 'Primary' and same order of inventory pend to deliver quantity should also equal to "0"
    Then 1st inventory warehouse included 'Primary' and same order of inventory available quantity should also equal to "100"

    And ---ROLL BACK---
    Given I am on Product Index Page
    When I select product operations dropdown option included 'Delete' of product operations dropdown
    And I should see delete confirmation popover
    And I click on delete checkbox
    And I click on confirm delete button
    Then product list should not contain '(dirty data)'

    Given I am on Addon Index Page
    When I click on 1st select checkbox of addon list
    When I select delete of bulk actions dropdown
    And I should see confirmation popover
    And I click on delete checkbox
    And I click on confirm delete button
    Then I should not see confirmation popover

  @EAT-801 @EAT-801-2
  Scenario: Create Add-on items existing unlimited product and check One basic UI
    Given I am on Product Create Page
    When I pick product photo to product photo selector
    Then I should see delete photo button
    And I click on info tab
    And I fill "(dirty data) existing unlimited Product for Checkout" to english name field
    And I click on quantity and pricing tab
    And I fill "25" to regular price field
    And I click on unlimited quantity checkbox
    And I scroll down to id
    And I click on add button
    Then I should be redirected to Product Index Page
    Then popup title should contain "existing unlimited Product for Checkout"

    Given I am on Addon Create Page
    Then I should see english name field
    When I click on select existing product checkbox
    Then I should see select product popup
    And I input "existing unlimited Product for Checkout" to existing product search field
    And I click on checkbox existing of product list
    And I click on existing product ok button
    Then existing product panel should contain "existing unlimited Product for Checkout"
    And I fill "(dirty data) Add-on Item unlimited" to english name field
    When I pick addon photo to addon photo selector
    Then I should see delete photo button
    And I fill "Z002" to SKU field
    Then I click on add button
    Then I should see confirm popup
    And I click on ok button
    Then I should see alert
    Then I should be redirected to Addon Index Page
    Then 1st row of addon list should contain "Add-on Item unlimited"
    Then I wait for 30 seconds for addon sync

    Given I am on One Product Index Page
    When I input "existing unlimited Product for Checkout" to search field
    Then product list included 'existing unlimited Product for Checkout' and same order of stock quantity should also equal to "0"
    Then product list included 'existing unlimited Product for Checkout' and same order of variants quantity should also equal to "0"
    Then product list included 'existing unlimited Product for Checkout' and same order of pend to deliver quantity should also equal to "0"
    Then product list included 'existing unlimited Product for Checkout' and same order of available quantity should also equal to "0"
    Then I click manage button for the same order of product list included 'existing unlimited Product for Checkout'

    Then I should be redirected to One Product Manage Page
    Then sales channel should contain shop name
    Then country should contain "Taiwan"
    Then product name should contain "existing unlimited Product for Checkout"
    Then 2nd product name should contain "Add-on Item"
    Then I should see 1 product type
    Then I should see 1 add on item type
    Then I should see 2 publish status
    Then 1st sku should contain ""
    Then 2nd sku should contain "Z002"
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
    Then product list should not contain '(dirty data)'

    Given I am on Addon Index Page
    When I click on 1st select checkbox of addon list
    When I select delete of bulk actions dropdown
    And I should see confirmation popover
    And I click on delete checkbox
    And I click on confirm delete button
    Then I should not see confirmation popover