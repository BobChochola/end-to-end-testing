let Page = require('../../framework/models/Page.js')

class ShopConfirmationPage extends Page {

  get elements() {
    return {
      'id': this.by.css('.confirmation-block'),
      'confirmation title': this.by.css('.confirmation-block .confirmation-title'),
      'reset verified button': this.by.css('.confirmation-block button.confirmation-button'),
      'confirmation message': this.by.css('.confirmation-block .confirmation-description'),
      'notify success message': this.by.css('div.ui-pnotify.success'),
    }
  }
}

module.exports = ShopConfirmationPage
