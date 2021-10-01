let Page = require('../../framework/models/Page.js')

class ShoplyticsPage extends Page {

  get elements() {

    return {
      'id': this.by.xpath('//*[@id="root"]/div/div[3]/div[2]/div[2]/div[1]/div/div[2]/div[1]/div/span'),
    }

  }

  get url() {
  
    return `${this.props.shoplyticsURL}/admin/${this.props.account.handle}?locale=en`
  
  }

}

module.exports = ShoplyticsPage
