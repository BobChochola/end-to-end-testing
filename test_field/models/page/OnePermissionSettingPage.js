let Page = require('../../framework/models/Page.js')

class OnePermissionSettingPage extends Page {

  get elements() {

    return {
      'id': this.by.xpath('//*[@id="root"]/div/div[3]/div[3]/div'),
      'popover': this.by.xpath('//*[@id="root"]/div/div[3]/div[2]'),
      'delete checkbox': this.by.xpath('//*[@id="root"]/div/div[3]/div[2]/div[2]/div/input'),
      'ok button': this.by.xpath('//*[@id="root"]/div/div[3]/div[2]/div[2]/div/div/button[2]'),
      'row of staff': this.by.xpath('//*[@id="root"]/div/div[3]/div[3]/table/tbody/tr'),
      'last row of staff': this.by.xpath('//*[@id="root"]/div/div[3]/div[3]/table/tbody/tr[last()]'),
      'delete button': this.by.xpath('//*[@id="root"]/div/div[3]/div[3]/table/tbody/tr/td[3]/div/button[2]'),
      'last delete button': this.by.xpath('//*[@id="root"]/div/div[3]/div[3]/table/tbody/tr[last()]/td[3]/div/button[2]'),
      'staff table': this.by.xpath('//*[@id="root"]/div/div[3]/div[3]/table/tbody'),

    }

  }

  get url() {

    return `${this.props.oneURL}/admin/${this.props.account.handle}/staff?locale=en`

  }

}

module.exports = OnePermissionSettingPage
