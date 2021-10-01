let Page = require('../../framework/models/Page.js')

class DeliveryEditPage extends Page {

  get elements() {

    return {
      'id': this.by.css('form[name="deliveryOptionForm"]'),
      'delivery type dropdown': this.by.css('selectbox[value="form.deliveryType"]'),
      'delivery type dropdown option': this.by.css('selectbox[value="form.deliveryType"] li'),
      'providers': this.by.css('[ng-if*="form.deliveryType"]'),
      'language tab': this.by.css('a[ng-click="changeEditLang(lang)"]'),
      'name field': this.by.css('input[name="delivery_option_name"]'),
      'description field': this.by.css('textarea[name="delivery_option_description"]'),
      'delivery fee type dropdown': this.by.css('selectbox[options="feeTypes"]'),
      'delivery fee type dropdown option': this.by.css('selectbox[options="feeTypes"] li'),
      'select shipping countries link': this.by.css('.delivery-country-select-button a:not(.ng-hide)'),
      'shipping zone settings popup': this.by.css('div.shipping-countries-dialogbox'),
      'right angle bracket button': this.by.css('button[ng-click="addCountry(selectedCountry)"]'),
      'ok button': this.by.css('button[ng-click="save()"]'),
      'add zone button': this.by.css('a:not(.ng-hide)[ng-click="addRate(zone)"] '),
      'delivery fee field': this.by.css('input[name*="delivery_option_fee"]'),
      'delivery by weight fee field': this.by.css('input[ng-model="rate.fee.dollars"]'),
      'weight field': this.by.css('input[ng-model="rate.rate_limit"]'),
      'update button': this.by.css('form[name="deliveryOptionForm"] button[type="submit"]'),
      'select the rest of the world checkbox': this.by.css('input[ng-model="isGlobalSelected"]'),
      'requires customer address checkbox': this.by.css('input[name="delivery_option_requires_customer_address"]'),
      'parent id field': this.by.css('input[name="delivery_option_parentid"]'),
      'shop id field': this.by.css('input[name="delivery_option_shopid"]'),
      'merchant name field': this.by.css('input[name="delivery_option_merchant_name"]'),
      'sender chinese name field': this.by.css('input[name="delivery_option_sender_name"]'),
      'contract code field': this.by.css('input[name="delivery_option_tcat_contract_code"]'),
      'company name field': this.by.css('input[ng-model="delivery_option.config_data.sender_company_name"]'),
      'sender name field': this.by.css('[ng-model="delivery_option.config_data.sender_name"]'),
      'sender phone field': this.by.css('[ng-model="delivery_option.config_data.sender_phone"]'),
      'sender email field': this.by.css('[ng-model="delivery_option.config_data.sender_email"]'),
      'sender address field': this.by.css('[ng-model*="sender_address"]'),
      'sender city field': this.by.css('[ng-model="delivery_option.config_data.sender_pickup_address.city"]'),
      'sender postcode field': this.by.css('[ng-model="delivery_option.config_data.sender_pickup_address.postcode"]'),
      'sender state field': this.by.css('[ng-model="delivery_option.config_data.sender_pickup_address.state"]'),
      'phone number field': this.by.css('input[name="c2c_delivery_option_phone_number"]'),
      'custom support phone number field': this.by.css('input[name="delivery_option_cs_phone"]'),
      'description field': this.by.css('textarea[name="delivery_option_description"]'),
      'delivery execution mode dropdown': this.by.css('selectbox[options="orderModes"]'),
      'delivery execution mode dropdown option': this.by.css('selectbox[options="orderModes"] a'),
      'delivery execution mode': this.by.css('selectbox[options="orderModes"] a.sb-toggle'),

      //Store Pick up
      'store preview list': this.by.css('#delivery_option_form > div > div > div:nth-child(4) > div.box-body.store-pickup-panel > react-comp > div > div > table > thead'),
      'store city preview': this.by.css('div.box-body.store-pickup-panel > react-comp > div > div > table > tbody > tr:nth-child(odd) > td:nth-child(3)'),
      'store area preview': this.by.css('div.box-body.store-pickup-panel > react-comp > div > div > table > tbody > tr:nth-child(odd) > td:nth-child(4)'),
      'store district preview': this.by.css('div.box-body.store-pickup-panel > react-comp > div > div > table > tbody > tr:nth-child(odd) > td:nth-child(5)'),
      'store address preview': this.by.css('div.box-body.store-pickup-panel > react-comp > div > div > table > tbody > tr:nth-child(odd) > td:nth-child(6)'),
      'store name preview': this.by.css('div.box-body.store-pickup-panel > react-comp > div > div > table > tbody > tr:nth-child(odd) > td:nth-child(7)'),
      'upload button': this.by.css('button[ng-click="openFile()"]'),
      //Specified Date
      'lead time field': this.by.css('[ng-model="delivery_option.config_data.lead_time"]'),
      'selectable day field': this.by.css('[name="max_lead_time"]'),
      'exclude specific day dropdown': this.by.css('[name="weekday_exclusion"]'),
      'exclude specific day dropdown option': this.by.css('[name="weekday_exclusion"] li'),
      'language tab': this.by.css('a[ng-click="changeEditLang(lang)"]'),
      'selected shipping countries': this.by.css('span[ng-show="isCountrySpecific()"]'),
      'time lead error message': this.by.css('[ng-show*="delivery_option_lead_time.$invalid"]'),
      'delivery execution toggle':this.by.css('toggle-button[model="delivery_option.config_data.execute_shipment_permission"] .switch-success'),
      'delivery fee type dropdown': this.by.css('selectbox[options="feeTypes"]'),
      'delivery fee type dropdown option': this.by.css('selectbox[options="feeTypes"] li'),
      'zeek2door account field': this.by.css('input[name="hk_sfplus_id"]'),

      // 711 cross border
      'product name dropdown': this.by.css('selectbox[options="productTagList"] a[class*="sb-toggle"]'),
      'cross border sender name field': this.by.css('input[name="delivery_option_7_11_cross_border_sender_name"]'),
      'cross border phone number field': this.by.css('name="delivery_option_7_11_cross_border_sender_phone"'),
      'west malaysia checkbox': this.by.css('input[name="delivery_options_region_MY_west"]'),
      'east malaysia checkbox': this.by.css('input[name="delivery_options_region_MY_east"]'),
    }

  }

  get samples() {

    return {

      'the description': 'testing description',
      'delivery name': 'Local Delivery',
      'Delivery Fee': '10',
      'the Parent ID': '111',
      'the Shop ID': '1111', 
      'the Merchant Name': '陳小明',
      'the Phone Number': '123456789',
      'the sender name':'商線科技有限公司',
      'the sender phone':'0227423966',
      'the sender address': '台北市松山區光復北路11巷44號14樓',
      'the 711 CorossBorder Parent ID': '110',
      'the 711 CorossBorder Shop ID': '000',

    }
  
  }

}

module.exports = DeliveryEditPage 
