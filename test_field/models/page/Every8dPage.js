let Page = require('../../framework/models/Page.js')

class Every8dPage extends Page {

  get elements() {

    return {
      'id': this.by.css('#form1'),
      'account field': this.by.css('input#txt_userid'),
      'password field': this.by.css('input#txt_password'),
      'login button': this.by.css('[id="btn_login"]'),
      'phone search field': this.by.css('input#SearchMemberSend_SearchSend_txt_phone'),
      'row of mail content': this.by.css('td[width="204"]'),
      'phone search checkbox': this.by.css('#SearchMemberSend_SearchSend_box_phone'),
      'search sms button': this.by.css('[name="FM_OPT_IMG_SMS_SEARCH"]'),
      'search button': this.by.css('th span[onclick]'),
      'search result': this.by.css('#SearchMemberSend_SearchSend_div_data_list table:nth-child(2)'),
      'close intercom button': this.by.css('#cboxClose'),
    }

  }

  get samples() {
    return {
      'every8d account': '24973192',
      'every8d password': 'shopline123',
      'check code phone': '0988888888',
      'SMS content': 'test SMS message content',
      'setup link': `${`${this.getVariable('message content')}`.match(/(https?:\/\/[^\s]+)/g)}`,
      'url link': `${this.getVariable('short url link')}`.substring(`${this.getVariable('short url link')}`.search("http")),
      'sms english signup notification':`Hi! You're now a member of ${this.getVariable('shop name')}. Thanks for joining us. Happy shopping!`,
      'sms zh-tw signup notification':`您好！歡迎您成為${this.getVariable('shop name')}的會員。謝謝您的加入，祝購物愉快！`,
      'sms zh-cn signup notification':`您好！欢迎您成为${this.getVariable('shop name')}的会员。谢谢您的加入，祝购物愉快！`,
    }
  }

  get url() {
    return `https://tw.every8d.com/every8d30/report/SearchMemberSend.aspx`
  }

}

module.exports = Every8dPage
