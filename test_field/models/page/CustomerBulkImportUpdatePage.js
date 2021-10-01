let Page = require('../../framework/models/Page.js')

class CustomerBulkImportUpdatePage extends Page {

  get elements() {

    return {
      'id': this.by.css('div[class="file-placeholder"]'),
      'file upload selector': this.by.css('input[id="usersimport"]'),
      'import customer button': this.by.css('div[ng-show*="&& bulkUploadTotalItems>0"]:not(.ng-hide) button[ng-click="importBulkUpload()"]'),
      'row of customer preview list': this.by.css("table.table tr[ng-repeat=\'user in dataShown\']"),
      'row of delivery addresses': this.by.css('td>div[ng-repeat="addr in user.delivery_addresses track by $index"]'),
      'row of name': this.by.css('td[ng-class="{\'user-import-error\': errorMap.name.indexOf(bulkUploadPageStart+$index)>=0}"]'),
      'row of email': this.by.css('td[ng-class="{\'user-import-error\': errorMap.email.indexOf(bulkUploadPageStart+$index)>=0}"]'),
      'row of gender': this.by.css('[ng-class*="gender"]'),
      'row of birthday': this.by.css('[ng-class*="birthday"]'),
      'row of store credit': this.by.css('[ng-class*="store_credit"]'),
      'row of reason for credit': this.by.css('[ng-class*="reason_for_adding_credits"]'),
      'row of expiry date of credit': this.by.css('[ng-class*="credit_expiry"]'),
      'row of contry code': this.by.css('td[ng-class="{\'user-import-error\': errorMap.country_calling_code.indexOf(bulkUploadPageStart+$index)>=0}"]'),
      'row of mobile number': this.by.css('td[ng-class="{\'user-import-error\': errorMap.mobile_phone.indexOf(bulkUploadPageStart+$index)>=0}"]'),
      'row of language': this.by.css('td[ng-bind="locales[user.locale_code]"]'),
      'row of is a member': this.by.css('td[ng-class="{\'user-import-error\': errorMap.is_member.indexOf(bulkUploadPageStart+$index)>=0}"]'),
      'row of accepts marketing Y': this.by.css('td>span[ng-show="user.subscribed_email_types.length>0"]'),
      'row of accepts marketing N': this.by.css('td>span[ng-hide="user.subscribed_email_types.length>0"]'),
      'row of membership tier': this.by.css('[ng-class*="membership_tier"]'),
      'row of phone numbers': this.by.css('td>p[ng-repeat="number in user.phones track by $index"]'),
      'row of delivery addresses': this.by.css('td>div[ng-repeat="addr in user.delivery_addresses track by $index"]'),
      'row of upload list': this.by.css('div.box-info.full > div > job-data-sheet > div > table > tbody > tr'),
      'row of status': this.by.css('job-data-sheet > div > table > tbody > tr:nth-child(n) > td:nth-child(3)'),
      'row of updated time': this.by.css('job-data-sheet > div > table > tbody > tr:nth-child(n) > td:nth-child(4)'),
      'row of detail': this.by.css('job-data-sheet > div > table > tbody > tr:nth-child(n) > td:nth-child(7)'),
      'user import red error': this.by.css('td.ng-binding.ng-scope.user-import-error'),
      'user import delivery red error': this.by.css('p.ng-binding.user-import-error'),
      'popover': this.by.css('div[class*="dialogbox ng-scope"]'),
      'ok button': this.by.css('button[ng-click="confirm()"]'),
      'error message field': this.by.css('div.text-center.file-placeholder.has-error'),
    }

  }



  get samples() {

    return {
      'customer bulk upload file': `${this.props.sample.sampleFilesPath()}/my_customers_import.xls`,
      'new customer bulk upload file': `${this.props.sample.sampleFilesPath()}/my_customers_import_v2.xls`,
      'failed customer bulk upload file': `${this.props.sample.sampleFilesPath()}/my_customers_import_failed.xls`,
      'date': `${ this.props.sample.genDate().replace(/[^0-9]/g, '-')}`,
      'customer mobile country code bulk upload file': `${this.props.sample.sampleFilesPath()}/my_customers_import_mobile_signup.xls`,
      'customer post code bulk upload file':`${this.props.sample.sampleFilesPath()}/my_customers_import_post_code_with_point.xls`,
      'new mobile signup customer bulk upload file': `${this.props.sample.sampleFilesPath()}/my_customers_import_mobile_signup_v2.xls`,
      'error message':'The following customers have errors and will not be imported:',
      'customer select all bulk upload file': `${this.props.sample.sampleFilesPath()}/my_customers_import_select_all.xls`,
    }

  }

  get url() {
    return `${this.props.baseURL}/admin/${this.props.account.handle}/users/import?locale=en`
  }



}

module.exports = CustomerBulkImportUpdatePage
