@BaseCase @Admin @Staff @Permission @checkStaffAccessRightwording
Feature: Add Product Setting in Staff Access Right
  As a merchant
  I want to add poduct setting in staff access right
  So that I can see product settings are independent from order settings

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

  Scenario: Add new staff
    Given I am on Staff Setting Add Page
    And I fill qa email to email field
    And I click on add button
    Then I should be redirected to Edit Staff Permissions Page
    Then checkbox group included 'Online Store Orders' and same order of checkbox group should also contain "ViewEditAdvanced Edit (Product Details)DeleteOrder SplitCreate Order"
    Then checkbox group included 'Message Center' and same order of checkbox group should also contain "ViewSend"
    Then checkbox group included 'Products & Categories' and same order of checkbox group should also contain "ViewAdd/EditDelete"
    Then checkbox group included 'Inventory' and same order of checkbox group should also contain "ViewEdit"
    Then checkbox group included 'Add-ons' and same order of checkbox group should also contain "ViewAdd/EditDelete"
    Then checkbox group included 'Free Gifts' and same order of checkbox group should also contain "ViewAdd/EditDelete"
    Then checkbox group included 'Broadcast Center' and same order of checkbox group should also contain "ViewAdd/Edit"
    Then checkbox group included 'Membership Tier' and same order of checkbox group should also contain "ViewAdd/EditDelete"
    Then checkbox group included 'Store Credits' and same order of checkbox group should also contain "ViewAdd/Edit"
    Then checkbox group included 'Promotions & Reward' and same order of checkbox group should also contain "ViewAdd/EditDelete"
    Then checkbox group included 'Online Store Report Export' and same order of checkbox group should also contain "ViewOrdersProduct Inventory/Sales Volume/Revenue Analysis ReportCustomersCoupons711-B2C711-C2C711-C2BFamily Mart B2CFamily Mart C2CSMS Report"
    Then checkbox group included 'Menu Navigation & Pages' and same order of checkbox group should also contain "ViewAdd/EditDelete"
    Then checkbox group included 'Express Checkout Pages' and same order of checkbox group should also contain "ViewAdd/EditDelete"
    Then checkbox group included 'Blog' and same order of checkbox group should also contain "ViewAdd/EditDelete"
    Then checkbox group included 'Channel Integration' and same order of checkbox group should also contain "ViewAdd/Edit"
    Then checkbox group included 'Tracker Settings' and same order of checkbox group should also contain "ViewAdd/EditDelete"
    Then checkbox group included 'Taxes Settings' and same order of checkbox group should also contain "ViewAdd/EditDelete"
    Then checkbox group included 'Delivery Options' and same order of checkbox group should also contain "ViewAdd/EditDelete"
    Then checkbox group included 'Online Store Payment Options' and same order of checkbox group should also contain "ViewAdd/EditDelete"
    Then checkbox group included 'Permission & Security' and same order of checkbox group should also contain "ViewAdd/EditDeleteWarning: this will allow this staff member to change other staff member's permissions"
    Then access form should contain 'Customers'
    Then access form should contain 'Member Points'
    Then access form should contain 'Dashboard Data & Google Ads Analytics'
    Then access form should contain 'Apps'
    Then access form should contain 'Design'
    Then access form should contain 'Marketing'
    Then access form should contain 'Basic & Domain Settings'
    Then access form should contain 'Order Settings'
    Then access form should contain 'Product Settings'
    Then access form should contain 'Customer Settings'
    Then access form should contain 'My Subscription & Billing'
    And ---ROLL BACK---
    Given I am on Staff Setting Page
    And I click on delete button
    Then I should see alert
    And I click on alert checkbox
    And I click on ok button
    Then staff should not contain qa email

  Scenario: Edit old staff
    Given I am on Staff Setting Add Page
    And I fill 'testuser@shoplineapp.com' to email field
    And I click on add button
    Then I should be redirected to Edit Staff Permissions Page
    And I check and click unchecked give full access checkbox
    And I scroll down to update button
    And I click on update button
    Then I should be redirected to Staff Setting Page
    Then I should see edit button
    And I click on edit button
    Then I should be redirected to Edit Staff Permissions Page
    Then checkbox group included 'Online Store Orders' and same order of checkbox group should also contain "ViewEditAdvanced Edit (Product Details)DeleteOrder SplitCreate Order"
    Then checkbox group included 'Message Center' and same order of checkbox group should also contain "ViewSend"
    Then checkbox group included 'Products & Categories' and same order of checkbox group should also contain "ViewAdd/EditDelete"
    Then checkbox group included 'Inventory' and same order of checkbox group should also contain "ViewEdit"
    Then checkbox group included 'Add-ons' and same order of checkbox group should also contain "ViewAdd/EditDelete"
    Then checkbox group included 'Free Gifts' and same order of checkbox group should also contain "ViewAdd/EditDelete"
    Then checkbox group included 'Broadcast Center' and same order of checkbox group should also contain "ViewAdd/Edit"
    Then checkbox group included 'Membership Tier' and same order of checkbox group should also contain "ViewAdd/EditDelete"
    Then checkbox group included 'Store Credits' and same order of checkbox group should also contain "ViewAdd/Edit"
    Then checkbox group included 'Promotions & Reward' and same order of checkbox group should also contain "ViewAdd/EditDelete"
    Then checkbox group included 'Online Store Report Export' and same order of checkbox group should also contain "ViewOrdersProduct Inventory/Sales Volume/Revenue Analysis ReportCustomersCoupons711-B2C711-C2C711-C2BFamily Mart B2CFamily Mart C2CSMS Report"
    Then checkbox group included 'Menu Navigation & Pages' and same order of checkbox group should also contain "ViewAdd/EditDelete"
    Then checkbox group included 'Express Checkout Pages' and same order of checkbox group should also contain "ViewAdd/EditDelete"
    Then checkbox group included 'Blog' and same order of checkbox group should also contain "ViewAdd/EditDelete"
    Then checkbox group included 'Channel Integration' and same order of checkbox group should also contain "ViewAdd/Edit"
    Then checkbox group included 'Tracker Settings' and same order of checkbox group should also contain "ViewAdd/EditDelete"
    Then checkbox group included 'Taxes Settings' and same order of checkbox group should also contain "ViewAdd/EditDelete"
    Then checkbox group included 'Delivery Options' and same order of checkbox group should also contain "ViewAdd/EditDelete"
    Then checkbox group included 'Online Store Payment Options' and same order of checkbox group should also contain "ViewAdd/EditDelete"
    Then checkbox group included 'Permission & Security' and same order of checkbox group should also contain "ViewAdd/EditDeleteWarning: this will allow this staff member to change other staff member's permissions"
    Then access form should contain 'Customers'
    Then access form should contain 'Member Points'
    Then access form should contain 'Dashboard Data & Google Ads Analytics'
    Then access form should contain 'Apps'
    Then access form should contain 'Design'
    Then access form should contain 'Marketing'
    Then access form should contain 'Basic & Domain Settings'
    Then access form should contain 'Order Settings'
    Then access form should contain 'Product Settings'
    Then access form should contain 'Customer Settings'
    Then access form should contain 'My Subscription & Billing'