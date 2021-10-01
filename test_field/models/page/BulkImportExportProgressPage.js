let Page = require('../../framework/models/Page.js')

class BulkImportExportProgressPage extends Page {

  get elements() {

    return {
      'id': this.by.css('[ng-include*="/admin/views/job."]'),
      'report list':this.by.css('tr.ng-scope'),
      'row of Status list':this.by.css('div[ng-class="getLabelClass(job.status)"]'),
      'Type dropdown':this.by.css('a.sb-toggle.ng-binding'),
      'type dropdown option':this.by.css('[options="collectionTypes"] a'),
      'Show All Types':this.by.css('a[title="Show All Types"]'),
      'Order':this.by.css('a[title="Order"]'),
      'Customer':this.by.css('a[title="Customer"]'),
      'Tab':this.by.css('a[ng-click="ctrl.changeStatusTab(tab)"]'),
      'next page button':this.by.css('a[ng-click="selectPage(page + 1, $event)"]'),
      'Download button':this.by.css('tr [ng-click]'),
      'current page number button':this.by.css('.pagination-page.active a'),
      'pending status':this.by.css('div.label.ng-binding.label-warning'),
      'status':this.by.css('div.label.ng-binding'),
      'User Menu': this.by.css('[id="menu-user"]'),
      'Logout': this.by.css('a[ng-click="signout()"]'),
    }

  }

  get samples() {

    return {
      'Export date': `${ this.props.sample.genDate().replace(/[^0-9]/g, '-')}`
    }

  }

  get url() {

    return `${this.props.baseURL}/admin/${this.props.account.handle}/jobs?locale=en`
  
  }
}

module.exports = BulkImportExportProgressPage
