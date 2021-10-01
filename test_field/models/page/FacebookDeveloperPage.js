let Page = require('../../framework/models/Page.js')

class FacebookDeveloperPage extends Page {

  get elements() {

    return {
      'id': this.by.css('#developer_app_content_panel'),
      'secret field': this.by.css('div[class="_5e_6 _5rvc _2caq"]'),
      'app secret button': this.by.css('button[class="_4jy0 _517i _517h _51sy _42ft"]'),
      'popover': this.by.css('div[class="_4t2a"]'),
      'password field': this.by.xpath('//*[@id="ajax_password"]'),
      'save changes button': this.by.css('button[class="_42ft _4jy0 _4jy4 _4jy1 selected _51sy"]'),
      'submit button': this.by.css('button[class="_42ft _4jy0 layerConfirm uiOverlayButton _4jy3 _4jy1 selected _51sy"]'),
      'user setting image': this.by.css('[role="button"] img'),
      'user setting option': this.by.css('.uiContextualLayer ul li a'),
    }

  }

  get samples() {

    return {
      'fb password': 'testuser038',
    }

  }

  get url() {

    return `https://developers.facebook.com/apps/${this.getVariable('fb ID')}/settings/basic/`

  }


}

module.exports = FacebookDeveloperPage