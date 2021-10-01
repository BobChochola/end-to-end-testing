let Page = require('../../framework/models/Page.js')

class ReturnProductInspectionPage extends Page {

  get elements() {

    return {
      'id': this.by.css('table[class*="return-inspection-table"]'),
      'cancel button': this.by.css('div[ng-controller="ReturnOrdersInspectionController"] div[class*="box-info"] a[href*="/return_orders"]'),
      'confirm inspection button': this.by.css('button[ng-click="orderItemInspection()"]'),
      'popover': this.by.css('div[class="modal-content"]'),
      'popover confirm button': this.by.css('div[class="modal-content"] button[ng-click="confirm()"]:not(.ng-hide)'),

      'row of product': this.by.css('tr[ng-repeat*="returnOrder.items"]'),
      'row of product image': this.by.css('tr[ng-repeat*="returnOrder.items"] img'),
      'row of product name': this.by.css('tr[ng-repeat*="returnOrder.items"] p[ng-if*="title_translations"]'),
      'row of product variant': this.by.css('tr[ng-repeat*="returnOrder.items"] td:nth-child(2)'),
      'row of product quantity': this.by.css('tr[ng-repeat*="returnOrder.items"] td:nth-child(3)'),
      'row of product inspect success quantity field': this.by.css('tr[ng-repeat*="returnOrder.items"] input[name*="inspectionPassQuantity"]'),
      'row of product inspect fail quantity': this.by.css('tr[ng-repeat*="returnOrder.items"] td:nth-child(5)'),
      'row of product inspect remark field': this.by.css('tr[ng-repeat*="returnOrder.items"] input[name*="inspectionRemark"]'),
      'inspection quantity error message': this.by.css('p[ng-show*="returnOrderInspectionForm.$submitted"]'),
      'inspection remark too long error message': this.by.css('p[ng-show*="$error.maxlength"]'),

    }

  }

  get samples() {

    return {
    
    'product image': `${this.props.sample.sampleImagesPath()}/1.png`,
    'more than 60 characters': `What dog can jump higher than a building?anydog, buildings cant jump!What has a head, a tail, and no body?A coin`,
    }
  }

}

module.exports = ReturnProductInspectionPage
