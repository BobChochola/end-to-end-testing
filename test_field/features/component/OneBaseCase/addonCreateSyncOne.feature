@OneBaseCase @ImageService @Admin @Addon @addonCreateSyncOne @fixture-sl-pos @fixture-sl-pos-admin @fixture-integration-one
Feature: Create Add On items check One UI
  As a user of Shopline
  I can create add-on item sync One

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

   @EAT-800 @EAT-800-1
   Scenario: Create Add-on items limited and check One basic UI
    Given I am on Addon Create Page
    Then I should see english name field
    And I fill "(dirty data) Add-on Item" to english name field
    When I pick addon photo to addon photo selector
    Then I should see delete photo button
    And I fill "20" to addon quantity field
    And I fill "Z001" to SKU field
    And I click on add button
    Then I should see confirm popup
    And I click on ok button
    Then I should see alert
    Then I should be redirected to Addon Index Page
    Then 1st row of addon list should contain "Add-on Item"
    Then I wait for 30 seconds for addon sync
 
    Given I am on One Product Index Page
    When I input "Add-on Item" to search field
    Then product list included 'Add-on Item' and same order of stock quantity should also equal to "20"
    Then product list included 'Add-on Item' and same order of variants quantity should also equal to "0"
    Then product list included 'Add-on Item' and same order of pend to deliver quantity should also equal to "0"
    Then product list included 'Add-on Item' and same order of available quantity should also equal to "20"
    Then I click manage button for the same order of product list included 'Add-on Item'
 
    Then I should be redirected to One Product Manage Page
    Then sales channel should contain shop name
    Then country should contain "Taiwan"
    Then product name should contain "Add-on Item"
    Then I should see 1 add on item type
    Then I should see 1 publish status
 
    Then sku should contain "Z001"
    Then sales channel warehouse should contain "Primary"
    Then sales channel available quantity should contain "20"
 
    When I click on inventory tab
    Then 1st inventory warehouse included 'Primary' and same order of inventory stock quantity should also equal to "20"
    Then 1st inventory warehouse included 'Primary' and same order of inventory pend to deliver quantity should also equal to "0"
    Then 1st inventory warehouse included 'Primary' and same order of inventory available quantity should also equal to "20"
    And ---ROLL BACK---
    Given I am on Addon Index Page
    When I click on 1st select checkbox of addon list
    When I select delete of bulk actions dropdown
    And I should see confirmation popover
    And I click on delete checkbox
    And I click on confirm delete button
    Then I should not see confirmation popover
 
   @EAT-800 @EAT-800-2 @fixture-product
   Scenario: Create Add-on items unlimited assign main productand check One basic UI
    Given I am on Addon Create Page
    And I click on tab included "Product Level Settings"
    And I should see search field
    And I fill "2nd Product for Checkout" to search field
    And I click on search product button
    Then 1st product of popover list should contain "2nd Product for Checkout"
    And I should see checkbox of product list
    And I click on 1st checkbox of product list
    And I click on confirm button
    Then I should not see checkbox of product list
    And I click on same addon price checkbox
    And I fill "20" to addon price field
    And I click on tab included "Add-on Item Info"
    Then I should see english name field
    And I fill "(dirty data) Add-on Item Unlimited" to english name field
    When I pick addon photo to addon photo selector
    Then I should see delete photo button
    And I fill "Z001" to SKU field
    And I click on unlimited checkbox
    Then I click on add button
    Then I should see confirm popup
    And I click on ok button
    Then I should see alert
    Then I should be redirected to Addon Index Page
    Then 1st row of addon list should contain "Add-on Item Unlimited"
    Then I wait for 30 seconds for addon sync
 
    Given I am on One Product Index Page
    When I input "Add-on Item Unlimited" to search field
    Then product list included 'Add-on Item Unlimited' and same order of stock quantity should also equal to "0"
    Then product list included 'Add-on Item Unlimited' and same order of variants quantity should also equal to "0"
    Then product list included 'Add-on Item Unlimited' and same order of pend to deliver quantity should also equal to "0"
    Then product list included 'Add-on Item Unlimited' and same order of available quantity should also equal to "0"
    Then I click manage button for the same order of product list included 'Add-on Item Unlimited'
 
    Then I should be redirected to One Product Manage Page
    Then sales channel should contain shop name
    Then country should contain "Taiwan"
    Then product name should contain "Add-on Item Unlimited"
    Then I should see 1 add on item type
    Then I should see 1 publish status
    Then sku should contain "Z001"
    Then sales channel warehouse should contain "Primary"
    Then sales channel available quantity should contain "∞ Untracked"
 
    When I click on inventory tab
    Then 1st inventory warehouse included 'Primary' and same order of inventory stock quantity should also equal to "0"
    Then 1st inventory warehouse included 'Primary' and same order of inventory pend to deliver quantity should also equal to "0"
    Then 1st inventory warehouse included 'Primary' and same order of inventory available quantity should also equal to "0"
    And ---ROLL BACK---
    Given I am on Addon Index Page
    When I click on 1st select checkbox of addon list
    When I select delete of bulk actions dropdown
    And I should see confirmation popover
    And I click on delete checkbox
    And I click on confirm delete button
    Then I should not see confirmation popover