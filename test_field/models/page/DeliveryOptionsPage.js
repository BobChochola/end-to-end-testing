let Page = require('../../framework/models/Page.js')

class DeliveryOptionsPage extends Page {

  get elements() {

    return {
      'id': this.by.css('[ng-controller="DeliveryOptionsByWeightController"]'),
      'language dropdown': this.by.css('[class*="navbar-collapse"] li[class="dropdown"]:nth-child(1)'),
      'language dropdown option': this.by.css('[aria-labelledby="menu-languages"] a'),
      'table': this.by.css('tbody[ng-model="deliveryOptions"]'),
      'row of delivery options list': this.by.css('tr[ng-repeat="option in deliveryOptions"]'),
      'delivery options': this.by.css('div[ng-show="deliveryOptions"] div[ng-hide*="deliveryOptions.length"]'),
      'row of return delivery options list': this.by.css('tr[ng-repeat="option in returnDeliveryOptions"]'),
      'delete button of delivery method list': this.by.css('tr[ng-repeat="option in deliveryOptions"] button[ng-click="deleteRecord(option)"]'),
      'delete button of return delivery method list': this.by.css('tr[ng-repeat="option in returnDeliveryOptions"] button[ng-click="deleteRecord(option)"]'),
      'delete confirmation popover': this.by.css('div[window-class="dialogbox-modal-window"]'),
      'confirm delete button':this.by.css('button.btn-danger[ng-disabled="recheckboxMessage && !recheckboxDialog"]'),
      'drag icon of delivery method list': this.by.css('tr[ng-repeat="option in deliveryOptions"] div[class="drag-handle"]'),
      'publish button of delivery method list': this.by.css('[ng-click$="publishRecord(option)"]'),
      'unpublish button of delivery method list': this.by.css('[ng-click="unpublishRecord(option)"]'),
      'edit button of delivery method list': this.by.partialLinkText('Edit'),
      'delete checkbox': this.by.css('.recheckbox label'),
      'Logout': this.by.css('a[ng-click="signout()"]'),
      'turn off toggle':this.by.css('div[class="switch-animate switch-off"]'),
      'reminder':this.by.css('div[class="box-info notification-box-primary ng-scope"]'),
      'User Menu': this.by.css('[id="menu-user"]'),
      'add button': this.by.css('[ng-show*=create_update] .btn-primary'),
      'tab': this.by.css('[ng-repeat="tab in availableTabs track by $index"]'),
      'popover': this.by.css('div.modal-dialog'),
      'popover ok button': this.by.css('button[ng-click="confirm()"]'),
    }

  }

  get samples() {

    return {

      'the description': 'testing description',
      'delivery name': 'Local Delivery',
      'Delivery Fee': '10',    
    }
  
  }

  get url() {
  
    return `${this.props.baseURL}/admin/${this.props.account.handle}/delivery_options?locale=en`
  
  }

}

module.exports = DeliveryOptionsPage 
