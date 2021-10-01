let Page = require('../../framework/models/Page.js')

class OneProductManagePage extends Page {

  get elements() {

    return {
      'id': this.by.css('button[type="button"]'),
      //sales channel
      'sales channel row of variant dropdown': this.by.css('div[data-e2e-id="sales channel row of variant dropdown"]'),
      'sales channel tab': this.by.css('li[data-e2e-id="sales channel tab"]'),
      'sales channel': this.by.css('td[data-e2e-id="sales channel"]'),
      'country': this.by.css('td[data-e2e-id="country"]'),
      'product name': this.by.css('td[data-e2e-id="product name field"]'),
      'product type': this.by.css('td[data-e2e-id="product type Product"]'),
      'free gift type': this.by.css('[data-e2e-id="product type Free Gift"]'),
      'add on item type': this.by.css('[data-e2e-id="product type AddOn Item"]'),
      'publish status': this.by.css('td[data-e2e-id="product status Published"]'),
      'unpublish status': this.by.css('[data-e2e-id="product status Unpublished"]'),
      'variant': this.by.css('td[data-e2e-id="product variant"]'),
      'sku': this.by.css('td[data-e2e-id="sku field"]'),
      'sales channel warehouse': this.by.css('td[data-e2e-id="warehouse dropdown"]'),
      'sales channel available quantity': this.by.css('td[data-e2e-id="sales channel available quantity"]'),
      'warehouse dropdown': this.by.css('select[name="warehouse"]'),
      'warehouse dropdown option': this.by.css('select[name="warehouse"] option'),
      'sales channel save button': this.by.css('button[data-e2e-id="inventory save button"]'),
      'sales channel edit button': this.by.css('button[data-e2e-id="sales edit button"]'),
      //inventory
      'inventory row of variant dropdown': this.by.css('div[data-e2e-id="sales channel row of variant dropdown"]'),
      'inventory tab': this.by.css('li[data-e2e-id="inventory tab"]'),
      'inventory warehouse': this.by.css('td[data-e2e-id="inventory warehouse"]'),
      'inventory stock quantity': this.by.css('div[data-e2e-id="inventory stock quantity"]'),
      'inventory pend to deliver quantity': this.by.css('td[data-e2e-id="inventory pend to deliver quantity"]'),
      'inventory available quantity': this.by.css('td[data-e2e-id="inventory available quantity"]'),
      'quantity field': this.by.css('input[data-e2e-id="quantity field"]'),
      'decrease button': this.by.css('button[data-e2e-id="decrease button"]'),
      'inventory save button': this.by.css('button[data-e2e-id="inventory save button"]'),

      'primary inventory warehouse': this.by.css('tbody:nth-child(2) td[data-e2e-id="inventory warehouse"]'),
      'primary inventory stock quantity': this.by.css('tbody:nth-child(2) div[data-e2e-id="inventory stock quantity"]'),
      'primary inventory pend to deliver quantity': this.by.css('tbody:nth-child(2) td[data-e2e-id="inventory pend to deliver quantity"]'),
      'primary inventory available quantity': this.by.css('tbody:nth-child(2) td[data-e2e-id="inventory available quantity"]'),
      'primary quantity field': this.by.css('tbody:nth-child(2) input[data-e2e-id="quantity field"]'),
      'primary decrease button': this.by.css('tbody:nth-child(2) button[data-e2e-id="decrease button"]'),
      'primary inventory save button': this.by.css('tbody:nth-child(2) button[data-e2e-id="inventory save button"]'),

      'testqa inventory warehouse': this.by.css('tbody:nth-child(3) td[data-e2e-id="inventory warehouse"]'),
      'testqa inventory stock quantity': this.by.css('tbody:nth-child(3) div[data-e2e-id="inventory stock quantity"]'),
      'testqa inventory pend to deliver quantity': this.by.css('tbody:nth-child(3) td[data-e2e-id="inventory pend to deliver quantity"]'),
      'testqa inventory available quantity': this.by.css('tbody:nth-child(3) td[data-e2e-id="inventory available quantity"]'),
      'testqa quantity field': this.by.css('tbody:nth-child(3) input[data-e2e-id="quantity field"]'),
      'testqa decrease button': this.by.css('tbody:nth-child(3) button[data-e2e-id="decrease button"]'),
      'testqa inventory save button': this.by.css('tbody:nth-child(3) button[data-e2e-id="inventory save button"]'),
    }
    
  }
  get samples() {

    return {
      'checkout order quantity': parseInt((`${this.getVariable('origin quantity')}`.replace(/[^0-9]/g))-1).toString(),
      'vatiation checkout order quantity': parseInt((`${this.getVariable('variation origin quantity')}`.replace(/[^0-9]/g))-1).toString(),
      'add ten quantity': (parseInt(`${this.getVariable('origin quantity')}`.replace(/[^0-9]/g))+10).toString(),

      'decrease ten quantity': parseInt((`${this.getVariable('origin quantity')}`.replace(/[^0-9]/g))-10).toString(),
      'checkout count': parseInt((`${this.getVariable('before checkout')}`.replace(/[^0-9]/g))-1).toString(),
      'second updated quantity': (parseInt(this.getVariable('second quantity'))+2).toString(),
      'third updated quantity': (parseInt(this.getVariable('third quantity'))-4).toString(),
    }

 }


}

module.exports = OneProductManagePage