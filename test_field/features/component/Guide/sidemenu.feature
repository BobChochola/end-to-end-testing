@BaseCase @Admin @Guide @sidemenu
Feature: Admin Panel Side Menu
  As a user of Shopline
  I want to go to Admin Panel Page and manage my stuff
  So that I can use the side menu to navigate to corresponding pages

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

  @sidemenu-1
  Scenario: I want to go to Basic Setting Page
    Given I am on Setup Guide Page
    When I click on side menu items included 'Dashboard'
    Then I should be redirected to Dashboard Page
    When I click on side menu items included 'Settings'
    And I click on side submenu items included 'Basic Settings'
    Then I should be on Basic Setting Page

  @sidemenu-2 @C3740
  Scenario: I want to go to order Settings Page
    Given I am on Setup Guide Page
    When I click on side menu items included 'Dashboard'
    Then I should be redirected to Dashboard Page
    When I click on side menu items included 'Settings'
    And I click on side submenu items included 'Order Settings'
    Then I should be on Order Setting Page

  @sidemenu-3
  Scenario: I want go inside Domain Settings Page
    Given I am on Setup Guide Page
    When I click on side menu items included 'Dashboard'
    Then I should be redirected to Dashboard Page
    When I click on side menu items included 'Settings'
    And I click on side submenu items included 'Domain Settings'
    Then I should be on Domain Settings Page

  @sidemenu-4
  Scenario: I want go to Design Page
    Given I am on Setup Guide Page
    When I click on side menu items included 'Dashboard'
    Then I should be redirected to Dashboard Page
    When I click on side menu items included 'Online Store Design'
    And I click on side submenu items included 'Design'
    Then I should be on Design Page

  @sidemenu-5 @C3756
  Scenario: I want go to Category List Page
    Given I am on Setup Guide Page
    When I click on side menu items included 'Dashboard'
    Then I should be redirected to Dashboard Page
    When I click on side menu items included 'Products'
    And I click on side submenu items included 'Categories'
    Then I should be on Category List Page

  @sidemenu-6 @C3758
  Scenario: I want go to Inventory Index Page
    Given I am on Setup Guide Page
    When I click on side menu items included 'Dashboard'
    Then I should be redirected to Dashboard Page
    When I click on side menu items included 'Inventory Management'
    And I click on side submenu items included 'Inventory'
    Then I should be on Inventory Page

  @sidemenu-7
  Scenario: I want go to Navigation Page
    Given I am on Setup Guide Page
    When I click on side menu items included 'Dashboard'
    Then I should be redirected to Dashboard Page
    When I click on side menu items included 'Online Store Design'
    And I click on side submenu items included 'Menu Navigation'
    Then I should be on Menu Navigation Page

  @sidemenu-8
  Scenario: I want go to Pages Page
    Given I am on Setup Guide Page
    When I click on side menu items included 'Dashboard'
    Then I should be redirected to Dashboard Page
    When I click on side menu items included 'Online Store Design'
    When I click on side submenu items included 'Pages'
    Then I should be on Pages Page

  @sidemenu-9
  Scenario: I want go to Express Checkout Pages Page
    Given I am on Setup Guide Page
    When I click on side menu items included 'Dashboard'
    Then I should be redirected to Dashboard Page
    When I click on side menu items included 'Online Store Design'
    When I click on side submenu items included 'Express Checkout Pages'
    Then I should be on Express Checkout Pages Page

  @sidemenu-10
  Scenario: I want go to Report Export Page
    Given I am on Setup Guide Page
    When I click on side menu items included 'Dashboard'
    Then I should be redirected to Dashboard Page
    When I click on side menu items included 'Report'
    And I click on side submenu items included 'Report Export'
    Then I should be on Report Export Page
  
  @sidemenu-11
  Scenario: I want go to Shoplytics Page
    Given I am on Setup Guide Page
    When I click on side menu items included 'Dashboard'
    Then I should be redirected to Dashboard Page
    When I click on side menu items included 'Report'
    And I click on side submenu items included 'Shoplytics'
    Then I should be on Shoplytics Page

  @sidemenu-12
  Scenario: I want go to Marketing Page
    Given I am on Setup Guide Page
    When I click on side menu items included 'Dashboard'
    Then I should be redirected to Dashboard Page
    When I click on side menu items included 'Marketing & Tracker'
    And I click on side submenu items included 'Marketing'
    Then I should be on Marketing Page

  @sidemenu-13 @C3763 @fixture-product
  Scenario: I want go to Orders Page
    Given I am on Setup Guide Page
    When I click on side menu items included 'Dashboard'
    Then I should be redirected to Dashboard Page
    When I click on side menu items included 'Order Management'
    And I click on side submenu items included 'Orders'
    Then I should be on Orders Page

  @sidemenu-14 @C4555 @C4555-1 @fixture-freegift
  Scenario: Open free gifts page from dashboard
    Given I am on Setup Guide Page
    When I click on side menu items included 'Dashboard'
    Then I should be redirected to Dashboard Page
    When I click on side menu items included 'Products'
    And I click on side submenu items included 'Free Gifts'
    Then I should be on Free Gifts Index Page

  @sidemenu-15 @C3879 @C3879-1
  Scenario: I want to go to Customer List Page
    Given I am on Setup Guide Page
    When I click on side menu items included 'Customer Management'
    And I click on side submenu items included 'Customers'
    Then I should be redirected to Customer List Page

  @sidemenu-16 @C3761 @C3761-1 @fixture-non-basket
  Scenario: I want to go to Message Center Page
    Given I am on Setup Guide Page
    When I click on side menu items included 'Message Center'
    And I switch to 2 of tabs
    Then I should be redirected to Message Center Page

  @sidemenu-17 @C3767 @C3767-1 @fixture-delivery
  Scenario: I want to go to Return Orders Page
    Given I am on Setup Guide Page
    When I click on side menu items included 'Order Management'
    And I click on side submenu items included 'Return Orders'
    Then I should be on Return Orders Page

  @sidemenu-18 @EAT-682 @C11722
  Scenario: I want to go to LINE page
    Given I am on Setup Guide Page
    When I click on side menu items included 'Dashboard'
    Then I should be redirected to Dashboard Page
    When I click on side menu items included 'Channel Integration'
    And I click on side submenu items included 'LINE'
    Then I should be redirected to Channel Integration Line Page