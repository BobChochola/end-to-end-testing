var {defineSupportCode} = require('cucumber');
let Promise = require('bluebird')

/* fields will be pass along
 *
 * page: current page
 * sample: a key value pair mapping a string to a sample value so that you can use later on
 */

defineSupportCode(function({Given, When, Then}) {

  /*
   * helper
   */

  // @description drive the browser to the page
  // @param pageClass the class of the page after transformation
  // @example I am on Admin Panel Page

  Given('I am on {page}', function(pageClass) {

    let page = new pageClass(this)

    this.page = page

    return page.go()

  })

  // @description fill a value to a field WITHOUT PRESSING ENTER. the value better be identifier being translated in SampleTransformer
  // @param sample a string or a key value to be transformed in SampleTransformer
  // @param elementId the identifier mapped to the selector in the page object
  // @example I simply fill correct account email to email field

  When('I simply fill {noQouteString} to {noQouteString}', function(sample, elementId) {

    return this.page.fill(elementId, 0, this.page.handleSample(sample), false)

  })

  // @description fill a value to a field WITHOUT PRESSING ENTER. the value better be identifier being translated in SampleTransformer
  // @param sample a string or a key value to be transformed in SampleTransformer
  // @param elementId the identifier mapped to the selector in the page object
  // @example I simply fill correct account email to email field

  When('I simply fill {string} to {noQouteString}', function(value, elementId) {

    return this.page.fill(elementId, 0, value, false)

  })

  // @description fill a value to a field WITHOUT PRESSING ENTER. the value better be identifier being translated in SampleTransformer
  // @param sample a string or a key value to be transformed in SampleTransformer
  // @param elementId the identifier mapped to the selector in the page object
  // @example I simply fill correct account email to 2nd email field

  When('I simply fill {noQouteString} to {order} {noQouteString}', function(sample, elementIdx, elementId) {

    return this.page.fill(elementId, elementIdx, this.page.handleSample(sample), false)

  })

  // @description fill a value to a field WITHOUT PRESSING ENTER. the value better be identifier being translated in SampleTransformer
  // @param sample a string or a key value to be transformed in SampleTransformer
  // @param elementId the identifier mapped to the selector in the page object
  // @example I simply fill 'email' to 2nd email field

  When('I simply fill {string} to {order} {noQouteString}', function(value, elementIdx, elementId) {

    return this.page.fill(elementId, elementIdx, value, false)

  })

  // @description clear the field and fill a value to a field WITHOUT PRESSING ENTER. the value better be identifier being translated in SampleTransformer
  // @param sample a string or a key value to be transformed in SampleTransformer
  // @param elementId the identifier mapped to the selector in the page object
  // @example I fill correct account email to email field

  When('I fill {noQouteString} to {noQouteString}', function(sample, elementId) {

    return this.page.fill(elementId, 0, this.page.handleSample(sample))

  })

  // @description clear the field and fill a value to a field WITHOUT PRESSING ENTER. the value better be identifier being translated in SampleTransformer
  // @param value a string
  // @param elementId the identifier mapped to the selector in the page object
  // @example I fill correct account email to email field

  When('I fill {string} to {noQouteString}', function(value, elementId) {

    return this.page.fill(elementId, 0, value)

  })

  // @description clear the field and fill a value to a field WITHOUT PRESSING ENTER. the value better be identifier being translated in SampleTransformer
  // @param value a string
  // @param order the order of the target element (1st | 2nd | 3rd | 10th)
  // @param elementId the identifier mapped to the selector in the page object
  // @example I fill correct account email to email field

  When('I fill {string} to {order} {noQouteString}', function(value, elementIdx, elementId) {

    return this.page.fill(elementId, elementIdx, value)

  })

  // @description clear the field and fill a value to a field WITHOUT PRESSING ENTER. the value better be identifier being translated in SampleTransformer
  // @param sample a key value to be transformed in SampleTransformer
  // @param order the order of the target element (1st | 2nd | 3rd | 10th)
  // @param elementId the identifier mapped to the selector in the page object
  // @example I fill correct account email to 1st email field

  When('I fill {noQouteString} to {order} {noQouteString}', function(sample, elementIdx, elementId) {

    return this.page.fill(elementId, elementIdx, this.page.handleSample(sample))

  })

  // @description clear the field and fill a sample to a field ALSO PRESS ENTER.
  // @param sample a key value to be transformed in SampleTransformer
  // @param elementId the identifier mapped to the selector in the page object
  // @param variable the name of the varible storing the value grepped from element
  // @example I fill '10' to testqa quantity field for the same order of inventory row of variant dropdown equal to 'Blue, S'

  When("I fill {string} to {noQouteString} for the same order of {noQouteString} equal to {string}", function(fillstring, fillElementId, checkElementId, checkvariable) {

    return this.page.fillOnAnotherElementText(fillstring, fillElementId, 0, checkElementId, checkvariable, 'equal')

  })

  // @description fill value to the element if the element exist
  // @param elementId the identifier mapped to the selector in page object
  // @param value a string
  // @example I check phone field and fill phone
  When("I check {noQouteString} and fill {string}", function(elementId, value){

    return this.page.checkAndFill(elementId, 0, value)

  })

  // @description fill value to the element if the element exist
  // @param elementId the identifier mapped to the selector in page object
  // @param sample a key value to be transformed in SampleTransformer
  // @example I check phone field and fill phone
  When("I check {noQouteString} and fill {noQouteString}", function(elementId, sample){

    return this.page.checkAndFill(elementId, 0, this.page.handleSample(sample))

  })

  // @description clear the field and fill a sample to a field ALSO PRESS ENTER.
  // @param sample a key value to be transformed in SampleTransformer
  // @param elementId the identifier mapped to the selector in the page object
  // @example I simply input correct option to add options field

  When('I simply input {noQouteString} to {noQouteString}', function(sample, elementId) {

    return this.page.input(elementId, 0, this.page.handleSample(sample), false)

  })

  // @description clear the field and fill a sample to a field ALSO PRESS ENTER.
  // @param sample a key value to be transformed in SampleTransformer
  // @param elementId the identifier mapped to the selector in the page object
  // @example I input correct option to add options field

  When('I input {noQouteString} to {noQouteString}', function(sample, elementId) {

    return this.page.input(elementId, 0, this.page.handleSample(sample))

  })

  // @description clear the field and fill a value to a field ALSO PRESS ENTER
  // @param value a string
  // @param elementId the identifier mapped to the selector in the page object
  // @example I input "Red" to add options field

  When('I input {string} to {noQouteString}', function(string, elementId) {

    return this.page.input(elementId, 0, string)

  })

  // @description clear the field and fill a value to one of the matched fields ALSO PRESS ENTER.
  // @param sample a key value to be transformed in SampleTransformer
  // @param order the order of the target element (1st | 2nd | 3rd | 10th)
  // @param elementId the identifier mapped to the selector in the page object
  // @example I input Red to 2nd add options field

  When('I input {noQouteString} to {order} {noQouteString}', function(sample, order, elementId) {

    return this.page.input(elementId, order, this.page.handleSample(sample))

  })

  // @description clear the field and fill a value to one of the matched fields ALSO PRESS ENTER
  // @param value a string
  // @param order the order of the target element (1st | 2nd | 3rd | 10th)
  // @param elementId the identifier mapped to the selector in the page object
  // @example I input "Red" to 2nd add options field

  When('I input {string} to {order} {noQouteString}', function(string, order, elementId) {

    return this.page.input(elementId, order, string)

  })

  // @description input a value to a input tag, mainly handle some file picking scenarios
  // @param sample a string or a key value to be transformed
  // @param elementId the identifier mapped to the selector in the page object
  // @example I pick logo image to logo image selector

  When("I clear and pick {noQouteString} to {noQouteString}", function(sample, elementId) {

    return this.page.fillFileSelector(elementId, 0, this.page.handleSample(sample), true)

  })

  // @description input a value to a input tag, mainly handle some file picking scenarios
  // @param sample a string or a key value to be transformed
  // @param elementId the identifier mapped to the selector in the page object
  // @example I pick logo image to logo image selector

  When("I pick {noQouteString} to {noQouteString}", function(sample, elementId) {

    return this.page.fillFileSelector(elementId, 0, this.page.handleSample(sample), false)

  })

  // @description input a value to a input tag, mainly handle some file picking scenarios
  // @param sample a string or a key value to be transformed
  // @param elementId the identifier mapped to the selector in the page object
  // @example I pick logo image to 1st logo image selector

  When("I pick {noQouteString} to {order} {noQouteString}", function(sample, elementIdx, elementId) {

    return this.page.fillFileSelector(elementId, elementIdx, this.page.handleSample(sample), false)

  })

  // @description click on one of the elements
  // @param order the order of the target element (1st | 2nd | 3rd | 10th)
  // @param elementId the identifier mapped to the selector in the page object
  // @example I click on add variation button

  When('I click on {order} {noQouteString}', function(order, elementId) {

    return this.page.click(elementId, order)

  })

  // @description click on a element
  // @param elementId the identifier mapped to the selector in the page object
  // @example I click on add variation button

  When('I click on {noQouteString}', function(elementId) {

    return this.page.click(elementId)

  })

  // @description click on last order of a element
  // @param elementId the identifier mapped to the selector in the page object
  // @example I click 1st last order of set home page button

  When('I click {order} last order of {noQouteString}', function(order,elementId) {

    return this.page.click(elementId, order, 'last')

  })

  // @description click on a element included string
  // @param elementId the identifier mapped to the selector in the page object
  // @param value the expected value
  // @example I click on add variation button included "add"

  When('I click on {noQouteString} included {string}', function(elementId, value) {

    return this.page.clickOnText(elementId, 0, value, 'include')

  })

  // @description click on a element included string
  // param order the order of the target element (1st | 2nd | 3rd | 10th)
  // @param elementId the identifier mapped to the selector in the page object
  // @example I click on 2nd add variation included "add"

  When('I click on {order} {noQouteString} included {string}', function(order,elementId, value) {

    return this.page.clickOnText(elementId, order, value, 'include')

  })

  // @description click the element if the element exist
  // @param elementId the identifier mapped to the selector in page object
  // @example I check and click save checkbox
  When("I check and click {noQouteString}", function(elementId){

    return this.page.checkAndClick(elementId, 0)

  })

  // @description click the element if the element exist
  // @param order the order of the target element (1st | 2nd | 3rd | 10th)
  // @param elementId the identifier mapped to the selector in page object
  // @example I check and click 2nd save checkbox
  When("I check and click {order} {noQouteString}", function(order, elementId){

    return this.page.checkAndClick(elementId, order)

  })

  // @description click the element if the element exist
  // @param elementId the identifier mapped to the selector in page object
  // @example I check and click save checkbox
  When("I check element {noQouteString} and click {noQouteString}", function(checkElementId, clickElementId){

    return this.page.checkAndClickAnotherElement(checkElementId, clickElementId, 0)

  })

  // @description switch to intercom frame and check intercom notification
  // @param elementId the identifier mapped to the selector in page object
  // @param value expect value
  // @example Then I check re create receipt and click included 'Yes, please re-create the receipt based on edited order'
  When("I check {noQouteString} and click included {string}", function(elementId, value){

    return this.page.checkElementAndClick(elementId, 0, value)

  })

  // @description switch to intercom frame and check intercom notification
  // @param elementId the identifier mapped to the selector in page object
  // @param value expect value
  // @example Then I check 2nd re create receipt and click included content
  When("I check {noQouteString} and click included {noQouteString}", function(elementId, sample){

    return this.page.checkElementAndClick(elementId, 0, this.page.handleSample(sample))

  })

  // @description click on a element included string
  // param order the order of the target element (1st | 2nd | 3rd | 10th)
  // @param elementId the identifier mapped to the selector in the page object
  // @example I click on 2nd add variation included add

  When('I have sample and click on {order} {noQouteString} included {noQouteString}', function(order,elementId, sample) {

    return this.page.clickOnText(elementId, order, this.page.handleSample(sample), 'include')

  })

  // @description switch to intercom frame and check intercom notification
  // @param frameId the identifier mapped to the selector in page object or mapped to default frame
  // @param elementId the identifier mapped to the selector in page object
  // @example Then I check intercom notification frame and click clear intercom message button

  When("I check {noQouteString} notification frame and click {noQouteString}", function(frameId, elementId){

    return this.page.findFrameExistsAndClick(frameId, elementId)

  })

  // @description click on a element included string
  // @param elementId the identifier mapped to the selector in the page object
  // @param value the expected value
  // @example When I click row of message link for the same order of row of message list included '0938433968'

  When('I click {noQouteString} for the same order of {noQouteString} included {string}', function(clickElementId, checkElementId, value) {

    return this.page.clickOnAnotherElementText(clickElementId, 0, checkElementId, value, 'include')

  })

  // @description click on a element included string
  // @param elementId the identifier mapped to the selector in the page object
  // @param value the expected value witch operated by sample
  // @example I have sample and click on calendar this month date included only date of tomorrow

  When('I have sample and click on {noQouteString} included {noQouteString}', function(elementId, sample) {

    return this.page.clickOnText(elementId, 0, this.page.handleSample(sample), 'include')

  })

  // @description click all element if the element exist
  // @param elementId the identifier mapped to the selector in page object
  // @example I check row of message list and click all of them
  When("I check {noQouteString} and click all of them", function(elementId){

    return this.page.checkAndClickAll(elementId)

  })

  // @description mark value from an element to a variable
  // @param elementId the identifier mapped to the selector in the page object
  // @param variable the name of the varible storing the value grepped from element
  // @example I mark the value of email field as variable email

  When("I mark the value of {order} {noQouteString} as variable {noQouteString}", function(elementIdx, elementId, variable) {

    return this.page.storeValueFromElementWithIndex(variable, elementId, elementIdx)

  })

  // @description mark value from an sample to a variable
  // @param sample a string or a key value to be transformed in SampleTransformer
  // @param variable the name of the varible storing the value grepped from sample
  // @example I mark the sample email field as variable email

  When("I mark the sample {noQouteString} as variable {noQouteString}", function(sample, variable) {

    return this.page.storeVariable(variable, this.page.handleSample(sample))

  })

  // @description mark the text of element
  // @param elementId the identifier mapped to the selector in the page object
  // @example I mark the text of row of html content field

  When("I mark the text of {noQouteString}", function(elementId) {

    return this.page.markText(elementId, 0)

  })

  // @description mark value from an element to a variable
  // @param elementId the identifier mapped to the selector in the page object
  // @param variable the name of the varible storing the value grepped from element
  // @example I mark the value of email field as variable email

  When("I mark the value of {noQouteString} as variable {noQouteString}", function(elementId, variable) {

    return this.page.storeValueFromElementWithIndex(variable, elementId, 0)

  })

  // @description mark value from an element to a variable
  // @param elementId the identifier mapped to the selector in the page object
  // @param variable the name of the varible storing the value grepped from element
  // @example I mark the value of sales channel available quantity for the same order of variant equal to 'Blue, M' as variable before checkout

  When("I mark the value of {noQouteString} for the same order of {noQouteString} equal to {string} as variable {noQouteString}", function(markElementId, checkElementId, checkvariable, variable) {

    return this.page.markOnAnotherElementText(variable, markElementId, 0, checkElementId, checkvariable, 'equal')

  })

  // @description click on a element included string
  // @param elementId the identifier mapped to the selector in the page object
  // @param sample a key value to be transformed in SampleTransformer
  // @example When I click row of message link for the same order of row of message list included email

  When('I click {noQouteString} for the same order of {noQouteString} included {noQouteString}', function(clickElementId, checkElementId, sample) {

    return this.page.clickOnAnotherElementText(clickElementId, 0, checkElementId, this.page.handleSample(sample), 'include')

  })

  // @description select an option in drop down menu
  // @param selectElementId the identifier of the option mapped to the selector in the page object
  // @param selectElementId the identifier of the option mapped to the selector in the page object
  // @param elementId the identifier of the drop down menu mapped to the selector in the page object
  // @example I select Iceland of based country dropdown menu

  When('I select {noQouteString} of {noQouteString}', function(selectElementId, elementId) {

    return this.page.selectDropDownMenu(elementId, 0, selectElementId, 0)

  })

  // @description select an option included string in drop down menu
  // @param selectElementId the identifier of the option mapped to the selector in the page object
  // @param value the expected value
  // @param elementId the identifier of the drop down menu mapped to the selector in the page object
  // @example I select delivery method included "Custom" of delivery dropdown

  When('I select {noQouteString} included {string} of {noQouteString}', function(selectElementId, value, elementId) {

    return this.page.selectDropDownString(elementId, 0, selectElementId, 0, value, 'include')

  })

  // @description select an option included string in drop down menu
  // @param selectElementId the identifier of the option mapped to the selector in the page object
  // @param value the expected value
  // @param elementId the identifier of the drop down menu mapped to the selector in the page object
  // @example I select 2nd delivery method included "Custom" of delivery dropdown

  When('I select {order} {noQouteString} included {string} of {noQouteString}', function(order, selectElementId, value, elementId) {

    return this.page.selectDropDownString(elementId, 0, selectElementId, order, value, 'include')

  })

  // @description select an option included string in drop down menu
  // @param selectElementId the identifier of the option mapped to the selector in the page object
  // @param value the expected value
  // @param elementId the identifier of the drop down menu mapped to the selector in the page object
  // @example I select delivery method included "Custom" of 1st delivery dropdown

  When('I select {noQouteString} included {string} of {order} {noQouteString}', function(selectElementId, value, order, elementId) {

    return this.page.selectDropDownString(elementId, order, selectElementId, 0, value, 'include')

  })

  // @description select an option included string in drop down menu
  // @param selectElementId the identifier of the option mapped to the selector in the page object
  // @param value the expected value
  // @param elementId the identifier of the drop down menu mapped to the selector in the page object
  // @example I select delivery method included "Custom" of 1st delivery dropdown

  When('I select {noQouteString} equal to {string} of {order} {noQouteString}', function(selectElementId, value, order, elementId) {

    return this.page.selectDropDownString(elementId, order, selectElementId, 0, value, 'equal')

  })

  // @description scroll down until an element is located
  // @param elementId the identifier mapped to the selector in the page object
  // @example I scroll down to login button

  When('I scroll down to {noQouteString}', function(elementId) {

    return this.page.scrollTo(elementId)

  })

  // @description hover over element
  // @param elementId the identifier mapped to the selector in the page object
  // @example I hover over add variation button

  When('I hover over {noQouteString}', function(elementId) {

    return this.page.hover(elementId)

  })

  // @description hover over one of the elements
  // @param order the order of the target element (1st | 2nd | 3rd | 10th)
  // @param elementId the identifier mapped to the selector in the page object
  // @example I hover over 2nd add variation button

  When('I hover over {order} {noQouteString}', function(order, elementId) {

    return this.page.hover(elementId, order)

  })

  // @description scroll down to the bottom of the page
  // @example I scroll down to the bottom of the page

  When('I scroll down the page till the bottom', function() {

    return this.page.scrollTo()

  })

  // @description scroll down until an element is located
  // @param elementId the identifier mapped to the selector in the page object
  // @example I scroll down to 2nd login button

  When('I scroll down to {order} {noQouteString}', function(order, elementId) {

    return this.page.scrollTo(elementId, order)

  })

  // @description NOT WORK YET. drag an element to another element
  // @param sourceElementId the identifier mapped to the selector in the page object
  // @param targetElementId the identifier mapped to the selector in the page object
  // @example I drag elementA to elementB

  When('I drag {noQouteString} to {noQouteString}', function(sourceElementId, targetElementId) {

    return this.page.dragTo(sourceElementId, 0, targetElementId, 0)

  })

  // @description NOT WORK YET. drag an element to another element
  // @param sourceElementId the identifier mapped to the selector in the page object
  // @param targetElementId the identifier mapped to the selector in the page object
  // @example I drag 1st elementA to 2nd elementB

  When('I drag {order} {noQouteString} to {order} {noQouteString}', function(sourceOrder, sourceElementId, targetOrder, targetElementId) {

    return this.page.dragTo(sourceElementId, sourceOrder, targetElementId, targetOrder)

  })

  // @description switch to another tabs
  // @param idx the expected which tab on the tab list
  // @example I switch to 2 of tabs

  When("I switch to {integer} of tabs" , function(idx){

    return this.page.changeTab(idx - 1, 6)

  })

  // @description check and switch to another tabs
  // @param idx the expected which tab on the tab list
  // @example I check and switch to 2 of tabs

  When("I check and switch to {integer} of tabs" , function(idx){

    return this.page.changeTab(idx - 1, 6, 'check')

  })

  // @description switch to another tabs for less time
  // @param idx the expected which tab on the tab list
  // @example I quickly switch to 2 of tabs

  When("I quickly switch to {integer} of tabs" , function(idx){

    return this.page.changeTab(idx - 1, 0)

  })

  // @description close the new tab
  // @example I close the tab

  When('I close the tab',function(){
    return this.page.closeTab()
  })

  // @description open new tabs
  // @param url the expected new tab redirect to newCurrentUrl
  // @example I open new tab and redirect https://sso-preview.shoplineapp.com/users/sign_in

  When("I open new tab and redirect to {noQouteString}" , function(sample){
    return this.page.openNewTab(this.page.handleSample(sample));
  })

  // @description switch to another frame and default frame
  // @param elementId the identifier mapped to the selector in page object or mapped to default
  // @example I switch to default frame
  // @example I switch to merchant service admin frame

  When("I switch to {noQouteString} frame" , function(elementId){

    return this.page.changeFrame(elementId)

  })

  // @description get value from an URL_idkey to variable
  // @example I get idcode from page url and mask as key

  When("I get idcode from page url and mask as {noQouteString}", function(variable) {

    return this.page.getUrlKey(variable, 24)

  })

  // @description let the browser sleep for seconds
  // @param second how long the browser should sleep
  // @param comment no specific usage
  // @example I wait for 15 seconds for image upload

  When("I wait for {integer} seconds {noQouteString}", function(second, comment) {

    return this.page.wait(second)

  })

  // @description assert a certain number of elements exist
  // @param count will calulated at sample.js
  // @param elementId the identifier mapped to the selector in the page object
  // @example I should count and see amount of available days with exclude day of week in element enabled date

  Then("I should count and see {noQouteString} in element {noQouteString}", function(countName, elementId) {
    
    return this.page.expectCount(elementId, this.page.handleSample(countName))

  })

  // @description take snapshot and append it to the scenario. mainly for debug and reports
  // @example I take a snapshot

  When('I take a snapshot', function() {

    return this.page.snapShot()

  })

  // @description refresh current tab
  // @example I Refresh
  When('I Refresh',function(){
    return this.page.refresh()
  })

  // @description assert the current page
  // @param pageClass the class of the page after transformation
  // @example I should be on Admin Panel Page

  Then('I should be on {page}', function(pageClass) {

    let page = new pageClass(this)

    this.page = page
    this.page.logCurrentURL()

    return page.exist()

  })

  // @description assert the redirection
  // @param pageClass the class of the page after transformation
  // @example I should be redirected to Admin Login Page

  Then('I should be redirected to {page}', function(pageClass) {

    let page = new pageClass(this)
    this.page = page
    this.page.logCurrentURL()

    return page.exist()

  })

  // @description NOT WORK YET. drag an element to another element
  // @param sourceElementId the identifier mapped to the selector in the page object
  // @param targetElementId the identifier mapped to the selector in the page object
  // @param elementId the identifier mapped to the selector in the page object
  // @param value the expected value
  // @example I drag elementA for the same order of row of list included '711' to 2nd elementB

  Then('I drag {noQouteString} for the same order of {noQouteString} included {string} to {order} {noQouteString}', function(sourceElementId, checkElementId, value, targetOrder, targetElementId) {

    return this.page.dragOnAnotherElementText(sourceElementId, 0, targetElementId, targetOrder, checkElementId, value)

  })

  // @description NOT WORK YET. drag an element to another element
  // @param sourceElementId the identifier mapped to the selector in the page object
  // @param targetElementId the identifier mapped to the selector in the page object
  // @param elementId the identifier mapped to the selector in the page object
  // @param value the expected value
  // @example I drag elementA for the same order of row of list included '711' to elementB

  Then('I drag {noQouteString} for the same order of {noQouteString} included {string} to {noQouteString}', function(sourceElementId, checkElementId, value, targetElementId) {

    return this.page.dragOnAnotherElementText(sourceElementId, 0, targetElementId, 0, checkElementId, value)

  })

  // @description assert an element exist
  // @param elementId the identifier mapped to the selector in the page object
  // @example I should see variation row

  Then("I should see {noQouteString}", function(elementId) {

    return this.page.locate(elementId)

  })

  // @description assert an element does not exist
  // @param elementId the identifier mapped to the selector in the page object
  // @example I should not see variation row
  Then("I should not see {noQouteString}", function(elementId) {

    return this.page.expectCount(elementId, 0)

  })

  // @param value the expected value
  // @example Then product list included '11th Product for Checkout' and same order of variants quantity should not contain '4'

  Then('{noQouteString} included {string} and same order of {noQouteString} should not contain {string}', function(elementId, value, checkElementId, checkValue) {

    return this.page.checkAnotherText(elementId, 0, value, checkElementId, checkValue, 'notInclude')

  })


  // @description assert a certain number of elements exist
  // @param count the expected count of the element
  // @param elementId the identifier mapped to the selector in the page object
  // @example I should see 6 variation row

  Then("I should see {integer} {noQouteString}", function(count, elementId) {

    return this.page.expectCount(elementId, count)

  })

  // @description assert an element's text equal some text
  // @param elementId the identifier mapped to the selector in the page object
  // @param value the expected value
  // @example Then product list included '11th Product for Checkout' and same order of variants quantity should also equal to '4'

  Then('{order} {noQouteString} included {string} and same order of {noQouteString} should also equal to {noQouteString}', function(order, elementId, value, checkElementId, sample) {

    return this.page.checkAnotherText(elementId, order, value, checkElementId, this.page.handleSample(sample), 'equal')

  })

  // @description assert an element contain some text got from the sample
  // @param elementId the identifier mapped to the selector in the page object
  // @param sample the sample key to get the expected value
  // @example email field should equals to email

  Then('{noQouteString} should contain {noQouteString}', function(elementId, sample) {

    if (elementId == 'pdf') {return this.page.checkPdfText(this.page.handleSample(sample), 'include')}
    if (elementId.includes('downloaded file')) {return this.page.checkTextInExcelFromLink(elementId.substr('21'), 0, this.page.handleSample(sample), 'include')}
    return this.page.checkText(elementId, 0, this.page.handleSample(sample), 'include')

  })

  // @description assert an element contain some text
  // @param order the order of the target element (1st | 2nd | 3rd | 10th)
  // @param elementId the identifier mapped to the selector in the page object
  // @param sample the sample key to get the expected value
  // @example 1st email field should equals to email

  Then('{order} {noQouteString} should contain {noQouteString}', function(order, elementId, sample) {

    return this.page.checkText(elementId, order, this.page.handleSample(sample), 'include')

  })

  // @description assert an element contain some text
  // @param elementId the identifier mapped to the selector in the page object
  // @param value the expected value
  // @example email field should equals to 'test@test.com'
  // @example downloaded file from download button should contain '2 layer product for member tier price'

  Then('{noQouteString} should contain {string}', function(elementId, value) {

    if (elementId == 'pdf') {return this.page.checkPdfText(value, 'include')}
    if (elementId.includes('downloaded file')) {return this.page.checkTextInExcelFromLink(elementId.substr('21'), 0, value, 'include')}
    return this.page.checkText(elementId, 0, value, 'include')

  })

  // @description assert an element contain some text
  // @param order the order of the target element (1st | 2nd | 3rd | 10th)
  // @param elementId the identifier mapped to the selector in the page object
  // @param value the expected value
  // @example 1st email field should equals to 'test@test.com'

  Then('{order} {noQouteString} should contain {string}', function(order, elementId, value) {

    return this.page.checkText(elementId, order, value, 'include')

  })


  // @description assert an element contain some text
  // @param elementId the identifier mapped to the selector in the page object
  // @param value the expected value
  // @example Then product list included '11th Product for Checkout' and same order of variants quantity should also contain '4'

  Then('{noQouteString} included {string} and same order of {noQouteString} should also contain {string}', function(elementId, value, checkElementId, checkValue) {

    return this.page.checkAnotherText(elementId, 0, value, checkElementId, checkValue, 'include')

  })

  // @description assert an element contain some text
  // @param elementId the identifier mapped to the selector in the page object
  // @param value the expected value
  // @example email field should equals to 'test@test.com'

  Then('{noQouteString} included {string} and same order of {noQouteString} should also contain {noQouteString}', function(elementId, value, checkElementId, sample) {

    return this.page.checkAnotherText(elementId, 0, value, checkElementId, this.page.handleSample(sample), 'include')

  })

  // @description assert there is no matched elements having text
  // @param elementId the identifier mapped to the selector in the page object
  // @param value the expected value
  // @example email field should not equals to email

  Then('{noQouteString} should not contain {noQouteString}', function(elementId, sample) {

    if (elementId == 'pdf') {return this.page.checkPdfText(this.page.handleSample(sample), 'notInclude')}
    if (elementId.includes('downloaded file')) {return this.page.checkTextInExcelFromLink(elementId.substr('21'), 0, this.page.handleSample(sample), 'notInclude')}
    return this.page.checkTextInElements(elementId, this.page.handleSample(sample), 'notInclude')

  })

  // @description assert there is no matched elements having text
  // @param elementId the identifier mapped to the selector in the page object
  // @param value the expected value
  // @example email field should not contain 'test@test.com'

  Then('{noQouteString} should not contain {string}', function(elementId, value) {

    if (elementId == 'pdf') {return this.page.checkPdfText(value, 'notInclude')}
    if (elementId.includes('downloaded file')) {return this.page.checkTextInExcelFromLink(elementId.substr('21'), 0, value, 'notInclude')}
    return this.page.checkTextInElements(elementId, value, 'notInclude')

  })

  // @description assert an element equal some text
  // @param order the order of the target element (1st | 2nd | 3rd | 10th)
  // @param elementId the identifier mapped to the selector in the page object
  // @param value the expected value
  // @example 1st email field should not contain "test@test.com"

  Then('{order} {noQouteString} should not contain {string}', function(order, elementId, value) {

    return this.page.checkText(elementId, order, value, 'notInclude')

  })

  // @description assert an element equal some text
  // @param order the order of the target element (1st | 2nd | 3rd | 10th)
  // @param elementId the identifier mapped to the selector in the page object
  // @param value the expected value
  // @example 1st email field should contain "test@test.com"

  Then('{order} {noQouteString} should not contain {noQouteString}', function(order, elementId, sample) {

    return this.page.checkText(elementId, order, this.page.handleSample(sample), 'notInclude')

  })

  // @description check value from an element to a variable
  // @param order the order of the target element (1st | 2nd | 3rd | 10th)
  // @param elementId the identifier mapped to the selector in the page object
  // @param variable the name of the varible storing the value grepped from element
  // @example I should see 1st email field contains to variable email

  Then("I should see {order} {noQouteString} contains variable {noQouteString}", function(elementIdx, elementId, variable) {

    return this.page.checkValueFromElementWithIndex(elementId, elementIdx, variable, "include")

  })

  // @description assert an element equal some text
  // @param elementId the identifier mapped to the selector in the page object
  // @param value the expected value
  // @example email field should equals to email

  Then('{noQouteString} should equal to {noQouteString}', function(elementId, sample) {

    return this.page.checkText(elementId, 0, this.page.handleSample(sample), 'equal')

  })

  // @description assert an element equal some text
  // @param elementId the identifier mapped to the selector in the page object
  // @param value the expected value
  // @example email field should equals to 'test@test.com'

  Then('{noQouteString} should equal to {string}', function(elementId, value) {

    return this.page.checkText(elementId, 0, value, 'equal')

  })

  // @description assert an element equal some text
  // @param order the order of the target element (1st | 2nd | 3rd | 10th)
  // @param elementId the identifier mapped to the selector in the page object
  // @param value the expected value
  // @example 1st email field should equals to 'test@test.com'

  Then('{order} {noQouteString} should equal to {string}', function(order, elementId, value) {

    return this.page.checkText(elementId, order, value, 'equal')

  })

  // @description assert an element equal some text
  // @param order the order of the target element (1st | 2nd | 3rd | 10th)
  // @param elementId the identifier mapped to the selector in the page object
  // @param value the expected value
  // @example 1st email field should equals to email

  Then('{order} {noQouteString} should equal to {noQouteString}', function(order, elementId, sample) {

    return this.page.checkText(elementId, order, this.page.handleSample(sample), 'equal')

  })

  // @description assert an element's text equal some text
  // @param elementId the identifier mapped to the selector in the page object
  // @param value the expected value
  // @example Then product list included '11th Product for Checkout' and same order of variants quantity should also equal to '4'

  Then('{noQouteString} included {string} and same order of {noQouteString} should also equal to {string}', function(elementId, value, checkElementId, checkValue) {

    return this.page.checkAnotherText(elementId, 0, value, checkElementId, checkValue, 'equal')

  })

  // @description assert an element's text equal some text
  // @param elementId the identifier mapped to the selector in the page object
  // @param value the expected value
  // @example Then product list included '11th Product for Checkout' and same order of variants quantity should also equal to '4'

  Then('{order} {noQouteString} included {string} and same order of {noQouteString} should also equal to {string}', function(order, elementId, value, checkElementId, checkValue) {

    return this.page.checkAnotherText(elementId, order, value, checkElementId, checkValue, 'equal')

  })

  // @description check value from an element to a variable
  // @param elementId the identifier mapped to the selector in the page object
  // @param variable the name of the varible storing the value grepped from element
  // @example I should see email field equals to variable email

  Then("I should see {noQouteString} equals to variable {noQouteString}", function(elementId, variable) {

    return this.page.checkValueFromElementWithIndex(elementId, 0, variable, "equal")

  })

  // @description check value from an element to a variable
  // @param order the order of the target element (1st | 2nd | 3rd | 10th)
  // @param elementId the identifier mapped to the selector in the page object
  // @param variable the name of the varible storing the value grepped from element
  // @example I should see 1st email field equals to variable email

  Then("I should see {order} {noQouteString} equals to variable {noQouteString}", function(elementIdx, elementId, variable) {

    return this.page.checkValueFromElementWithIndex(elementId, elementIdx, variable, "equal")

  })

  // @description get attribute from an element and assert it equal to attributeName
  // @example product of products list should have attribute 'alt' equal to 'alt tag'

  Then("{noQouteString} should have attribute {string} equal to {string}", function(elementId, value, attributeName) {

    return this.page.checkAttributeOfElement(elementId, 0, value, attributeName, 'equal')

  })

  // @description get attribute from an element and assert it equal to attributeNamet
  // @example product of products list should have attribute 'alt' equal to 'alt tag'

  Then("{order} {noQouteString} should have attribute {string} equal to {string}", function(elementIdx, elementId, value, attributeName) {

    return this.page.checkAttributeOfElement(elementId, elementIdx, value, attributeName, 'equal')

  })

  // @description assert an element should be enabled
  // @param elementId the identifier mapped to the selector in the page object
  // @example variation should be enabled

  Then("{noQouteString} should be enabled", function(elementId) {

    return this.page.checkDisabled(elementId, 0, false)

  })

  // @description assert an element should be enabled
  // @param order the order of the target element (1st | 2nd | 3rd | 10th)
  // @param elementId the identifier mapped to the selector in the page object
  // @example 1st variation should be enabled

  Then("{order} {noQouteString} should be enabled", function(order, elementId) {

    return this.page.checkDisabled(elementId, order, false)

  })

  // @description assert an element should be disabled
  // @param elementId the identifier mapped to the selector in the page object
  // @example variation should be disabled

  Then("{noQouteString} should be disabled", function(elementId) {

    return this.page.checkDisabled(elementId, 0 , true)

  })

  // @description assert an element should be disabled
  // @param order the order of the target element (1st | 2nd | 3rd | 10th)
  // @param elementId the identifier mapped to the selector in the page object
  // @example 1st variation should be disabled
  Then("{order} {noQouteString} should be disabled", function(order, elementId) {

    return this.page.checkDisabled(elementId, order, true)

  })

  // @description assert an element should be checked
  // @param elementId the identifier mapped to the selector in the page object
  // @example variation should be checked

  Then("{noQouteString} should be checked", function(elementId) {

    return this.page.checkChecked(elementId, 0, true)

  })

  // @description assert an element should be checked
  // @param order the order of the target element (1st | 2nd | 3rd | 10th)
  // @param elementId the identifier mapped to the selector in the page object
  // @example 1st variation should be checked

  Then("{order} {noQouteString} should be checked", function(order, elementId) {

    return this.page.checkChecked(elementId, order, true)

  })

  // @description assert an element should not be checked
  // @param elementId the identifier mapped to the selector in the page object
  // @example variation should not be checked

  Then("{noQouteString} should not be checked", function(elementId) {

    return this.page.checkChecked(elementId, 0, false)

  })

  // @description assert an element should not be disabled
  // @param order the order of the target element (1st | 2nd | 3rd | 10th)
  // @param elementId the identifier mapped to the selector in the page object
  // @example 1st variation should not be checked

  Then("{order} {noQouteString} should not be checked", function(order, elementId) {

    return this.page.checkChecked(elementId, order, false)

  })

  // @description assert url contain some text got from the sample
  // @param sample the sample key to get the expected value
  // @example 'email' should be part of current URL

  Then('{string} should be part of current URL', function(value) {

    return this.page.checkUrlText(value, 'include')

  })

  // @description assert url contain some text got from the sample
  // @param sample the sample key to get the expected value
  // @example orderId should be part of current URL

  Then('{noQouteString} should be part of current URL', function(sample) {

    return this.page.checkUrlText(this.page.handleSample(sample), 'include')

  })

  // @description use control+v to paste copied text
  // @param elementId the identifier mapped to the selector in the page object
  // @example I paste copied text to url field

  When('I paste copied text to {noQouteString}', function(elementId) {

    return this.page.paste(elementId, 0)
  })

  // @description compare an image from a field with a local image specified by sample
  // @param sample a string or a key value to be transformed
  // @param elementId the identifier mapped to the selector in the page object
  // @example I should have image logo image for shop logo

  Then("I should have image {noQouteString} for {noQouteString}", function(sample, elementId) {

    return this.page.compareImage(elementId, 0, this.page.handleSample(sample))

  })

  // @description compare an image from a field with a local image specified by sample
  // @param sample a string or a key value to be transformed
  // @param elementId the identifier mapped to the selector in the page object
  // @example I should have image logo image for 2nd shop logo

  Then("I should have image {noQouteString} for {order} {noQouteString}", function(sample, elementIdx, elementId) {

    return this.page.compareImage(elementId, elementIdx, this.page.handleSample(sample))

  })

  // @description get attribute from an element and assert it equal to attributeName
  // @example product of products list should have attribute 'alt' equal to 'alt tag'

  Then("{noQouteString} should not have attribute {string}", function(elementId, value) {

    return this.page.checkAttributeOfElement(elementId, 0, value, 'null', 'equal')

  })

  // @description get attribute from an element and assert it equal to attributeName
  // @example product of products list should have attribute 'alt' equal to 'alt tag'

  Then("{order} {noQouteString} should not have attribute {string}", function(elementIdx, elementId, value) {

    return this.page.checkAttributeOfElement(elementId, elementIdx, value, 'null', 'equal')

  })

  // @description get tag name from an element and assert it equal to tagName
  // @example the tag neame of product of products list is 'div'

  Then("the tag name of {noQouteString} is {string}", function(elementId, tagName) {

    return this.page.checkTagNameOfElement(elementId, 0, tagName, 'equal')

  })

  // @description get tag name from an element and assert it equal to tagName
  // @example the tag neame of product of products list is 'div'

  Then("the tag name of {order} {noQouteString} is {string}", function(elementIdx, elementId, tagName) {

    return this.page.checkTagNameOfElement(elementId, elementIdx, tagName, 'equal')

  })
  // @description assert there is no matched alert
  // @example alert should not be present

  Then('alert should not be present', function() {

    return this.page.checkAlert(10000, false)

  })

  // @description assert there is matched alert
  // @example alert should be present

  Then('alert should be present', function() {

    return this.page.checkAlert(10000, true)

  })

  // @description modify attribute value of an element and click it
  // @example modify attribute value and click login button

  Then('I modify attribute value and click {noQouteString}', function(elementId) {

    return this.page.modifyAttributeValueAndClick(elementId, 0)

  })

  // @description just a empty step to define the start of roll back step
  // @example ---ROLL BACK---

  Then('---ROLL BACK---', function() {})

  // @description just a empty step to remind people to roll back the steps while the feature which didn't have roll back steps was failed on halfway
  // @example ---I NEED TO ROLLBACK user credit---

  Then('---I NEED TO ROLLBACK {noQouteString}---', function(comment) {})

});