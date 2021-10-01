@BaseCase @ImageService @Admin @ImageGallery @imageGalleryUploadImage @EAT-1000
Feature: upload image at Image Gallery
  As a merchant
  I want to upload image at image gallery page
  So that I can see correct image
 
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

  @EAT-1000-2
  Scenario: check upload correct image
    Given I am on Image Gallery Page
    Then I should see image limit
    Then image limit should contain '0 / 100000'
    Then I should see upload image button
    When I pick png image to image selector
    And I wait for 5 seconds for uploading
    Then I should have image png image for 1st row of image
    Then row of image name should contain '2.png'
    Then row of upload time should contain dateNow
    Then row of upload time should contain hourNow
    Then row of upload time should contain meridianNow
    Then I should see copy url button
    When I click on 1st copy url button
    Then I should see alert
    Then I should see delete button
    Then image limit should contain '1 / 100000'
    When I clear and pick jpg image to image selector
    And I wait for 5 seconds for uploading
    Then I should have image jpg image for 1st row of image
    Then row of image name should contain '3.jpg'
    Then row of upload time should contain dateNow
    Then row of upload time should contain hourNow
    Then row of upload time should contain meridianNow
    Then I should see 2 copy url button
    When I click on 2nd copy url button
    Then I should see alert
    Then I should see 2 delete button
    Then image limit should contain '2 / 100000'

    Then ---I NEED TO ROLLBACK image list---    
    When I click on 2nd delete button
    Then I should see delete popover
    When I click on ensure checkbox
    And I click on ok button
    Then image list should not contain '2.png'
    When I click on 1st delete button
    Then I should see delete popover
    When I click on ensure checkbox
    And I click on ok button
    Then image list should not contain '3.jpg'

    When I clear and pick large image to image selector
    Then I should see error message
    Then error message should contain 'The following image(s) exceed(s) 10 MB. Please try a different image:'
    Then I should see empty message
    Then empty message should contain 'Upload your first photo now!'