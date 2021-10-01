let Page = require('../../framework/models/Page.js')

class OneEditStaffPermissionsPage extends Page {

  get elements() {

    return {
      'id': this.by.xpath('//*[@id="root"]/div/div[3]/div[3]/div[2]/div[1]/div'),
      'full access checkbox': this.by.xpath('//*[@id="root"]/div/div[3]/div[3]/div[2]/div[1]/span/input'),
      'update button': this.by.xpath('//*[@id="root"]/div/div[3]/div[4]/div/button[2]'),

    }

  }

}

module.exports = OneEditStaffPermissionsPage
