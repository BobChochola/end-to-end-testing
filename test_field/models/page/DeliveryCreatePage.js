let Page = require('../../framework/models/Page.js')

class DeliveryCreatePage extends Page {

  get elements() {

    return {
      'id': this.by.css('form[name="deliveryOptionForm"]'),
      'language dropdown': this.by.css('a[id="current-language-name"]'),
      'language dropdown option': this.by.css('ul li[ng-class*=currentLanguage]'),
      'delivery type dropdown': this.by.css('selectbox[value="form.deliveryType"]'),
      'delivery type dropdown option': this.by.css('selectbox[value="form.deliveryType"] li'),
      'shipping from edit button': this.by.css('[ng-click="openSlLogisticsCountryModal(\'deliveryCountry\')"]'),
      'shipping to edit button': this.by.css('[ng-click="openSlLogisticsCountryModal(\'receiveCountry\')"]'),
      'provider edit button': this.by.css('[ng-click="openSlLogisticsExpressList()"]'),
      'search provider button': this.by.css('[ng-click="openSlLogisticsExpressList()"]'),
      'popover': this.by.css('.modal-dialog'),
      'popover tab': this.by.css('.modal-dialog .tab'),
      'popover row of country': this.by.css('.modal-dialog .country-item'),
      'popover row of provider': this.by.css('[ng-repeat="expressProduct in expressProductList track by expressProduct.code"]'),
      'popover row of checkbox': this.by.css('[ng-repeat="expressProduct in expressProductList track by expressProduct.code"] input'),
      'popover ok button': this.by.css('.modal-dialog .btn.btn-primary'),
      'warning message': this.by.css('.yellow-warn'),

      'providers dropdown': this.by.css('selectbox[options="providers"]'),
      'providers dropdown option': this.by.css('selectbox[options="providers"] li'),
      'value added services checkbox':this.by.css('[ng-if="canApplyCod || delivery_option.config_data.support_cod"] div input'),
      'reminder': this.by.css('div[ng-if="merchantNotAllowedToCreate()"]'),
      'field error message': this.by.css('p:not(.ng-hide)[ng-bind-html="errorMessage"]'),
      'language tab': this.by.css('a[ng-click="changeEditLang(lang)"]'),
      'name field': this.by.css('input[name="delivery_option_name"]'),
      'description field': this.by.css('textarea[name="delivery_option_description"]'),
      'display description checkbox': this.by.css('.checkbox.show-description-control'),
      'delivery fee type dropdown': this.by.css('selectbox[options="feeTypes"]'),
      'delivery fee type dropdown option': this.by.css('selectbox[options="feeTypes"] li'),
      'requires customer address checkbox': this.by.css('input[name="delivery_option_requires_customer_address"]'),
      'parent id field': this.by.css('input[name="delivery_option_parentid"]'),
      'shop id field': this.by.css('input[name="delivery_option_shopid"]'),
      'merchant name field': this.by.css('input[name="delivery_option_merchant_name"]'),
      'sender chinese name field': this.by.css('input[name="delivery_option_sender_name"]'),
      'phone number field': this.by.css('input[ng-model="delivery_option.config_data.phone_number"]'),
      'custom support phone number field': this.by.css('input[name="delivery_option_cs_phone"]'),
      'contract code field': this.by.css('input[name="delivery_option_tcat_contract_code"]'),
      'company name field': this.by.css('input[ng-model="delivery_option.config_data.sender_company_name"]'),
      'sender name field': this.by.css('[ng-model="delivery_option.config_data.sender_name"]'),
      'sender phone field': this.by.css('[ng-model="delivery_option.config_data.sender_phone"]'),
      'sender email field': this.by.css('[ng-model="delivery_option.config_data.sender_email"]'),
      'sender address field': this.by.css('[ng-model*="sender_address"]'),
      'sender city field': this.by.css('[ng-model="delivery_option.config_data.sender_pickup_address.city"]'),
      'sender postcode field': this.by.css('[ng-model="delivery_option.config_data.sender_pickup_address.postcode"]'),
      'sender state field': this.by.css('[ng-model="delivery_option.config_data.sender_pickup_address.state"]'),
      'delivery execution toggle':this.by.css('toggle-button[model="delivery_option.config_data.execute_shipment_permission"]'),
      'confirm adding button': this.by.css('button:not(.ng-hide)[ng-click^="confirm"]'),
      'add button': this.by.css('form[name="deliveryOptionForm"] button[type="submit"]'),
      'product name dropdown': this.by.css('[options="productTagList"]'),
      'product name dropdown option': this.by.css('[options="productTagList"] a'),
      //store-pickup
      'upload button': this.by.css('button[ng-click="openFile()"]'),
      'uploaded address content': this.by.css('div.store-pickup-text-content'),
      'store address selector': this.by.css('input[id="bulkupload-store-pickup"]'),
      //Specified Date
      'specified date toggle': this.by.css('[model="form.deliveryTimeToggle.date"] .switch-animate'),
      'selectable day field': this.by.css('[name="max_lead_time"]'),
      'lead time field': this.by.css('[ng-model="delivery_option.config_data.lead_time"]'),
      'tag item': this.by.css('li[class*="tag-item"]'),
      'surcharge dropdown': this.by.css('selectbox[options="sfIntegratedPayMethod"]'),
      'surcharge dropdown option': this.by.css('selectbox[options="sfIntegratedPayMethod"] ul li'),
      'exclude specific day dropdown': this.by.css('[name="weekday_exclusion"]'),
      'exclude specific day dropdown option': this.by.css('[name="weekday_exclusion"] li'),
      'excluded date calendar': this.by.css('[ng-model="delivery_option.config_data.excluded_dates"]'),
      'excluded date calendar table': this.by.css('div[class*="delivery-exclusion-date-options"] ul[ng-change*="dateSelection"]'),
      'calendar this month date': this.by.css('ul[ng-change*="dateSelection"] span:not([class*="text-muted"])'),
      'excluded date tag': this.by.css('div[class*="delivery-exclusion-date-options"] li[class*="tag-item"]'),
      'calendar today button': this.by.css('.btn.active'),
      'specified date required checkbox': this.by.css('[ng-model="form.deliveryTimeToggle.required"]'),
      //Specified Timeslot
      'specified timeslot toggle': this.by.css('[model="form.deliveryTimeToggle.time"] .switch-animate'),
      'option setting field': this.by.css('[ng-model="delivery_option.config_data.specific_delivery_time_translations"] input'),
      'delivery Type error message reminder': this.by.css('[label="Delivery Type"] p[ng-bind-html="errorMessage"]'),
      'error message reminder': this.by.css('p[ng-bind-html="errorMessage"]'),
      'merchant not allowed create reminder': this.by.css('div[ng-if="merchantNotAllowedToCreate()"]'),
      //Shipping Zone
      'select the rest of the world checkbox': this.by.css('input[ng-model="isGlobalSelected"]'),
      'select shipping countries link': this.by.css('.delivery-country-select-button a:not(.ng-hide)'),
      'shipping zone settings popup': this.by.css('div.shipping-countries-dialogbox'),
      'applicable shipping countries taiwan': this.by.css('li[ng-repeat="country in countries"]:nth-child(49)'),
      'applicable shipping countries hong kong': this.by.css('li[ng-repeat="country in countries"]:nth-child(13)'),
      'right angle bracket button': this.by.css('button[ng-click="addCountry(selectedCountry)"]'),
      'ok button': this.by.css('button[ng-click="save()"]'),
      'delivery fee field': this.by.css('input[name*="delivery_option_fee"]'),
      'delivery by weight fee field': this.by.css('input[ng-model="rate.fee.dollars"]'),
      'weight field': this.by.css('input[ng-model="rate.rate_limit"]'),
      'add shipping zone button': this.by.css('a[ng-click="addZone()"]'),
      'add zone button': this.by.css('a:not(.ng-hide)[ng-click="addRate(zone)"] '),
      'nonapplicable shipping countries': this.by.css('[class="country-list"]'),
      'row of nonapplicable shipping countries': this.by.css('[class="country-list"] span[ng-if="!isZone(country)"]'),
      'row of nonapplicable shipping continents': this.by.css('[class="country-list"] span[ng-if="isZone(country)"]'),
      'applicable shipping countries': this.by.css('div.added-list'),
      'row of applicable shipping countries': this.by.css('div.added-list span[ng-if="!isZone(country)"]'),
      'row of applicable shipping continents': this.by.css('div.added-list span[ng-if="isZone(country)"]'),
      'shipping zone area': this.by.css('div[id="shipping-form"]'),
      'selected shipping countries': this.by.css('[ng-repeat="zone in form.rateByZone track by $index"] span.collapsed'),
      'delete shipping zone link': this.by.css('[class*="col-md-5"] [ng-click="removeZone($index)"]'),
      //hk
      'services dropdown': this.by.css('selectbox[options="sfexpressTypes"]'),
      'services dropdown option': this.by.css('selectbox[options="sfexpressTypes"] li a'),
      'sf merchant id field': this.by.css("input[name=\'delivery_option_hk_integrated_sfexpress_sf_customer_id\']"),
      'sf company name field': this.by.css("input[name=\'delivery_option_hk_integrated_sfexpress_sender_company_name\']"),
      'hk sender name field': this.by.css("input[name=\'delivery_option_hk_integrated_sfexpress_sender_name\']"),
      'hk sender phone field': this.by.css("input[name=\'delivery_option_hk_integrated_sfexpress_sender_phone\']"),
      'hk sender address field': this.by.css("input[name=\'delivery_option_hk_integrated_sfexpress_sender_address\']"),      
      'pick-up points dropdown': this.by.css('selectbox[options="sfexpressServiceTypes"]'),
      'pick-up points dropdown option': this.by.css('selectbox[options="sfexpressServiceTypes"] li'),
      'zeek2door account field': this.by.css('input[name="hk_sfplus_id"]'),
      'delivery payment mode dropdown': this.by.css('selectbox[name="delivery_option.config_data.pay_method"]'),
      'delivery payment mode dropdown option': this.by.css('selectbox[name="delivery_option.config_data.pay_method"] li'),
      'sf express option': this.by.css('a[title="S.F. Express"]'),
      'sf express integration option': this.by.css('a[title="S.F. Express (with integration)"]'),
      'sf merchant id field': this.by.css("input[name=\'delivery_option_hk_integrated_sfexpress_sf_customer_id\']"),
      'sf fee field': this.by.css('input[ng-change="onAttributableThresholdChange()"]'),
      'sf fee description': this.by.css('div[ng-if*="delivery_option.config_data.pay_method"] div.controls'),

      // 711 cross border
      'product name dropdown': this.by.css('selectbox[options="productTagList"] a[class*="sb-toggle"]'),
      'product name dropdown option': this.by.css('selectbox[options="productTagList"] li[class*="sb-item"]'),
      '711 cross border package information': this.by.css('input[ng-model="delivery_option.config_data.sender_name"]'),
      'cross border sender name field': this.by.css('input[name="delivery_option_7_11_cross_border_product_customized_name"]'),
      'west malaysia checkbox': this.by.css('input[name="delivery_options_region_MY_west"]'),
      'east malaysia checkbox': this.by.css('input[name="delivery_options_region_MY_east"]'),
    }

  }

  get samples() {

    return {

      'the description': 'testing description',
      'delivery name': '(dirty data) Local Delivery',
      'Delivery Fee': '10',

      'the Parent ID': '925',
      'the Shop ID': '001',
      'the 711B2C Parent ID': '925',
      'the 711C2C PicknPay Parent ID': '733',
      'the 711C2C PickOnly Parent ID': '734',
      'the 711 Shop ID': '001',
      'the 711C2B Parent ID': '909',
      'the 711C2B Shop ID': 'z01',
      'the FMTB2C Parent ID': '824',
      'the FMTB2C Shop ID': '999',
      'the 711 CorossBorder Parent ID': '110',
      'the 711 CorossBorder Shop ID': '000',

      'the Merchant Name': '陳小明',
      'the Phone Number': '123456789',
      'contract code':'2497319213',
      'sender name':'商線科技有限公司',
      'sender phone':'0227423966',
      'sender address': '台北市松山區光復北路11巷44號14樓',
      'sf merchant id': '9999999999',
      'date': this.props.sample.genDate(),
      'error message': 'Delivery Fee Type (per order) is required',
      'store address file': `${this.props.sample.sampleImagesPath()}/all_store_address_sample.xls`,
      'store address only title 1 file': `${this.props.sample.sampleImagesPath()}/title_1_store_address_sample.xls`,
      'store address only title 2 file': `${this.props.sample.sampleImagesPath()}/title_2_store_address_sample.xls`,
      'xss name': `"><script>alert('(dirty data)xss')</script>`,
      'zh-hant url': `${this.props.baseURL}/admin/${this.props.account.handle}/delivery_options/new?locale=zh-hant`,

      'only date of tomorrow': `${this.props.sample.genOnlyDate(1)}`,
      'full date with slash': `${this.props.sample.genDate(1)}`,
    }

  }

  get url() {

    return `${this.props.baseURL}/admin/${this.props.account.handle}/delivery_options/new?locale=en`

  }

}

module.exports = DeliveryCreatePage
