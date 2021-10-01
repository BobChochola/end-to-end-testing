@BaseCase @ImageService @Admin @Storefront @Checkout @Message @OrderMessage @checkoutOrderAdminOrderMessages
@fixture-payment @fixture-delivery @fixture-product @fixture-shop @fixture-non-basket
Feature: message between merchant and cusotmer
  As a customer
  I want to message to merchant and want to receive email

  Background:
    Given I am on Admin Login Page
    When I fill correct account email to email field
    And I fill correct account password to password field
    And I click on login button
    And I should see successful login
    Then I check intercom message notification frame and click clear intercom message button
    Then I check intercom message notification frame and click intercom message close button
    When I check new feature alert notification frame and click new feature alert close button
    When I check and click exclude products panel close button
    When I check and click no thanks button
    Given I am on Basic Setting Page
    When I mark the value of shop name field as variable shop name

  @C4092 @C4092-1
  Scenario: message between merchant and cusotmer
    Given I am on Shop Product Index Page
    When I input "4th Product for Checkout" to search field
    Then 1st product of products list should contain '4th Product for Checkout'
    When I click on 1st product of products list
    Then I should be redirected to Shop Product Show Page
    When I fill "5" to product quantity field
    And I click on add to cart button
    Then I should see cart panel
    When I click on checkout button
    Then I should be redirected to Shop Cart Page
    When I select country dropdown option included "Taiwan" of country list dropdown
    And I wait for 3 seconds for loading
    And I select delivery dropdown option included "Custom Delivery" of delivery method dropdown
    And I wait for 3 seconds for loading
    And I select payment dropdown option included "Bank Transfer" of payment method dropdown
    And I wait for 3 seconds for loading
    And I click on proceed to checkout button
    Then I should be redirected to Shop Checkout Page
    When I fill name to name field
    And I fill email to email address field
    And I fill phone to contact number field
    And I click on same as checkbox
    And I click on agree terms checkbox
    And I click on accept marketing checkbox
    And I click on place order button
    Then I should be redirected to Shop Order Confirm Page
    And I scroll down to shop and customer comments field
    And I fill "C4092" to shop and customer comments field
    And I pick message photo to image selector
    Then I should see delete image button
    And I click on send button
    Then I should see message sender content
    Then I wait for 60 seconds for mail sent
    Given I am on Google Mail Page
    Then I should see account field
    When I fill merchant email to account field
    And I click on identifier next button
    Then I should see password field
    When I input account password to password field
    And I check and click password next button
    Then I should see search field
    When I input shop name to search field
    Then I should see row of mail list
    When I click on row of mail list included "has a new comment"
    Then I should see info box button
    When I click on info box button
    Then row of info box list should not contain 'bcc'
    When I scroll down to merchant reply button
    And I click on merchant reply button
    When I switch to 2 of tabs
    Then I should be redirected to Orders Show Page
    And I should see order message content
    And I should have image message photo for order message image

  @C4092 @C4092-2 @EAT-1088 @EAT-1089
  Scenario: message between merchant and cusotmer and check reply and note
    Given I am on Shop Product Index Page
    When I input "4th Product for Checkout" to search field
    Then 1st product of products list should contain '4th Product for Checkout'
    When I click on 1st product of products list
    Then I should be redirected to Shop Product Show Page
    When I fill "5" to product quantity field
    And I click on add to cart button
    Then I should see cart panel
    When I click on checkout button
    Then I should be redirected to Shop Cart Page
    When I select country dropdown option included "Taiwan" of country list dropdown
    And I wait for 3 seconds for loading
    And I select delivery dropdown option included "Custom Delivery" of delivery method dropdown
    And I wait for 3 seconds for loading
    And I select payment dropdown option included "Bank Transfer" of payment method dropdown
    And I wait for 3 seconds for loading
    And I click on proceed to checkout button
    Then I should be redirected to Shop Checkout Page
    When I fill name to name field
    And I fill email to email address field
    And I fill phone to contact number field
    And I click on same as checkbox
    And I click on agree terms checkbox
    And I click on place order button
    Then I should be redirected to Shop Order Confirm Page
    When I mark the value of order confirm info as variable order info

    Given I am on Orders Page
    Then 1st row of order links should contain order number
    When I click on 1st row of order links
    Then I should be redirected to Orders Show Page
    And I fill 'order detail page reply test' to customer comments field
    Then I pick message photo to image selector
    And I should see send button
    And I click on send button
    Then I should see confirm popover
    When I click on OK button
    Then I should not see confirm popover
    Then 1st order message content should contain 'order detail page reply test'
    Then I should have image message photo for 1st order message image

    When I switch to 2 of tabs
    Given I am on Dashboard Page
    When I click on side menu items included 'Message Center'
    And I switch to 3 of tabs
    Then I should be redirected to Message Center Page
    When I click on tab included 'Order Message'
    And I input order number to search field
    Then I should see row of message list
    Then 1st row of message list should contain 'order detail page reply test'
    Then 1st row of message list should contain order number
    When I click on 1st row of message list
    Then I should see message area
    Then I should see image content
    Then I should have image message photo for 1st image content
    Then latest message content should contain 'order detail page reply test'
    Then latest message content should not contain 'Note'

    When I switch to 1 of tabs
    Then I should be on Orders Show Page
    When I click on comments tab included 'Note'
    Then I should see comments field
    And I fill 'order detail page note test' to comments field
    Then I clear and pick message photo to image selector
    And I should see send button
    And I click on send button
    Then I should see 2 order message content
    Then I should see 2 order message image
    Then 1st order message content should contain 'order detail page note test'
    Then 2nd order message content should contain 'order detail page reply test'
    Then I should have image message photo for 1st order message image
    Then I should have image message photo for 2nd order message image

    When I switch to 3 of tabs
    And I Refresh
    Then I should be on Message Center Page
    And I input order number to search field
    Then 1st row of message list should contain 'order detail page note test'
    Then 1st row of message list should contain order number
    When I click on 1st row of message list
    Then I should see message area
    Then I should see 2 image content
    Then I should have image message photo for 2nd image content
    Then latest message content should contain 'order detail page note test'
    Then latest message content should contain 'Note'
    Then I wait for 100 seconds for mail sent

    Given I am on Google Mail Page
    Then I should see account field
    When I fill merchant email to account field
    And I click on identifier next button
    Then I should see password field
    When I input account password to password field
    And I check and click password next button
    Then I should see search field
    When I input order number to search field
    Then 1st row of mail list should contain 'has a new comment'
    Then 2nd row of mail list should not contain 'has a new comment'
    When I click on row of mail list included 'has a new comment'
    Then I should see mail detail
    Then mail detail should contain 'order detail page reply test'
    Then mail detail should not contain 'order detail page note test'
    Then I should see mail image
    When I scroll down the page till the bottom
    And I click on customer reply button
    When I input shop name to search field
    Then I should see row of mail list
    When I switch to 4 of tabs
    Then I should be redirected to Shop Orders Show Page
    Then I should not see message recipient content
    Then I should see sign in button
    When I click on sign in button
    Then I should be redirected to Shop Login Page
    And I fill email to email field
    And I fill password to password field
    When I click on submit button
    Then I should be redirected to Shop Orders Show Page
    Then I should see message recipient content