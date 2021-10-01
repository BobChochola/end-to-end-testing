@OneBaseCase @ImageService @Admin @FreeGift @createFreeGiftsSnycOne @fixture-sl-pos @fixture-sl-pos-admin @fixture-integration-one

Feature: Create free gifts product sync One
  As a merchant
  I want to create free gifts product
  So that I can privide to users

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

  @EAT-802 @EAT-802-1
  Scenario: Create free gifts unlimited product and check One basic UI
    Given I am on Free Gifts Index Page
    Then I should see add button
    When I click on add button
    Then I should be redirected to Free Gifts Create Page
    When I fill "(dirty data) 1st Created Free Gift" to english name field
    And I pick free gift photo to free gift photo selector
    Then I should see delete photo button
    And I fill "Z001" to SKU field
    And I click on unlimited checkbox
    And I click on add button
    Then I should see confirmation popover
    And I click on ok button
    Then I should be redirected to Free Gifts Index Page
    Then I should see alert
    Then 1st row of free gift list should contain "1st Created Free Gift"
    Then I wait for 30 seconds for free gift sync

    Given I am on One Product Index Page
    Then product list included '1st Created Free Gift' and same order of stock quantity should also equal to "0"
    Then product list included '1st Created Free Gift' and same order of variants quantity should also equal to "0"
    Then product list included '1st Created Free Gift' and same order of pend to deliver quantity should also equal to "0"
    Then product list included '1st Created Free Gift' and same order of available quantity should also equal to "0"
    Then I click manage button for the same order of product list included '1st Created Free Gift'

    Then I should be redirected to One Product Manage Page
    Then sales channel should contain shop name
    Then country should contain "Taiwan"
    Then product name should contain "1st Created Free Gift"
    Then I should see 1 free gift type
    Then I should see 1 publish status
    Then sku should contain "Z001"
    Then sales channel warehouse should contain "Primary"
    Then sales channel available quantity should contain "∞ Untracked"

    When I click on inventory tab
    Then 1st inventory warehouse included 'Primary' and same order of inventory stock quantity should also equal to "0"
    Then 1st inventory warehouse included 'Primary' and same order of inventory pend to deliver quantity should also equal to "0"
    Then 1st inventory warehouse included 'Primary' and same order of inventory available quantity should also equal to "0"

    And ---ROLL BACK---
    Given I am on Free Gifts Index Page
    Then I should see row of select checkbox list
    When I click on 1st row of select checkbox list
    When I select delete of bulk actions dropdown
    And I should see confirmation popover
    And I click on delete checkbox
    And I click on confirm delete button
    Then I should not see confirmation popover

  @EAT-802 @EAT-802-2
  Scenario: Create free gifts product with quantity and check One basic UI
    Given I am on Free Gifts Index Page
    Then I should see add button
    When I click on add button
    Then I should be redirected to Free Gifts Create Page
    When I fill "2nd Created Free Gift" to english name field
    And I pick free gift photo to free gift photo selector
    Then I should see delete photo button
    And I fill "1000000" to quantity field
    And I fill "Test Free Gift" to SKU field
    And I fill "15" to cost field
    And I fill "5" to weight field
    And I click on add button
    Then I should see confirmation popover
    And I click on ok button
    Then I should be redirected to Free Gifts Index Page
    Then I should see alert
    Then 1st row of free gift list should contain "2nd Created Free Gift"
    Then I wait for 30 seconds for free gift sync

    Given I am on One Product Index Page
    Then product list included '2nd Created Free Gift' and same order of stock quantity should also equal to "1000000"
    Then product list included '2nd Created Free Gift' and same order of variants quantity should also equal to "0"
    Then product list included '2nd Created Free Gift' and same order of pend to deliver quantity should also equal to "0"
    Then product list included '2nd Created Free Gift' and same order of available quantity should also equal to "1000000"
    Then I click manage button for the same order of product list included '2nd Created Free Gift'

    Then I should be redirected to One Product Manage Page
    Then sales channel should contain shop name
    Then country should contain "Taiwan"
    Then product name should contain "2nd Created Free Gift"
    Then I should see 1 free gift type
    Then I should see 1 publish status
    Then sku should contain "Test Free Gift"
    Then sales channel warehouse should contain "Primary"
    Then sales channel available quantity should contain "1000000"

    When I click on inventory tab
    Then inventory warehouse should contain "Primary"
    Then 1st inventory warehouse included 'Primary' and same order of inventory stock quantity should also equal to "1000000"
    Then 1st inventory warehouse included 'Primary' and same order of inventory pend to deliver quantity should also equal to "0"
    Then 1st inventory warehouse included 'Primary' and same order of inventory available quantity should also equal to "1000000"
    And ---ROLL BACK---
    Given I am on Free Gifts Index Page
    Then I should see row of select checkbox list
    When I click on 1st row of select checkbox list
    When I select delete of bulk actions dropdown
    And I should see confirmation popover
    And I click on delete checkbox
    And I click on confirm delete button
    Then I should not see confirmation popover