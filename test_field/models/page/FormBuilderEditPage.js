let Page = require('../../framework/models/Page.js')

class FormBuilderEditPage extends Page {

  get elements() {

    return {
      'id': this.by.css('#root'),
      'breadcrumb': this.by.css('#root > div:nth-child(3) > div'),
      'language dropdown': this.by.css('#root > div:nth-child(1) > div:nth-child(2) > div:nth-child(1)'),
      'language dropdown option': this.by.css('#root > div:nth-child(1) > div:nth-child(2) > div:nth-child(1) > div > div'),
      'return form manager panel button': this.by.css('#root > div > div'),
      'button': this.by.css('button'),
      'short text drag area': this.by.css('#root > div > div:nth-child(2) > div > div:nth-child(2)'),
      'long text drag area': this.by.css('#root > div > div:nth-child(2) > div > div:nth-child(3)'),
      'single choice drag area': this.by.css('#root > div > div:nth-child(2) > div > div:nth-child(4)'),
      'multiple choice drag area': this.by.css('#root > div > div:nth-child(2) > div > div:nth-child(5)'),
      'dropdown choice drag area': this.by.css('#root > div > div:nth-child(2) > div > div:nth-child(6)'),
      'short text': this.by.css('div:nth-child(3)>div>div>input[type="text"]'),
      'long text': this.by.css('div:nth-child(3)>div>div>textarea'),
      'single choice': this.by.css('div:nth-child(3)>div>div>input[type="radio"]'),
      'multiple choice': this.by.css('div:nth-child(3)>div>div>input[type="checkbox"]'),
      'dropdown choice': this.by.css('div:nth-child(3)>div>div>select'),
      'drag destination': this.by.css('#root > div > div:nth-child(3) > div:nth-child(3)'),
      'side menu': this.by.css('#root > div:nth-child(2)'),
      'side menu button': this.by.css('#root > div:nth-child(2) button'),
      'side menu field': this.by.css('#root > div:nth-child(2) input'),
      'side menu textarea': this.by.css('textarea'),
      'side menu add button': this.by.css('#root > div > div > div > form > div > div > svg'),
      'side menu collapse button': this.by.css('#root > div:nth-child(2) > div:nth-child(3) > div:nth-child(1)'),
      'side menu settings button': this.by.css('#root > div:nth-child(2) > div > div:nth-child(2)'),
      'side menu page settings button': this.by.css('.sc-dVhcbM div'),
      'side menu required toggle': this.by.css('#root > div > div > div > form > div > div > div > div'),
      'side menu member access toggle': this.by.css('#root > div > div > div > div:nth-child(4) > div > div:nth-child(2)'),
      'drag icon': this.by.css('#root > div > div > div > div > svg:nth-child(1)'),
      'copy icon': this.by.css('#root > div > div > div > div > svg:nth-child(2)'),
      'delete icon': this.by.css('#root > div > div > div > div > svg:nth-child(3)'),
      'language switch tab': this.by.css('#root > div:nth-child(3) > div:nth-child(2) > div'),
      'title': this.by.css('#root > div > div > div:nth-child(1) > span'),
      'description': this.by.css('#root > div > div > div:nth-child(2) > span'),
      'row of': this.by.xpath('//*[@id="root"]/div[3]/div[3]/div[5]')
    }

  }


}

module.exports = FormBuilderEditPage
