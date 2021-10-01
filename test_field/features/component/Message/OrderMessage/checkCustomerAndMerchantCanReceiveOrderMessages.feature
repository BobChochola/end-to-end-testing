@BaseCase @ImageService @Admin @Storefront @Checkout @Message @OrderMessage @checkCustomerAndMerchantCanReceiveOrderMessages
@fixture-payment @fixture-delivery @fixture-product @fixture-shop @fixture-non-basket
Feature: message between merchant and cusotmer
  As a merchant
  I want to send message
  So that customer can receive message

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

  @C4092 @C4092-3 @EAT-1075 @EAT-1087
  Scenario: merchant can receive order message from customer
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
    And I wait for 3 seconds for loading
    Then I should be redirected to Shop Checkout Page
    When I fill name to name field
    And I fill email to email address field
    And I fill phone to contact number field
    And I click on same as checkbox
    And I click on agree terms checkbox
    And I click on place order button
    Then I should be redirected to Shop Order Confirm Page
    When I mark the value of order confirm info as variable order info
    And I scroll down to shop and customer comments field
    And I fill 'customer comment only text' to shop and customer comments field
    And I click on send button
    Then 1st message sender content should contain 'customer comment only text'
    When I pick message photo to image selector
    Then I should see delete image button
    And I click on send button
    Then I should have image message photo for 1st message image content
    And I fill 'customer comments text + image' to shop and customer comments field
    When I clear and pick message photo to image selector
    Then I should see delete image button
    And I click on send button
    Then 3rd message sender content should contain 'customer comments text + image'
    Then I should have image message photo for 2nd message image content
    Then I should see 3 message sender content

    Given I am on Dashboard Page
    When I click on side menu items included 'Message Center'
    And I switch to 2 of tabs
    Then I should be redirected to Message Center Page
    When I click on tab included 'Order Message'
    And I input order number to search field
    Then I should see row of message list
    Then 1st row of message list should contain 'customer comments text + image'
    Then 1st row of message list should contain order number
    When I click on 1st row of message list
    Then I should see message area
    Then I should see 2 image content
    Then I should have image message photo for 1st image content
    Then I should have image message photo for 2nd image content
    Then 1st row of customer order message content should contain 'customer comment only text'
    Then 3rd row of customer order message content should contain 'customer comments text + image'
    Then order link should contain order number
    # message canter 導頁問題，等改回導到w0再改回用click on order link
    # When I click on order link
    # And I switch to 3 of tabs
    # Then I should be redirected to Orders Show Page
    Given I am on Orders Page
    When I click on 1st row of order links
    Then I should be redirected to Orders Show Page
    Then order no should contain order number
    Then I should see 3 order message content
    Then 1st order message content should contain 'customer comments text + image'
    Then 3rd order message content should contain 'customer comment only text'
    Then I should have image message photo for order message image

  @EAT-1074
  Scenario: customer can receive order message from merchant
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
    And I wait for 3 seconds for loading
    Then I should be redirected to Shop Checkout Page
    When I fill name to name field
    And I fill email to email address field
    And I fill phone to contact number field
    And I click on same as checkbox
    And I click on agree terms checkbox
    And I click on place order button
    Then I should be redirected to Shop Order Confirm Page
    When I mark the value of order confirm info as variable order info
    And I scroll down to shop and customer comments field
    And I fill 'customer comment' to shop and customer comments field
    And I click on send button
    Then I should see message sender content

    Given I am on Shop Login Page
    And I fill email to email field
    And I fill password to password field
    When I click on submit button
    Then I should be redirected to Shop Order Confirm Page
    When I select language dropdown option included 'English' of language dropdown
    And I wait for 3 seconds for loading
    Then language dropdown should contain 'English'

    Given I am on Dashboard Page
    When I click on side menu items included 'Message Center'
    And I switch to 2 of tabs
    Then I should be redirected to Message Center Page
    When I click on tab included 'Order Message'
    And I input order number to search field
    Then I should see row of message list
    Then 1st row of message list should contain 'customer comment'
    Then 1st row of message list should contain order number
    When I click on 1st row of message list
    Then I should see message area
    Then latest message content should contain 'customer comment'
    When I fill 'merchant reply only text' to message field
    And I click on send button

    Then I wait for 100 seconds for mail sent
    When I switch to 3 of tabs
    Given I am on Google Mail Page
    Then I should see account field
    When I fill merchant email to account field
    And I click on identifier next button
    Then I should see password field
    When I input account password to password field
    And I check and click password next button
    Then I should see search field
    When I input order number to search field
    Then I should see row of mail list
    When I click on row of mail list included "has a new comment"
    Then I should see mail detail
    Then mail detail should contain 'merchant reply only text'
    Then I should see info box button
    When I click on info box button
    Then row of info box list should not contain 'bcc'
    When I scroll down the page till the bottom
    And I click on customer reply button
    When I switch to 4 of tabs
    Then I should be redirected to Shop Orders Show Page
    Then I should see message recipient content
    Then message recipient content should contain 'merchant reply only text'

    When I switch to 2 of tabs
    Then I should be on Message Center Page
    Then I should see message area
    When I pick message photo to image selector
    And I should see delete image button
    And I click on send button
    And I should see image content
    Then I should have image message photo for image content
    Then I wait for 100 seconds for mail sent
    When I switch to 3 of tabs
    Given I am on Google Mail Page
    Then I should see search field
    When I input order number to search field
    Then I should see row of mail list
    When I click on row of mail list included "has a new comment"
    Then I should see mail detail
    Then I should see mail image
    Then I should see info box button
    When I click on info box button
    Then row of info box list should not contain 'bcc'
    When I scroll down the page till the bottom
    And I click on customer reply button
    When I switch to 5 of tabs
    Then I should be redirected to Shop Orders Show Page
    Then I should see message recipient content
    Then I should have image message photo for message image content

    When I switch to 2 of tabs
    Then I should be on Message Center Page
    Then I should see message area
    When I fill 'merchant reply text + image' to message field
    When I pick message photo to image selector
    And I should see delete image button
    And I click on send button
    Then latest message content should contain 'merchant reply text + image'
    And I should see image content
    Then I should have image message photo for image content
    Then I wait for 100 seconds for mail sent
    When I switch to 3 of tabs
    Given I am on Google Mail Page
    Then I should see search field
    When I input order number to search field
    Then I should see row of mail list
    When I click on row of mail list included "has a new comment"
    Then I should see mail detail
    Then mail detail should contain 'merchant reply text + image'
    Then I should see mail image
    Then I should see info box button
    When I click on info box button
    Then row of info box list should not contain 'bcc'
    When I scroll down the page till the bottom
    And I click on customer reply button
    When I switch to 6 of tabs
    Then I should be redirected to Shop Orders Show Page
    Then I should see message recipient content
    Then 3rd message recipient content should contain 'merchant reply text + image'
    Then I should have image message photo for 2nd message image content