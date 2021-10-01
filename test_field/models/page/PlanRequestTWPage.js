let Page = require('../../framework/models/Page.js')

class PlanRequestTWPage extends Page {

  get elements() {

    return {
      'id': this.by.css('div.contents.shape.box.figure'),
      'request panel': this.by.css('#element-178'),
    }

  }

  get isAngular() { return false }

  get url() {
  
    return `https://upgrade.shopline.tw/plans`
  
  }
}

module.exports = PlanRequestTWPage
