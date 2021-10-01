let Page = require('../../framework/models/Page.js')

class PaymentCreatePage extends Page {

  get elements() {

    return {
      'id': this.by.css('form[name="paymentForm"]'),
      'payment type dropdown': this.by.css('select[name="payment_type"]'),
      'payment type dropdown option': this.by.css('select[name="payment_type"] option'),
      'opay payments dropdown': this.by.css('select[name="payment_config_data_allpay_payment"]'),
      'opay payments dropdown option': this.by.css('select[name="payment_config_data_allpay_payment"] option'),
      'ecpay payments dropdown': this.by.css('select[name="payment_config_data_ecpay_payment"]'),
      'ecpay payments dropdown option': this.by.css('select[name="payment_config_data_ecpay_payment"] option'),
      'asiapay payments dropdown': this.by.css('select[name="payment_config_data_asiapay_payment"]'),
      'asiapay payments dropdown option': this.by.css('select[name="payment_config_data_asiapay_payment"] option'),
      'ocean payments dropdown': this.by.css('select[name="payment_config_data_oceanpay_payment"]'),
      'ocean payments dropdown option': this.by.css('select[name="payment_config_data_oceanpay_payment"] option[value="string:Credit"]'),
      'molpay payments dropdown': this.by.css('select[name="payment_config_data_molpay_payment"]'),
      'molpay payments dropdown option': this.by.css('select[name="payment_config_data_molpay_payment"] option'),
      'language tab': this.by.css('a[ng-click="changeEditLang(lang)"]'),
      'payment instructions field': this.by.css('textarea[name="payment_instructions"]'),
      'id field': this.by.css('input.ng-invalid[name="payment_config_data_merchant_id"]'),
      'paypal email field': this.by.css('input[name="payment_config_data_email"]'),
      'public key field': this.by.css('input[name="payment_config_data_public_key"]'),
      'private key field': this.by.css('input[name="payment_config_data_private_key"]'),
      'terminal key field': this.by.css('input[name="payment_config_data_terminal_key"]'),
      'api username field': this.by.css('input[name="payment_config_data_username"]'),
      'api password field': this.by.css('input[name="payment_config_data_password"]'),
      'api signature field': this.by.css('input[name="payment_config_data_signature"]'),
      'login name field': this.by.css('input[name="payment_config_data_login"]'),
      'password field': this.by.css('input[name="payment_config_data_password"]'),
      'channel secret key field': this.by.css('input[name="payment_config_data_channel_secret"]'),
      'channel id field': this.by.css('input[name="payment_config_data_channel_id"]'),
      'hashkey field': this.by.css('input.ng-invalid[name="payment_config_data_hash_key"]'),
      'hashiv field': this.by.css('input[name="payment_config_data_hash_iv"]'),
      'tid field': this.by.css('input[name="payment_config_data_tid"]'),
      'security id field': this.by.css('input[name="payment_config_data_security_id"]'),
      'name field': this.by.css('input[name="payment_name"]'),
      'add button': this.by.css('button[type="submit"]'),
      'activate button': this.by.css('a[href*="stripe"]'),
      'confirm adding button': this.by.css('button:not(.ng-hide)[ng-click^="confirm"]'),
      'the ocean payment type': this.by.css('option[value="string:oceanpay"]'),
      'secure toggle': this.by.css('toggle-button[model="payment.config_data.tappay.secure_verify"] [ng-click="toggle()"]'),
      'cancel order faq': this.by.css('a[popover-class="order-setting-faq-popover"]'),
      'faq hint': this.by.css('#payment_form > div > div > div:nth-child(6) > div.box-header.order-setting-head > h2 > a > i'),
      'setting hyperlink': this.by.css('div.box-body [href$="/orders/settings"]'),
      'cancel order toggle': this.by.css('[model="payment.config_data.customer_cancel_order.enabled"]'),
      'cancel order toggle off': this.by.css('[model="payment.config_data.customer_cancel_order.enabled"] div[aria-checked="false"]'),
      'cancel order toggle on': this.by.css('[model="payment.config_data.customer_cancel_order.enabled"] div[aria-checked="true"]'),
      'cancel order info': this.by.css('div.box-info.full.ng-scope'),
      'connect PayPal account button': this.by.css('a[ng-click="paypalOnboarding()"]'),
      'paypal connect button description': this.by.css('div[ng-show*="paypal_cn"] div[class*="help-block"]'),
      'verify key field': this.by.css('input[name="payment_config_data_verify_key"]'),
      'secret key field': this.by.css('input[name="payment_config_data_secret_key"]'),
    }

  }

  get samples() {

    return {

      'instruction': 'testing instruction',
      'Paypal email': 'info@starlinglabs.com',
      'API Username': 'info_api1.starlinglabs.com',
      'API Password': 'BU46SZJ75PL729P6',
      'API Signature': 'ATPYM9MtSuZGA7J30WnuQ5fjZ6E4AqY4snbI6Hic2dJfnSvI89E6GSDYv',
      'Channel Secret Key': 'f2a27609570a53800701579ae1777bb2',
      'Channel ID': '1442457132',
      'ezShip ID': 'tw@shoplineapp.com',
      'Merchant ID': '1131574',
      'API HashKey': 'D9jtIa5BBseX5SPq',
      'API HashIV': 'ItT3PzdBSmMzKYty',
      'Esun Merchant ID': '8080156268',
      'Esun HashKey': '8UWDDMOAVVYGZWA87NOLTJUQL9GQO021',
      'Taishin Merchant ID': '000812770001602',
      'Taishin TID': 'T0000000',
      'Asiapay ID': '88114537',
      'Braintree ID': '2sp8pw865w7d37s3',
      'Braintree Public Key': 'typqg78m5ztgm83j',
      'Braintree Private Key': '10d9c06c043c8590b30c6519226cc092',
      'OceanPayment Merchant ID': '140105',
      'Terminal Key': '14010527',
      'Private Key': '12345678',
      'Sinopac MID': '807249731928001',
      'Sinopac TID': '80010769',
      'Sinopac security ID': 'bf3f9bb538ca410ca1dec05ce305d341',
    }

  }

  get url() {

    return `${this.props.baseURL}/admin/${this.props.account.handle}/payments/new?locale=en`

  }

}

module.exports = PaymentCreatePage
