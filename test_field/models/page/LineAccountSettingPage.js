let Page = require('../../framework/models/Page.js')

class LineAccountSettingPage extends Page {

  get elements() {
    return {
      'id': this.by.css('div[id="container"]'),
      'auto reply disable checkbox': this.by.css('input[name="autoResponse"][value="0"]'),
      'webhook enable checkbox': this.by.css('input[name="enabledWebhook"]'),
      'delete button': this.by.css('button[type="button"]'),
      'accept checkbox': this.by.css('label[for="inputAccept"]'),
      'accept delete button': this.by.css('button[type="button"]'),
      'popup delete button': this.by.css('.modal .btn-danger'),
      'delete account popover': this.by.css('div.modal-content.h-100'),
      'delete account button': this.by.css('button[type="button"][class="btn btn-lg rounded-0 flex-1 btn-danger"]'),
    }
  }
}

module.exports = LineAccountSettingPage