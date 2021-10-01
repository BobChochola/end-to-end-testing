let Page = require('../../framework/models/Page.js')

class FreeGiftsEditPage extends Page {

  get elements() {

    return {
      'id': this.by.css('form[name="giftForm"]'),
      'english name field': this.by.css('input[name="gift_title_translations_en"]'),
      'update button': this.by.css('button[type="submit"]'),
    }

  }


  get samples() {

    return {
      'free gift photo': `${this.props.sample.sampleImagesPath()}/1.png`
    }

  }


}

module.exports = FreeGiftsEditPage
