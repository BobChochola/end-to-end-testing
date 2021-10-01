@BaseCase @ImageService @Admin @FreeGift @Search @ProductSubscription @settingGiftInProductSubscriptionManagement @fixture-subscription-product
Feature: Setting gift in product subscription management
  As a merchant
  I want to add new subscription gift setting in product subscription management

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

  Scenario: Free gift with enough inventory and out of stock
    Given I am on Free Gifts Index Page
    Then I should see add button
    When I click on add button
    Then I should be redirected to Free Gifts Create Page
    When I fill "(dirty data) Free gift with enough inventory" to english name field
    And I pick free gift photo to free gift photo selector
    Then I should see delete photo button
    And I fill "100" to quantity field
    And I click on add button
    Then I should be redirected to Free Gifts Index Page
    Then I should see alert
    Then 1st row of free gift list should contain "Free gift with enough inventory"
    Then I should have image free gift photo for row of free gift photo
    Then 1st row of quantity list should contain "100"
    Then 1st row of status list should contain "Published"

    When I click on add button
    Then I should be redirected to Free Gifts Create Page
    When I fill "(dirty data) Free gift out of stock" to english name field
    And I pick free gift photo to free gift photo selector
    Then I should see delete photo button
    And I fill "0" to quantity field
    And I click on add button
    Then I should be redirected to Free Gifts Index Page
    Then I should see alert
    Then 1st row of free gift list should contain "Free gift out of stock"
    Then I should have image free gift photo for row of free gift photo
    Then 1st row of quantity list should contain "0"
    Then 1st row of status list should contain "Published"

    Given I am on Product Subscription Management Page
    And I click on setting button
    Then I should be redirected to Setting Subscription Gift Page
    Then I should see promotion of promotion list
    And I click on add button
    Then I should be redirected to Setting Subscription Gift Create Page
    And I fill "1" to free gift field
    And I fill "2" to subscription field
    And I click on select button
    Then I should see select popover
    And I input "Free gift with enough inventory" to search field
    Then 1st row of popover free gift list should contain 'Free gift with enough inventory'
    And I click on 1st select of free gift list
    And I click on save button
    Then I should see row of free gift
    Then row of free gift should contain "100"
    When I click on update button
    Then I should be redirected to Setting Subscription Gift Page
    Then promotion of promotion list should contain "2"
    When I click on 1st edit button
    Then I should be redirected to Setting Subscription Gift Edit Page
    Then free gift field should contain "1"
    Then subscription field should contain "2"
    Then row of free gift should contain "Free gift with enough inventory"
    Then row of free gift should contain "100"
    And I fill "2" to free gift field
    And I fill "3" to subscription field
    And I click on reselect button
    Then I should see select popover
    And I input "Free gift with enough inventory" to search field
    Then 1st row of popover free gift list should contain 'Free gift with enough inventory'
    And I click on 1st select of free gift list
    And I input "Free gift out of stock" to search field
    Then 1st row of popover free gift list should contain 'Free gift out of stock'
    Then I should see select of free gift list
    And I click on 1st select of free gift list
    And I click on save button
    Then I should see row of free gift
    Then row of free gift should contain "0"
    And I click on update button
    Then I should be redirected to Setting Subscription Gift Page
    Then I should not see loading icon
    Then promotion of promotion list should contain "3"
    When I click on 1st edit button
    Then I should be redirected to Setting Subscription Gift Edit Page
    Then free gift field should contain "2"
    Then subscription field should contain "3"
    Then row of free gift should contain "Free gift out of stock"
    Then row of free gift should contain "0"
    And ---ROLL BACK---
    Given I am on Setting Subscription Gift Page
    Then I should see promotion of promotion list
    Then I should see row of delete button
    When I click on 1st row of delete button
    And I should see confirmation popover
    And I click on delete checkbox
    And I click on confirm delete button
    Then I should not see confirmation popover
    Then promotion of promotion list should contain "No promotions yet"
    Given I am on Free Gifts Index Page
    Then I should see row of select checkbox list
    When I click on 1st row of select checkbox list
    And I click on 2nd row of select checkbox list
    When I select delete of bulk actions dropdown
    And I should see confirmation popover
    And I click on delete checkbox
    And I click on confirm delete button
    Then I should not see confirmation popover