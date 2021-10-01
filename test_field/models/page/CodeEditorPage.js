let Page = require('../../framework/models/Page.js')

class CodeEditorPage extends Page {

  get elements() {

    return {
      'id': this.by.css('div.page-heading.animated.fadeInDownBig'),
      'menu item': this.by.css('li[ng-click="selectFile(file)"]'),
      'save button': this.by.css('button[ng-click="saveFile()"]'),
      'attribute': this.by.css('span.cm-attribute'),
      'string': this.by.css('span.cm-string'),
  }
    }

  get url() {
    return `${this.props.baseURL}/admin/${this.props.account.handle}/themes/layouts?locale=en`
  }
}

module.exports = CodeEditorPage
