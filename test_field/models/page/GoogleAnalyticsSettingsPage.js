let Page = require('../../framework/models/Page.js')

class GoogleAnalyticsSettingsPage extends Page {

  get elements() {

    return {
      'id': this.by.css('#suite-top-nav'),
      'create button': this.by.css('.btn.action.mini'),
      'new account form': this.by.css('[name="name"]'),
      'analytics account name field': this.by.css('input[name="name"]'),
      'analytics website name field': this.by.css("input[ng-model=\'ctrl.ngModel.name\']"),
      'analytics url field': this.by.css("input[ng-model=\'urlBody\']"),
      // 'new account form submit button': this.by.css("button.action"),
      'protection terms': this.by.css("section[class=\'co-controller-terms\']"),
      'accept protection terms checkbox': this.by.css("md-checkbox[ng-model=\'ctrl.acceptedDca\'"),
      'accept terms form submit button': this.by.css("button[ng-click=\'ctrl.confirmDialog($event)\']"),
      'analytics': this.by.css("iframe#galaxyIframe"),
      'tracking id': this.by.css("#ID-m-content-header div[data-guidedhelpid=\'trackingheader-trackingid\']"),
      'admin button': this.by.css('report-link[sref="app.admin"] a'),
      'home button': this.by.css('report-link[sref="app.report.home"] a'),
      'analytics counter': this.by.css('div.counter'),
      'account settings button': this.by.css('a[href*="/admin/account/settings"]'),
      'move to trash button': this.by.css('button[ui-sref="app.admin.account.delete"]'),
      'trash account button': this.by.css('button[type="submit"]'),
      'disabled account button': this.by.css('.app-admin-account-settings'),
      'close dialog button': this.by.css('#inproduct-guide-modal .iph-dialog-dismiss'),
      'next button': this.by.css('[aria-hidden="false"] >> [type="submit"]'),
    }

  }


  get samples() {

    return {
      'shop url': `${this.props.sample.genShopURL(this.props.account.handle)}`.split('//')[1],
      'new shop name': this.props.sample.genStoreName(),
    }

  }

}

module.exports = GoogleAnalyticsSettingsPage