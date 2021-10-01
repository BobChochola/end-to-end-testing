@BaseCase @Admin @ImageGallery @checkImageGalleryUI @EAT-1000
Feature: check Image Gallery UI
  As a merchant
  I want to go to image gallery page
  So that I can see correct UI of image gallery page
 
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

  @EAT-1000-1
  Scenario: check Image Gallery UI
    Given I am on Setup Guide Page
    When I click on side menu items included 'Settings'
    And I click on side submenu items included 'Image Gallery'
    Then I should be redirected to Image Gallery Page
    Then I should see image limit
    Then image limit should contain '0 / 100000'
    Then description message should contain 'You may store images in the gallery, and use them in order settings.'
    Then I should see box header
    Then box header should contain 'Image Gallery'
    Then I should see empty message
    Then empty message should contain 'Upload your first photo now!'
    Then image table title should contain 'Image'
    Then image table title should contain 'Name'
    Then image table title should contain 'Upload Time'
    Then I should see upload image button
    When I select language dropdown option included '繁' of language dropdown
    Then description message should contain '店家可以儲存影像在圖片庫，再到其他的設定頁面使用。'
    Then empty message should contain '立即上載你的第一張圖片！'
    Then image table title should contain '圖片'
    Then image table title should contain '圖片名稱'
    Then image table title should contain '上載時間'
    When I select language dropdown option included '简' of language dropdown
    Then description message should contain '店家可以保存视频在图片库，再到其他的设定页面使用。'
    Then empty message should contain '立即上传你的第一张图片！'
    Then image table title should contain '图片'
    Then image table title should contain '图片名称'
    Then image table title should contain '上传时间'