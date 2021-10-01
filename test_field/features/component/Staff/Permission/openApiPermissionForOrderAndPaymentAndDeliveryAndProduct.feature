@BaseCase @Admin @Staff @Permission @openApiPermissionForOrderAndPaymentAndDeliveryAndProduct
@fixture-open-api-management
Feature: Open Api Permission For Order And Payment And Delivery
  As a merchant
  I want to open api permission for order & payment & delivery
  So that I can see new api permissions under order and payment and delivery section

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

  @openApiPermissionForOrderAndPaymentAndDeliveryAndProduct-1
  Scenario: Add new staff
    Given I am on Staff Setting Add Page
    And I fill qa email to email field
    And I click on add button
    Then I should be redirected to Edit Staff Permissions Page
    And I click on switch tab button included "API Auth"
    Then I should see checkbox group
    Then I scroll down to generate button
    Then checkbox group included 'products' and same order of checkbox group should also contain "indexshowsearchupdate_quantityupdate_variation_quantityupdate_priceupdate_variation_pricecreateupdate_quantity_by_skuupdatecreate_product_variationupdate_product_variationdelete_product_variationadd_imagesdelete_imagesget_stocksupdate_stocksdelete"
    Then checkbox group included 'payments' and same order of checkbox group should also contain "paymentsindexshow"
    Then checkbox group included 'delivery_options' and same order of checkbox group should also contain "delivery_optionsindexshow"
    Then checkbox group included 'orders' and same order of checkbox group should also contain "ordersindexshowsearchupdate_statusupdate_delivery_statusupdate_payment_statusupdatecreateshow_labelexecute_shipment"
    And ---ROLL BACK---
    Given I am on Staff Setting Page
    And I click on delete button
    Then I should see alert
    And I click on alert checkbox
    And I click on ok button
    Then staff should not contain qa email

  @openApiPermissionForOrderAndPaymentAndDeliveryAndProduct-2
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
    And I click on switch tab button included "API Auth"
    Then I should see checkbox group
    Then I scroll down to update button
    Then checkbox group included 'products' and same order of checkbox group should also contain "indexshowsearchupdate_quantityupdate_variation_quantityupdate_priceupdate_variation_pricecreateupdate_quantity_by_skuupdatecreate_product_variationupdate_product_variationdelete_product_variationadd_imagesdelete_imagesget_stocksupdate_stocksdelete"
    Then checkbox group included 'payments' and same order of checkbox group should also contain "paymentsindexshow"
    Then checkbox group included 'delivery_options' and same order of checkbox group should also contain "delivery_optionsindexshow"
    Then checkbox group included 'orders' and same order of checkbox group should also contain "ordersindexshowsearchupdate_statusupdate_delivery_statusupdate_payment_statusupdatecreateshow_labelexecute_shipment"