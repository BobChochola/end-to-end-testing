let Page = require('../../framework/models/Page.js')

class PagesPage extends Page {

  get elements() {

    return {
      'id': this.by.css('.box-info.full'),
      'page list': this.by.css('.box-info.full'),
      'add advanced page button': this.by.css('a[ng-click^="addAdvancedPage"]'),
      'delete button': this.by.css('[ng-click^="deleteRecord"]:not(.ng-hide)'),
      'popover': this.by.css('.modal-dialog'),
      'ok button': this.by.css('.modal-dialog .btn-danger'),
      'confirm button': this.by.css('input[class="ng-pristine ng-untouched ng-valid"]'),

      'set home page button': this.by.css('button[ng-click="setSetting(\'home_page\',page)"]:not(.ng-hide)'),
      'advanced page edit button': this.by.css('a.btn.btn-default.btn-sm.ng-binding:not(.ng-hide)'),
      'advanced page copy button': this.by.css('button[ng-click="copyRecord(page)"]:not(.ng-hide):not(.hide)'),
      'ok copy button': this.by.css('button[ng-click="confirm()"]'),
      'go to page button': this.by.css('i[ng-click="goToPage(page)"]'),
      'image content': this.by.css('img[class="sl-lazy-image"]'),
      'page title bar': this.by.css('td[class="word-break-wrap"]'),
      'row of page list': this.by.css('tr[ng-repeat="page in pages"]'),
      //mobile
      'view page button': this.by.css('button.btn.btn-primary.ladda-button.ng-binding'),
    }

  }

  get url() {
  
    return `${this.props.baseURL}/admin/${this.props.account.handle}/pages?locale=en`
  
  }

}

module.exports = PagesPage
