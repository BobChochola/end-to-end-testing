const { until, By, Key, logging } = require('selenium-webdriver')
const Image = require('./Image.js')
const { assert } = require('chai')
const Promise = require('bluebird')
const request = require('request-promise');

class View {
  constructor(world) {
    this.shouldLog = true
    this.world = world
    this.driver = world.driver
    this.sleepBeforeRun = 1000
    this.props = world.pageProps
  }

  /* override */
  get elements() { return { } }

  get samples() { return { } }

  get isAngular() { return true }

  /*** @public ***/
  handleSample(sample) {
    const context = this.world

    const value = this.getVariable(sample)

    if (value) { return value }

    return this.getSample(sample)
  }

  exist() {
    return this.locate('id')
  }

  refresh() {
    return this.driver.navigate().refresh()
  }

  log(obj) {
    if (!this.shouldLog) return
    return this.world.attach(JSON.stringify(obj));
  }

  async click(elementId, idx = 0, operation = 'front') {
    this.driver.sleep(this.sleepBeforeRun)
    const selector = this.getSelector(elementId)
    let elementIdx = 0

    try{

      if(operation == 'last'){
        const elements = await this.findElements(selector)
        elementIdx = elements.length - 1
        this.log({elementCount: elements.length})
        idx = elementIdx - idx
      }

      const element = await this.findElement(elementId, idx)
      this.log({selectorValue: selector.value})
      await element.click()

    }catch(e) {

      try{
        this.log(JSON.stringify(e))
        if(e.name.match(/WebDriverError/)) {

          this.driver.sleep(this.sleepBeforeRun * 5)
          const tmpElement = await this.findElement(elementId, idx)
          return await this.driver.executeScript('arguments[0].click()', tmpElement)
        }else if(e.name.match(/StaleElementReferenceError/)){

          this.driver.sleep(this.sleepBeforeRun * 5)
          const tmpElement = await this.findElement(elementId, idx)
          return await tmpElement.click()
        }
      }catch(e) {
        throw(e)
      }
    }
  }

  async clickOnText(elementId, idx = 0, text) {
    this.driver.sleep(this.sleepBeforeRun)
    const selector = this.getSelector(elementId)
    const idxs = []
    let retry = 0
    let elementTexts = []

    try{
      const elements = await this.findElements(selector, async (elements) => {
        const texts = await Promise.map(elements, async (element, elementIdx) => {
          const elementText = await this.getElementText(element, elementId)
          const notFound = elementText.indexOf(text).toString() === '-1'
          elementTexts.push(elementText.replace(/.*>.*?<\/.*/gi,''))
          if (elementTexts.length > elements.length) {elementTexts =[]}
          if (!notFound) { idxs.push(elementIdx) }
        })
        retry += 1

        if (typeof idxs[idx] === 'undefined') { return }

        await this.click(selector, idxs[idx])
        return true
      })
      this.log({
        retryCount: retry,
        elementTexts: elementTexts,
        text:text
      })
    }catch(e) {
      this.log({
        retryCount: retry,
        elementTexts
      })
      throw(e)
    }

  }

  async clickOnAnotherElementText(clickElementId, idx = 0, checkElementId, text) {
    this.driver.sleep(this.sleepBeforeRun)
    const checkSelector = this.getSelector(checkElementId)
    const idxs = []
    let retry = 0
    let element
    let elementTexts = []

    try{
      const elements = await this.findElements(checkSelector)
      const texts = await Promise.map(elements, async (element, elementIdx) => {
        const elementText = await this.getElementText(element, checkElementId)

        const notFound = elementText.indexOf(text).toString() === '-1'

        elementTexts.push(elementText)
        if (elementTexts.length > elements.length) {elementTexts =[]}
        if (!notFound) { idxs.push(elementIdx) }
      })
      retry += 1

      if (typeof idxs[idx] === 'undefined') { return }

      await this.click(clickElementId, idxs[idx])
      return true
    } catch(e) {
      this.log({
        retryCount: retry,
        elementTexts
      })
       throw(e)
      }
  }

  async findFrameExistsAndClick(frameID, elementId) {
    this.driver.sleep(this.sleepBeforeRun * 3)
    const frameIDSelector = this.getSelector(frameID)

    try {
      const iframeElement = await this.driver.wait(() => this.driver.findElements(frameIDSelector), 60000)

      this.log({ frameLength: iframeElement.length })
      if (iframeElement.length) {
        this.log({
          frameExist: frameID,
          selectorFrameValue: frameIDSelector.value,
        })
        await this.changeFrame(frameID)
        await this.checkAndClick(elementId)
        await this.changeFrame('default')
      }
      else{this.log({ frameNotFound: frameID })}
      return iframeElement

    } catch (e) {
      this.log({
        elementId: elementId,
        errorInfo: e,
      })
    }
  }

  async checkElementAndClick(elementId, idx = 0, text) {
    this.driver.sleep(this.sleepBeforeRun)
    const selector = this.getSelector(elementId)
    try {
      const elements = await this.driver.wait(() => this.driver.findElements(selector))
      if (elements[0]) {
        await this.clickOnText(elementId,idx,text)
      }
      return elements
    } catch (e) {
      this.log({
        errorInfo: e.name,
      })
    }
  }

  async hover(elementId, idx = 0) {
    this.driver.sleep(this.sleepBeforeRun)

    const element = await this.findElement(elementId, idx)

    const htmlVersion = await this.driver.findElements(By.css('meta[charset="UTF-8"]'))

    const script = "const element = arguments[0]; const mouseEventObj = document.createEvent('MouseEvents'); mouseEventObj.initEvent( 'mouseover', true, true ); element.dispatchEvent(mouseEventObj);";

    if(htmlVersion.length) { return this.driver.executeScript(script, element)}

    return this.driver.actions().mouseMove(element).perform()
  }

  async fill(elementId, idx = 0, value, clearOption = true, type = 'text') {
    this.driver.sleep(this.sleepBeforeRun)

    const element = await this.findElement(elementId, idx)

    if (clearOption) { 
      if(type == 'text'){
        await element.sendKeys(Key.chord(Key.CONTROL, 'a', Key.DELETE))
      }
      else{
        await element.clear() 
      }
    }

    this.log( {value: value.replace(/.*>.*?<\/.*/gi,'')} )

    return await element.sendKeys(value)
  }

  async input(elementId, idx = 0, value, clearOption = true) {
    this.driver.sleep(this.sleepBeforeRun)

    await this.fill(elementId, idx, value, clearOption)

    this.driver.sleep(this.sleepBeforeRun)

    return this.fill(elementId, idx, Key.RETURN, false)

  }

  async paste(elementId, idx = 0, clearOption = true) {
    this.driver.sleep(this.sleepBeforeRun)

    const element = await this.findElement(elementId, idx)

    if (clearOption) { 
      await element.sendKeys(Key.CONTROL + "a")
      await element.sendKeys(Key.DELETE)
    }

    return element.sendKeys(Key.CONTROL + "v")
  }

  async scrollTo(elementId, idx = 0) {
    this.driver.sleep(this.sleepBeforeRun)

    if(!elementId) {
      return await this.driver.executeScript('window.scrollTo(0, document.body.scrollHeight)')
    }
    const condition = await this.findElement(elementId, idx)

    return await this.driver.executeScript('arguments[0].scrollIntoView()', condition)
  }

  async snapShot() {
    const buffer = await this.driver.takeScreenshot()

    return this.world.attach(buffer, 'image/png')
  }

  async logCurrentURL() {
    const url = await this.driver.getCurrentUrl()

    return this.world.attach(url)
  }

  async logErrorConsole() {
    const log = await this.driver.manage().logs().get(logging.Type.BROWSER)
    return this.log(log)
  }

  async selectDropDownMenu(elementId, elementIdx = 0, optionElementId, optionElementIdx = 0) {
    this.driver.sleep(this.sleepBeforeRun)

    await this.click(elementId, elementIdx)

    this.driver.sleep(this.sleepBeforeRun * 3)
    return this.click(optionElementId, optionElementIdx)
  }

  async selectDropDownString(elementId, elementIdx = 0, optionElementId, optionElementIdx = 0, string, operation = 'equal') {
    this.driver.sleep(this.sleepBeforeRun)

    await this.click(elementId, elementIdx)

    this.driver.sleep(this.sleepBeforeRun * 3)
    return this.clickOnText(optionElementId, optionElementIdx, string, operation)
  }

  async dragTo(sourceElementId, sourceIdx = 0, targetElementId, targetIdx = 0) {
    this.driver.sleep(this.sleepBeforeRun)

    try{
    const dragAndDrop = await require('html-dnd').code

    const sourceElement = await this.findElement(sourceElementId, sourceIdx)
    const targetElement = await this.findElement(targetElementId, targetIdx)
      this.log({
        sourceIdx: sourceIdx,
        targetIdx: targetIdx
      })

    const htmlVersion = await this.driver.findElements(By.css('meta[charset="UTF-8"]'))

    if(htmlVersion.length) { return this.driver.executeScript(dragAndDrop, sourceElement, targetElement)}

    return this.driver.actions().dragAndDrop(sourceElement, targetElement).perform()
    }catch(e){
      this.log({
        sourceIdx: sourceIdx,
        targetIdx: targetIdx
      })
      throw(e)
    }
  }


  async changeTab(idx, second = 1, operation = 'default') {
    this.driver.sleep(this.sleepBeforeRun * second)

    let allHandles = await this.driver.getAllWindowHandles()
    this.log({
      allHandles: allHandles.length,
      HandlesIdx: idx,
    })
    if (allHandles.length < idx + 1) {
      if(operation == 'default'){
        this.driver.executeScript("window.open('new_window')")
      }
      else{
        return this.driver.sleep(1 * 1000)
      }
    }
    allHandles = await this.driver.getAllWindowHandles()
    await this.driver.switchTo().window(allHandles[idx])

    return this.driver.sleep(1 * 1000)
  }

  closeTab() {
    return this.driver.close()
  }

  changeFrame(elementId) {
    this.driver.sleep(this.sleepBeforeRun)

    if (elementId !== 'default') {
      return this.driver.switchTo().frame(this.findElement(elementId))
    }

    return this.driver.switchTo().defaultContent()
  }

  async fillFileSelector(elementId, idx = 0, value, clearOption = true, type = 'file') {
    this.driver.sleep(this.sleepBeforeRun)

    const element = await this.findElement(elementId, idx)

    const script = 'arguments[0].className = arguments[0].className.replace("ng-hide", "");arguments[0].className = arguments[0].className.replace("hidden", ""); arguments[0].style.height = "50px"; arguments[0].style.opacity = 100'

    await this.driver.executeScript(script, element)

    return this.fill(elementId, idx, value, clearOption, type)
  }

  wait(second) {
    return this.driver.sleep(second * 1000)
  }

  async modifyAttributeValueAndClick(elementId, idx = 0) {
    this.driver.sleep(this.sleepBeforeRun)

    const element = await this.findElement(elementId, idx)

    const script = 'arguments[0].onclick = login();'

    await this.driver.executeScript(script, element)

    return await this.click(element, idx)
  }

  async markText(elementId, idx = 0) {
    this.driver.sleep(this.sleepBeforeRun)

    const element = await this.findElement(elementId, idx)

    return this.driver.actions()
      .mouseDown(element,{x: 1, y: 0})
      .mouseMove(element,{x: 100, y: 0})
      .mouseUp()
      .perform()
  }

  async storeValueFromElementWithIndex(key, elementId, idx = 0) {
    this.driver.sleep(this.sleepBeforeRun)

    const element = await this.findElement(elementId, idx)

    const text = await this.getElementText(element, elementId)
    await this.log(text)

    return this.storeVariable(key, text)
  }

  async markOnAnotherElementText(variable, markElementId, idx = 0, checkElementId, text) {
    this.driver.sleep(this.sleepBeforeRun)
    const checkSelector = this.getSelector(checkElementId)
    const idxs = []
    let retry = 0
    let element
    let elementTexts = []

    try{
      const elements = await this.findElements(checkSelector)
      const texts = await Promise.map(elements, async (element, elementIdx) => {
        const elementText = await this.getElementText(element, checkElementId)

        const notFound = elementText.indexOf(text).toString() === '-1'

        elementTexts.push(elementText)
        if (elementTexts.length > elements.length) {elementTexts =[]}
        if (!notFound) { idxs.push(elementIdx) }
      })
      retry += 1

      if (typeof idxs[idx] === 'undefined') { return }

      await this.storeValueFromElementWithIndex(variable, markElementId, idxs[idx])
      this.log({
        retryCount: retry,
        elementTexts
      })
      return true
    } catch(e) {
      this.log({
        retryCount: retry,
        elementTexts
      })
       throw(e)
      }
  }

  async dragOnAnotherElementText(sourceElementId, sourceIdx = 0, targetElementId, targetIdx = 0, checkElementId, text) {
    this.driver.sleep(this.sleepBeforeRun)
    const selector = this.getSelector(checkElementId)
    const idxs = []
    let retry = 0
    let elementTexts = []

    try{
      this.log({selector:selector})
      const elements = await this.findElements(selector)
        const texts = await Promise.map(elements, async (element, elementIdx) => {
          const elementText = await this.getElementText(element, checkElementId)

          const notFound = elementText.indexOf(text).toString() === '-1'

          elementTexts.push(elementText)
          if (elementTexts.length > elements.length) {elementTexts =[]}
          if (!notFound) { idxs.push(elementIdx) }
        })
        retry += 1

        if (typeof idxs[sourceIdx] === 'undefined') { return }
        this.log({
          sourceElementId:sourceElementId,
          sourceIdx:idxs[0],
          targetElementId:targetElementId,
          targetIdx:targetIdx,
          idxs:idxs
        })
        await this.dragTo(sourceElementId, idxs[sourceIdx], targetElementId, targetIdx)
        this.log({
          retryCount: retry,
        })
        return true
    } catch(e) {
        this.log({
          retryCount: retry,
          sourceElementId:sourceElementId,
          sourceIdx:sourceIdx,
          targetElementId:targetElementId,
          targetIdx:targetIdx,
          idxs:idxs
        })
       throw(e)
      }
  }

  async fillOnAnotherElementText(variable, fillElementId, idx = 0, checkElementId, text) {
    this.driver.sleep(this.sleepBeforeRun)
    const checkSelector = this.getSelector(checkElementId)
    const idxs = []
    let retry = 0
    let element
    let elementTexts = []

    try{
      const elements = await this.findElements(checkSelector)
      const texts = await Promise.map(elements, async (element, elementIdx) => {
        const elementText = await this.getElementText(element, checkElementId)

        const notFound = elementText.indexOf(text).toString() === '-1'

        elementTexts.push(elementText)
        if (elementTexts.length > elements.length) {elementTexts =[]}
        if (!notFound) { idxs.push(elementIdx) }
      })
      retry += 1

      if (typeof idxs[idx] === 'undefined') { return }

      await this.fill(fillElementId, idxs[idx], variable)
      this.log({
        retryCount: retry,
      })
      return true
    } catch(e) {
      this.log({
        retryCount: retry,
      })
       throw(e)
      }
  }

  async checkValueFromElementWithIndex(elementId, idx = 0, key, operation = 'equal') {
    this.driver.sleep(this.sleepBeforeRun)

    const element = await this.findElement(elementId, idx)

    const text = await this.getElementText(element, elementId)

    const targetText = this.getVariable(key)

    assert[operation](text ,targetText)
  }

  async getUrlKey(variable, idCodeLength){
    this.driver.sleep(this.sleepBeforeRun)

　　 var url = await this.driver.getCurrentUrl()

    const regex = new RegExp(`\\/(\\w{${idCodeLength}})\\/`)

    const idCode = url.match(regex)[1]

    this.log({idCode})

    return this.storeVariable(variable, idCode)
  }

  async openNewTab(url) {
    this.driver.sleep(this.sleepBeforeRun)
    await this.driver.executeScript("window.open('new_window')")
    const allHandles = await this.driver.getAllWindowHandles()
    this.log({
      link: url,
      allHandles: allHandles.length,
    })
    await this.driver.switchTo().window(allHandles[allHandles.length - 1])
    await this.driver.get(url)
    this.driver.sleep(this.sleepBeforeRun * 3)
    this.logCurrentURL()
  }

  async checkAndClickAll(elementId) {
    this.driver.sleep(this.sleepBeforeRun)
    const selector = this.getSelector(elementId)

    try {
      const elements = await this.driver.wait(() => this.driver.findElements(selector), 60000)

      if (elements.length) {
        for(let idx = elements.length-1; idx >= 0; idx--){
          await this.click(elementId, idx)
        } 
      }
      else{this.log({ selectorValueNotFound: elementId })}
    } catch (e) {
      this.log({
        errorInfo: JSON.stringify(e),
      })
    }
  }

  async checkAndClick(elementId, idx = 0) {
    this.driver.sleep(this.sleepBeforeRun)
    const selector = this.getSelector(elementId)

    try {
      const elements = await this.driver.wait(() => this.driver.findElements(selector), 60000)

      if (elements.length) {
        await this.click(elementId, idx)
        this.log({ selectorValueFound: elements.length })
      }
      else{this.log({ selectorValueNotFound: elementId })}
    } catch (e) {
      this.log({
        errorInfo: JSON.stringify(e),
      })
    }
  }

  async checkAndClickAnotherElement(checkElementId,clickElementId, idx = 0) {
    this.driver.sleep(this.sleepBeforeRun)
    const selector = this.getSelector(checkElementId)

    try {
      const elements = await this.driver.findElements(selector)

      if (elements.length) {
        await this.click(clickElementId, idx)
      }
      else{this.log({ selectorValueNotFound: elementId })}
    } catch (e) {
      this.log({
        errorInfo: e.name,
      })
    }
  }

  async checkAndFill(elementId, idx = 0, value) {
    this.driver.sleep(this.sleepBeforeRun)
    const selector = this.getSelector(elementId)

    try {
      const elements = await this.driver.wait(() => this.driver.findElements(selector), 60000)
      if (elements.length) {
        this.log({ selectorValue: elementId })
        this.fill(elementId, idx, value)
      }
      else{this.log({ selectorValueNotFound: elementId })}
    } catch (e) {
      this.log({
        errorInfo: e.name,
      })
    }
  }

  async locate(elementId) {
    this.driver.sleep(this.sleepBeforeRun)
    const selector = this.getSelector(elementId)

    let count = 0
    let elementCount = 0
    let retry = 0

    const logBody = () => {
      return {
        retry,
        matchedElementCount: elementCount,
        displayedElementCount: count,
      }
    }

    try {

      const condition = async (selector) => {
        try {
          const elements = await this.findElements(selector)
          let isDisplayeds = await Promise.all(elements.map(element => element.isDisplayed()))
          isDisplayeds = isDisplayeds.filter(isDisplayed => isDisplayed === true)

          count = isDisplayeds.length
          elementCount = elements.length

          if (isDisplayeds.length === 0) {
            retry += 1
            return false
          }
          return elements.length > 0
        }catch(e) {
          return false
        }

      }
      await this.driver.wait( () => condition(selector), 60000)
      this.log(logBody())

    }catch(e) {
      this.log(logBody())
      throw e
    }

  }

  async checkTextInExcelFromLink(elementId, idx = 0, text, operation = 'equal') {
    this.driver.sleep(this.sleepBeforeRun)

    const element = await this.findElement(elementId, idx)
    const url = await element.getAttribute("href")

    this.log(url)
    try {
      const response = await request(url)
      this.log(response.replace(/[^A-Za-z0-9 ]/g,''))
      assert[operation](response.replace(/[^A-Za-z0-9 ]/g,''), text)
    } catch (e) {
      throw e
    }

  }

  async checkTextInElements(elementId, text, operation = 'equal') {
    this.driver.sleep(this.sleepBeforeRun)

    const selector = this.getSelector(elementId)
    let elementTexts
    let retry = 0
    try {
      const elements = await this.findElements(selector, async (elements) => {
        const texts = await Promise.all(elements.map(element => this.getElementText(element, elementId)))

        texts.forEach( (elementText) => {
          elementTexts = elementText.replace(/\n/g, '')
          retry += 1
          assert[operation](elementTexts, text)
        })

        return true
      })
    }catch(e) {
      this.log({
        elementText: elementTexts,
        expectText: text,
        retryCount: retry
      })
      throw e
    }
  }

  async checkText(elementId, idx = 0, text, operation = 'equal') {
    this.driver.sleep(this.sleepBeforeRun)

    const selector = this.getSelector(elementId)
    let elementTexts
    try {
      const elements = await this.findElements(selector, async (elements) => {
        let elementText = await this.getElementText(elements[idx], elementId)
        elementTexts = elementText.replace(/\n/g, '')
        this.log({
          elementText: elementTexts.replace(/.*>.*?<\/.*/gi,''),
          expectText: text.replace(/.*>.*?<\/.*/gi,'')
        })
        assert[operation](elementTexts, text)
        return true
      })
    }catch(e) {
      if(elementTexts){
        this.log({
          elementText: elementTexts.replace(/.*>.*?<\/.*/gi,''),
          expectText: text.replace(/.*>.*?<\/.*/gi,'')
        })        
      }
      throw e
    }
  }

  async checkPdfText(text, operation = 'equal') {
    this.driver.sleep(this.sleepBeforeRun)
    const crawler = require('crawler-request');
    const url = await this.driver.getCurrentUrl()

    try{
      let contentText = await crawler(url)
      contentText = contentText.text.replace(/\n/g, '')

      this.log({pdfText: contentText})
      assert[operation](contentText, text)
    }catch(e){
      throw e
    }

  }

  async checkAnotherText(elementId, idx = 0, text, checkElementId, checkText, operation = 'equal') {
    this.driver.sleep(this.sleepBeforeRun)
    const idxs = []
    let retry = 0
    let element

    try{
      const elements = await this.findElements(elementId)
      const texts = await Promise.map(elements, async (element, elementIdx) => {

        const elementText = await this.getElementText(element, elementId)

        const notFound = elementText.indexOf(text).toString() === '-1'

        if (!notFound) { idxs.push(elementIdx) }

      })
      this.log({ retryCount: retry })
      retry = 1

      if ( typeof idxs[idx] === 'undefined') { return }

      await this.checkText(checkElementId, idxs[idx], checkText, operation)
      return true
    }catch(e) {
    throw(e)
    }
  }

  async checkUrlText(text, operation = 'equal') {
    this.driver.sleep(this.sleepBeforeRun)

    try {
      const currentUrl = await this.driver.getCurrentUrl()
      this.log({
        UrlText: currentUrl,
        expectText: text
      })
      assert[operation](currentUrl, text)
    }catch(e) {
      throw e
    }
  }

  async checkDisabled(elementId, idx = 0, operation = 'true') {
    this.driver.sleep(this.sleepBeforeRun)

    const selector = this.getSelector(elementId)
    let elementCount = 0

    try {
      const elements = await this.findElements(selector)

      elementCount = elements.length
      const element = elements[idx]
      const disabled = await element.getAttribute('disabled')
      const isDisabled = await element.getAttribute('isDisabled')
      const isdisabled = await element.getAttribute('is-disabled')
      const readOnly = await element.getAttribute('readonly')

      this.log({
         selectorValue: selector.value,
         matchedElementCount: elementCount,
       })

      if (isDisabled!=null){ return assert.isNotNull(isDisabled) }

      if (isdisabled!=null){ return assert.isNotNull(isdisabled) }

      if (readOnly!=null){ return assert.isNotNull(readOnly) }

      return operation ? assert.isNotNull(disabled) : assert.notExists(disabled)
    }catch(e){
      throw new Error(e)
    }
  }


  async checkChecked(elementId, idx = 0, operation = 'true') {
    this.driver.sleep(this.sleepBeforeRun)

    const selector = this.getSelector(elementId)
    let elementCount = 0

    try {
      const elements = await this.findElements(selector)

      elementCount = elements.length
      const element = elements[idx]
      const checkbox = await element.getAttribute('checked')
      const toggle = await element.getAttribute('aria-checked')

      this.log({
        selectorValue: selector.value,
        matchedElementCount: elementCount,
      })

      if (toggle!=null){ return assert.include(toggle, operation)}

      return operation ? assert.isNotNull(checkbox) : assert.notExists(checkbox)
    }catch(e){
      throw e
    }
  }

  async expectCount(elementId, count) {
    this.driver.sleep(this.sleepBeforeRun)

    const selector = this.getSelector(elementId)
    let elementCount = 0
    let elements
    const condition = async (selector) => {
      try {
        elements = await this.findElements(selector)

        elementCount = elements.length
        this.log({
          elementCount: elements.length,
          expectCount: count,
        })
        assert.lengthOf(elements, parseInt(count))
        return true
      }catch(e) {

        if (elements == null && !count) { return true }
        elements = null
        return false
      }
    }
    return this.driver.wait( () => condition(selector), 60000, 'assertion (expectCount) fail')
  }

  async acceptAlert(timeout = 5000) {
    this.driver.sleep(this.sleepBeforeRun)
    const condition = await until.alertIsPresent()

    try{
      const wait = await this.driver.wait(condition, timeout)

      return await this.driver.switchTo().alert().accept()
    }catch(e) {
      this.log(e)
      return true
    }
  }

  async checkAlert(timeout = 60000, operation = 'true') {
    this.driver.sleep(this.sleepBeforeRun)
    const condition = await until.alertIsPresent()

    try{
      const wait = await this.driver.wait(condition, timeout, 'NoSuchAlertError')
      if(!operation){ return new Error(e) }

      return await this.driver.switchTo().alert().accept()
    }catch(e) {
      this.log(e.message.replace(/.*>.*?<\/.*/gi,''))
      if(!operation && e.message.includes('NoSuchAlertError')){ return true }

      throw e
    }
  }

  async waitForAlert(text, timeout = 5000) {
    const condition = until.alertIsPresent();

    await this.driver.wait(condition, timeout)

    const alertBox = driver.switchTo().alert()
    alertText = alertBox.getText();
  }

  async checkAttributeOfElement(elementId, idx = 0, value, attributeName, operation = 'equal') {
    const element = await this.findElement(elementId, idx)
    try {
      const attribute = await element.getAttribute(value)
      this.log({
        attribute: attribute,
      })
      if(attributeName =='null'){
        return assert.isNull(attribute)
      }
      return assert[operation](attribute, attributeName)
    }catch(e) {
      throw e
    }
  }

  async checkTagNameOfElement(elementId, idx = 0, tagName, operation = 'equal') {
    const element = await this.findElement(elementId, idx)
    try {
      const tag = await element.getTagName()
      this.log({
        tagName: tag,
      })
      return assert[operation](tag, tagName) 
    }catch(e) {
      throw e
    }
  }

  /*** @private ***/
  async _findElements(selector, extraCondition) {
    const condition = async (selector) => {
      try{
        const elements = await this.driver.findElements(selector)
        let result = true

        if (extraCondition) {
          const extraConditionResult = await extraCondition(elements)

          if (!extraConditionResult) { result = false }
        }

        if (!elements.length) {
          return false
        }

        if (!result) {
          this.driver.sleep(1000)
          return false
        }


        return elements
      }catch(e){
        this.driver.sleep(1000)
        return false
      }
    }
      return this.driver.wait( () => condition(selector), 50000)

  }

  async findElement(elementId, idx = 0, condition) {
    const selector = this.getSelector(elementId)

    let elements
    try {
      elements = await this._findElements(selector, async (elements) => {
        return condition ? condition(elements) : elements
      })
    }catch(e) {
      throw e
    }
    return elements[idx]

  }

  async findElements(elementId, condition) {
    const selector = this.getSelector(elementId)

    let elements
    try {
      elements = await this._findElements(selector, async (elements) => {
        return condition ? condition(elements) : elements
      })

    }catch(e) {
      throw e
    }

    return elements
  }

  async getElementText(element, elementId) {
    const tag = await element.getTagName()

    let text

    if (tag == 'input' || tag == 'textarea') {
      text = text || await element.getAttribute('value')
    }

    if (tag == 'select') {
      let selector = this.getSelector(elementId)
      selector.value = `${selector.value} option[selected="selected"]`

      const optionElement = await this.driver.findElement(selector)
      text = text || await optionElement.getText()
    }

    text = text || await element.getText()
    return text
  }

  /* image related */
  async compareImage(elementId, idx = 0, value) {
    const imageSrc = await this.getImageSrcFromElement(elementId, idx)
    const buffer = await Image.downloadImage(imageSrc)

    const targetBuffer = await Image.readImage(value)

    this.world.attach(buffer, 'image/png')

    return Image.assertImage(buffer, targetBuffer)
  }

  async getImageSrcFromElement(elementId, idx = 0) {
    const element = await this.findElement(elementId, idx)

    const tag = await element.getTagName()

    let style = await element.getAttribute('style')

    if (tag != 'img') {
      if(style.indexOf('background-image')!=-1){return style.split('(')[1].replace(/[()";\']/g,'')}
      return null
    }

    return element.getAttribute('src')
  }


  /** getter **/
  get by() { return by }

  getSelector(elementId) {
    return this.elements[elementId] || elementId
  }

  /** sample **/
  getSample(key) {
    const context = this.world

    context.sample = context.sample || {}

    const value = context.sample[key] || this.samples[key]

    if (value) { context.sample[key] = value }

    return value
  }

  /** variable **/
  storeVariable(key, value) {
    if (!this.props.variables) { this.props.variables = {} }

    this.props.variables[key] = value
  }

  getVariable(key, value) {
    if (!this.props.variables) { this.props.variables = {} }

    return this.props.variables[key]
  }
}

module.exports = View
