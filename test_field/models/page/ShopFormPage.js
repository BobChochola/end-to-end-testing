let Page = require('../../framework/models/Page.js')

class ShopFormPage extends Page {

  get elements() {

    return {
      'id': this.by.css('[name="formBuilderForm"]'),
      'short text field': this.by.css('form input[type="text"]'),
      'long text field': this.by.css('form textarea'),
      'single choice': this.by.css('form input[type="radio"]'),
      'multiple choice': this.by.css('form input[type="checkbox"]'),
      'dropdown choice': this.by.css('form select'),
      'submit button': this.by.css('.btn.btn-success'),
      'submit successfully': this.by.css('.FormBuilder-submit-success'),
      'error msg': this.by.css('.alert'),
    }

  }

}

module.exports = ShopFormPage
