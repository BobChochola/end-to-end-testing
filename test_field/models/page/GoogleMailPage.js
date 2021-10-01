let Page = require('../../framework/models/Page.js')
const { until, By, Key } = require('selenium-webdriver')

class GoogleMailPage extends Page {

  get elements() {
    return {
      'id': this.by.css('[href*="google.com"]'),
      'account field': this.by.css('input[type="email"]'),
      'identifier next button': this.by.css('[id*="ext"]:not([id*=heading])'),
      'password field': this.by.css('input[type="password"]'),
      'password next button': this.by.css('#passwordNext,#signIn'),
      'logo button': this.by.css('img[src*="https://www.google.com/a/cpanel/shoplineapp.com/images/logo"]'),
      'mail list': this.by.css('table[id]'),
      'row of mail list': this.by.css('div[role="main"] td[tabindex="-1"] [role="link"]'),
      'row of mail title': this.by.css('table tr td:nth-child(4)'),
      'delete button of mail list': this.by.css('div[role="main"] td [data-tooltip="Delete"]'),
      'city field': this.by.css('input'),
      'search field': this.by.css('[placeholder*="Search"]'),
      'mail detail': this.by.css('table.Bs.nH.iY .ii.gt'),
      'mail detail title': this.by.css('.ha'),
      'mail sender': this.by.css('h3.iw'),
      'merchant reply button': this.by.css('a[href*="admin/'+this.props.loginAccount.handle+'"]'),
      'customer reply button': this.by.css('a[href*="shopline"]'),
      'message center merchant reply button': this.by.css('a[href*="message-center"]'),
      'set my password button': this.by.css('a[href*="users/password/edit?reset_password_token"]'),
      'get it now button': this.by.css('a[href*="com/products/"]'),
      'sign out button': this.by.css('a[href*="https://accounts.google.com/Logout?hl=en&continue=https://mail.google.com/mail&service=mail&timeStmp"]'),
      'accounts dropdown': this.by.css('div[jscontroller="iab5K"]'),
      'row of account': this.by.css('div[class="lCoei YZVTmd SmR8"]'),

      'search mail list': this.by.css('.BltHke.nH.oy8Mbf[role="main"] .Cp:nth-child(2) table'),
      'download button': this.by.css('a[href*="-shoplineapp-com"]'),
      'view message button': this.by.css('[role="main"] span[role="link"]'),
      'bold font': this.by.css('table.Bs.nH.iY .ii.gt p strong'),
      'italic font': this.by.css('table.Bs.nH.iY .ii.gt p em'),
      'underline font': this.by.css('table.Bs.nH.iY .ii.gt p u'),
      'ins underline font': this.by.css('table.Bs.nH.iY .ii.gt p ins'),
      'size font': this.by.css('table.Bs.nH.iY .ii.gt [style="font-size:10px"]'),
      'eighteen px size font': this.by.css('table.Bs.nH.iY .ii.gt [style="font-size:18px"]'),
      'mail image': this.by.css('table.Bs.nH.iY .ii.gt img'),
      'green color font': this.by.css('[style*="color:rgb(97,189,109)"]'),
      'blue background color font': this.by.css('[style*="background-color:rgb(71,85,119)"]'),
      'link text': this.by.css('a[href*="https://'+this.props.loginAccount.handle+'"] span'),
      'info box button': this.by.css('.acZ.xD .ajy'),
      'row of info box list': this.by.css('.ajA.SK td'),
      'verify email now button': this.by.css('a[href*="users/confirmation?confirmation"]'),
      'recipient info collapse button': this.by.css('[aria-label="Show details"]'),
      'recipient info': this.by.css('.ajA'),
      'claim gift button': this.by.css('[href*="user_credits"]'),
      'delete button': this.by.xpath('//*[@id=":4"]/div[3]/div[1]/div/div[2]/div[3]'),
      'second delete button': this.by.xpath('//*[@id=":4"]/div[2]/div[1]/div/div[2]/div[3]/div/div'),
      'url link': this.by.css('a[href*="http://shln.me/"]'),
      'order detail': this.by.css('table[style*="font-size:12px"] > tbody'),
      'row of product': this.by.css('table[style*="font-size:12px"] > tbody > tr > td > div:not([style*="right"])'),
      'proceed button': this.by.css('button[name="sl"]'),
      'view order button': this.by.css('a[href*="/orders/"]'),
      'report not spam button': this.by.css('button.IdsTHf'),
      'view order button': this.by.css('a[href*="/orders/"]'),

      // for sloving unpredictable problem
      'way of list': this.by.css('li.C5uAFc'),
      'try another way button': this.by.css('div[role="button"][aria-disabled="false"][jsname="bCkDte"]'),
      'see password button': this.by.css('div[role="button"][jscontroller="dYc4p"]'),
      'next button': this.by.css('div[role="button"][jscontroller="VXdfxd"]'),
      'update button': this.by.css('div[jscontroller="VXdfxd"][jsname="OCpkoe"]'),
      'complete button': this.by.css('div[jscontroller="VXdfxd"][jsname="UjXomb"]'),
    }
  }

  get isAngular() { return false }

  get samples() {

    return {
      'merchant email': this.props.adminAccount.email,
      'account email': this.props.loginAccount.notificationEmail,
      'customer email': this.props.adminAccount.email,
      'account password': 'testuser',
      'name': '陳小明',
      'message': 'test for express checkout page message feature',
      'broadcast image': `${this.props.sample.sampleImagesPath()}/3.jpg`,
      'Email title': "test EMAIL message title",
      'Email content': "test EMAIL message content",
      'return order number': `${this.getVariable('return order info')}`.replace(/[^0-9]/g,''),
      'full choose date': `${this.props.sample.genYear()}-${this.props.sample.genMonth()}-${this.getVariable('choose date')}`,
      'order number': `${this.getVariable('order info')}`.substr(52, 17).replace(/[^0-9]/g,''),
      'more than 150 characters': 'This is over 150 words This is over 150 words This is over 150 words This is over 150 words This is over 150 words This is over 150 words This is over 150 words',
      'only 150 characters': 'This is over 150 words This is over 150 words This is over 150 words This is over 150 words This is over 150 words This is over 150 words This is over',
    }

  }

  get url() {

    return 'https://mail.google.com/mail'

  }

}

module.exports = GoogleMailPage
