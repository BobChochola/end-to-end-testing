@BaseCase @Admin @Order @Staff @OrderEdit @editOrdesAsShopowner
Feature:edit/split order permission on Expired/Failed/Collected status
  As a merchant
  login as shop owner, can edit order

  @EAT-618 @EAT-618-1 @fixture-collected-logistic
  Scenario: shop owner, edit/spilt order permission on collected
    Given I am on Admin Login Page
    And I fill correct account email to email field
    And I fill correct account password to password field
    When I click on login button
    Then I should see successful login
    Then I check intercom message notification frame and click clear intercom message button
    Then I check intercom message notification frame and click intercom message close button
    When I check new feature alert notification frame and click new feature alert close button
    When I check and click exclude products panel close button
    When I check and click no thanks button

    Given I am on Orders Page
    And I input collected order to search field
    And I wait for 3 seconds for loading
    When I click on 1st row of order links
    Then I should be redirected to Orders Show Page
    Then I Refresh
    Then I scroll down to logistic service order status
    Then logistic service order status should contain "Collected"

    When I click on product details edit button
    Then I should see product details edit reminder
    Then I click on reminder ok button
    And I should see add product button
    And I click on add product button
    Then I should see product of product list
    And I input "1st Product for Checkout" to search field
    Then 1st product of product list should contain '1st Product for Checkout'
    And I click on 1st product of product list
    And I click on popup save button
    Then outstanding amount should equal to "NT$30"
    And I click on product details save button
    Then I should see confirm popover
    And I click on yes button
    And total should contain "NT$130"
    Then I should see split button
    When I click on split button
    Then I should be redirected to Order Split Page

    And ---ROLL BACK---
    Given I am on Orders Page
    And I input collected order to search field
    And I wait for 3 seconds for loading
    Then 1st row of order links should contain collected order
    When I click on 1st row of order links
    Then I should be redirected to Orders Show Page
    When I click on product details edit button
    Then I should see product details edit reminder
    Then I click on reminder ok button
    And I click on 2nd product details remove button
    And I click on 2nd product details ok button
    And I click on product details save button
    Then I should see confirm popover
    And I click on yes button
    And total should contain "NT$100"


  @EAT-618 @EAT-618-2 @fixture-expired-logistic
  Scenario: shop owner, edit/spilt order permission on expired
    Given I am on Admin Login Page
    And I fill correct account email to email field
    And I fill correct account password to password field
    When I click on login button
    Then I should see successful login
    Then I check intercom message notification frame and click clear intercom message button
    Then I check intercom message notification frame and click intercom message close button
    When I check new feature alert notification frame and click new feature alert close button
    When I check and click exclude products panel close button
    When I check and click no thanks button

    Given I am on Orders Page
    And I input expired order to search field
    And I wait for 3 seconds for loading
    Then 1st row of order links should contain expired order
    When I click on 1st row of order links
    Then I should be redirected to Orders Show Page
    Then I Refresh
    Then I scroll down to logistic service order status
    Then logistic service order status should contain "Expired"

    When I click on product details edit button
    Then I should see product details edit reminder
    Then I click on reminder ok button
    And I should see add product button
    And I click on add product button
    Then I should see product of product list
    And I input "1st Product for Checkout" to search field
    Then 1st product of product list should contain '1st Product for Checkout'
    And I click on 1st product of product list
    And I click on popup save button
    Then outstanding amount should equal to "NT$30"
    And I click on product details save button
    Then I should see confirm popover
    And I click on yes button
    And total should contain "NT$70"
    Then I should see split button
    When I click on split button
    Then I should be redirected to Order Split Page

    And ---ROLL BACK---
    Given I am on Orders Page
    And I input expired order to search field
    And I wait for 3 seconds for loading
    Then 1st row of order links should contain expired order
    When I click on 1st row of order links
    Then I should be redirected to Orders Show Page
    When I click on product details edit button
    Then I should see product details edit reminder
    Then I click on reminder ok button
    And I click on 2nd product details remove button
    And I click on 2nd product details ok button
    And I click on product details save button
    Then I should see confirm popover
    And I click on yes button
    And total should contain "NT$40"

  @EAT-618 @EAT-618-3 @fixture-failed-logistic
  Scenario: shop owner, edit/spilt order permission on failed
    Given I am on Admin Login Page
    And I fill correct account email to email field
    And I fill correct account password to password field
    When I click on login button
    Then I should see successful login
    Then I check intercom message notification frame and click clear intercom message button
    Then I check intercom message notification frame and click intercom message close button
    When I check new feature alert notification frame and click new feature alert close button
    When I check and click exclude products panel close button
    When I check and click no thanks button

    Given I am on Orders Page
    And I input failed order to search field
    And I wait for 3 seconds for loading
    Then 1st row of order links should contain failed order
    When I click on 1st row of order links
    Then I should be redirected to Orders Show Page
    Then I Refresh
    Then I scroll down to logistic service order status
    Then logistic service order status should contain "Failed"

    When I click on product details edit button
    Then I should see product details edit reminder
    Then I click on reminder ok button
    And I should see add product button
    And I click on add product button
    Then I should see product of product list
    And I input "1st Product for Checkout" to search field
    Then 1st product of product list should contain '1st Product for Checkout'
    And I click on 1st product of product list
    And I click on popup save button
    Then outstanding amount should equal to "NT$30"
    And I click on product details save button
    Then I should see confirm popover
    And I click on yes button
    And total should contain "NT$40"
    Then I should see split button
    When I click on split button
    Then I should be redirected to Order Split Page

    And ---ROLL BACK---
    Given I am on Orders Page
    And I input failed order to search field
    And I wait for 3 seconds for loading
    Then 1st row of order links should contain failed order
    When I click on 1st row of order links
    Then I should be redirected to Orders Show Page
    When I click on product details edit button
    Then I should see product details edit reminder
    Then I click on reminder ok button
    And I click on 2nd product details remove button
    And I click on 2nd product details ok button
    And I click on product details save button
    Then I should see confirm popover
    And I click on yes button
    And total should contain "NT$10"

  @EAT-618 @EAT-618-4 @fixture-collected-logistic
  Scenario: staff, edit/spilt order permission on Collected
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

    Given I am on Staff Setting Page
    Then I should see add button
    And I click on add button
    Then I should be redirected to Staff Setting Add Page
    And I fill qa email to email field
    And I click on add button
    Then I should be redirected to Edit Staff Permissions Page
    And I click on order permission checkbox
    And I click on update button
    Then I should be redirected to Staff Setting Page
    When I click on User Menu
    When I click on Logout
    Then I should be redirected to Admin Login Page
    And I fill qa email to email field
    And I fill qa password to password field
    And I click on login button
    Then I should see successful login
    When I check and click no thanks button

    Given I am on Orders Page
    And I input collected order to search field
    Then 1st row of order links should contain collected order
    When I click on 1st row of order links
    Then I should be redirected to Orders Show Page
    Then I Refresh
    Then I scroll down to logistic service order status
    Then logistic service order status should contain "Collected"
    When I click on product details edit button
    Then I should see product details edit reminder
    Then I click on reminder ok button
    And I should see add product button
    And I click on add product button
    Then I should see product of product list
    And I input "1st Product for Checkout" to search field
    Then 1st product of product list should contain '1st Product for Checkout'
    And I click on 1st product of product list
    And I click on popup save button
    Then outstanding amount should equal to "NT$30"
    And I click on product details save button
    Then I should see confirm popover
    And I click on yes button
    And total should contain "NT$130"
    Then I should see split button
    When I click on split button
    Then I should be redirected to Order Split Page
    And ---ROLL BACK---
    When I click on User Menu
    When I click on Logout

    Given I am on Admin Login Page
    And I fill correct account email to email field
    And I fill correct account password to password field
    And I click on login button
    Then I should see successful login
    When I check and click no thanks button

    Given I am on Staff Setting Page
    When I click on edit button
    Then I should be redirected to Edit Staff Permissions Page
    And I click on order permission checkbox
    And I click on update button
    Then I should be redirected to Staff Setting Page
    And I click on delete button
    Then I should see alert
    And I click on alert checkbox
    And I click on ok button

    Given I am on Orders Page
    And I input collected order to search field
    And I wait for 3 seconds for loading
    Then 1st row of order links should contain collected order
    When I click on 1st row of order links
    Then I should be redirected to Orders Show Page
    When I click on product details edit button
    Then I should see product details edit reminder
    Then I click on reminder ok button
    And I click on 2nd product details remove button
    And I click on 2nd product details ok button
    And I click on product details save button
    Then I should see confirm popover
    And I click on yes button
    And total should contain "NT$100"

  @EAT-618 @EAT-618-5 @fixture-expired-logistic
  Scenario: staff, edit/spilt order permission on expired
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

    Given I am on Staff Setting Page
    Then I should see add button
    And I click on add button
    Then I should be redirected to Staff Setting Add Page
    And I fill qa email to email field
    And I click on add button
    Then I should be redirected to Edit Staff Permissions Page
    And I click on order permission checkbox
    And I click on update button
    Then I should be redirected to Staff Setting Page
    When I click on User Menu
    When I click on Logout
    Then I should be redirected to Admin Login Page
    And I fill qa email to email field
    And I fill qa password to password field
    And I click on login button
    Then I should see successful login
    When I check and click no thanks button

    Given I am on Orders Page
    And I input expired order to search field
    Then 1st row of order links should contain expired order
    When I click on 1st row of order links
    Then I should be redirected to Orders Show Page
    Then I Refresh
    Then I scroll down to logistic service order status
    Then logistic service order status should contain "Expired"

    When I click on product details edit button
    Then I should see product details edit reminder
    Then I click on reminder ok button
    And I should see add product button
    And I click on add product button
    Then I should see product of product list
    And I input "1st Product for Checkout" to search field
    Then 1st product of product list should contain '1st Product for Checkout'
    And I click on 1st product of product list
    And I click on popup save button
    Then outstanding amount should equal to "NT$30"
    And I click on product details save button
    Then I should see confirm popover
    And I click on yes button
    And total should contain "NT$70"
    Then I should see split button
    When I click on split button
    Then I should be redirected to Order Split Page
    And ---ROLL BACK---
    When I click on User Menu
    When I click on Logout
    Given I am on Admin Login Page
    And I fill correct account email to email field
    And I fill correct account password to password field
    And I click on login button
    Then I should see successful login
    When I check and click no thanks button

    Given I am on Staff Setting Page
    When I click on edit button
    Then I should be redirected to Edit Staff Permissions Page
    And I click on order permission checkbox
    And I click on update button
    Then I should be redirected to Staff Setting Page
    And I click on delete button
    Then I should see alert
    And I click on alert checkbox
    And I click on ok button

    Given I am on Orders Page
    And I input expired order to search field
    And I wait for 3 seconds for loading
    Then 1st row of order links should contain expired order
    When I click on 1st row of order links
    Then I should be redirected to Orders Show Page
    When I click on product details edit button
    Then I should see product details edit reminder
    Then I click on reminder ok button
    And I click on 2nd product details remove button
    And I click on 2nd product details ok button
    And I click on product details save button
    Then I should see confirm popover
    And I click on yes button
    And total should contain "NT$40"

  @EAT-618 @EAT-618-6 @fixture-failed-logistic
  Scenario: staff, edit/spilt order permission on Failed
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

    Given I am on Staff Setting Page
    Then I should see add button
    And I click on add button
    Then I should be redirected to Staff Setting Add Page
    And I fill qa email to email field
    And I click on add button
    Then I should be redirected to Edit Staff Permissions Page
    And I click on order permission checkbox
    And I click on update button
    Then I should be redirected to Staff Setting Page
    When I click on User Menu
    When I click on Logout
    Then I should be redirected to Admin Login Page
    And I fill qa email to email field
    And I fill qa password to password field
    And I click on login button
    Then I should see successful login
    When I check and click no thanks button

    Given I am on Orders Page
    And I input failed order to search field
    Then 1st row of order links should contain failed order
    When I click on 1st row of order links
    Then I should be redirected to Orders Show Page
    Then I Refresh
    Then I scroll down to logistic service order status
    Then logistic service order status should contain "Failed"

    When I click on product details edit button
    Then I should see product details edit reminder
    Then I click on reminder ok button
    And I should see add product button
    And I click on add product button
    Then I should see product of product list
    And I input "1st Product for Checkout" to search field
    Then 1st product of product list should contain '1st Product for Checkout'
    And I click on 1st product of product list
    And I click on popup save button
    Then outstanding amount should equal to "NT$30"
    And I click on product details save button
    Then I should see confirm popover
    And I click on yes button
    And total should contain "NT$40"
    Then I should see split button
    When I click on split button
    Then I should be redirected to Order Split Page
    And ---ROLL BACK---
    When I click on User Menu
    When I click on Logout

    Given I am on Admin Login Page
    And I fill correct account email to email field
    And I fill correct account password to password field
    And I click on login button
    Then I should see successful login
    When I check and click no thanks button

    Given I am on Staff Setting Page
    When I click on edit button
    Then I should be redirected to Edit Staff Permissions Page
    And I click on order permission checkbox
    And I click on update button
    Then I should be redirected to Staff Setting Page
    And I click on delete button
    Then I should see alert
    And I click on alert checkbox
    And I click on ok button

    Given I am on Orders Page
    And I input failed order to search field
    And I wait for 3 seconds for loading
    Then 1st row of order links should contain failed order
    When I click on 1st row of order links
    Then I should be redirected to Orders Show Page
    When I click on product details edit button
    Then I should see product details edit reminder
    Then I click on reminder ok button
    And I click on 2nd product details remove button
    And I click on 2nd product details ok button
    And I click on product details save button
    Then I should see confirm popover
    And I click on yes button
    And total should contain "NT$10"