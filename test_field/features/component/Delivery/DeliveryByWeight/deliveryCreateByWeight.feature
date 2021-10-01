@BaseCase @Admin @Delivery @DeliveryByWeight @deliveryCreateByWeight
Feature: Delivery Create weight fee Feature
  As a merchant
  I want to create new delivery with delivery by weight
  So that I can separate every weight to every shipping fee

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

  @C3733
  Scenario: Create Custom - Delivery by Weight (with Zero) shows error msg
    Given I am on Delivery Create Page
    When I select delivery type dropdown option included 'Custom' of delivery type dropdown
    And I fill 'Custom' to name field
    And I fill the description to description field
    And I select delivery fee type dropdown option included 'Order Weight' of delivery fee type dropdown
    And I click on select shipping countries link
    Then I should see shipping zone settings popup
    When I click on select the rest of the world checkbox
    And I click on ok button
    And I fill "0.56" to 1st weight field
    And I fill "5" to 1st delivery by weight fee field
    And I click on add zone button
    And I fill "0" to 2nd weight field
    And I fill "10" to 2nd delivery by weight fee field
    And I click on add zone button
    And I fill "0" to 3rd weight field
    And I fill "15" to 3rd delivery by weight fee field
    And I click on add zone button
    And I fill "5.5" to 4th weight field
    And I fill "20" to 4th delivery by weight fee field
    And I input "20" to 5th delivery by weight fee field
    Then 1st field error message should contain "Weight is invalid"
    Then 2nd field error message should contain "Weight is invalid"