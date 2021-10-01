let Page = require('../../framework/models/Page.js')

class FacebookPage extends Page {

  get elements() {

    return {
      'id': this.by.css('#facebook'),
      'email field': this.by.css('[name="email"]'),
      'password field': this.by.css('[name="pass"]'),
      'side menu button': this.by.css('[data-pagelet="LeftRail"] li > div > a'),
      'message button': this.by.css('[href*="https://www.facebook.com/messages"]'),
      'yes button': this.by.css('[value="Yes"]'),
      'login button': this.by.css('[name="login"]'),
      'facebook iframe': this.by.css('iframe[src*=facebook]'),
      'home button': this.by.css('[aria-label="Home"]'),

      //for confirm identity
      'button': this.by.css('button'),
      'security check checkbox': this.by.css('label.uiInputLabelInput'),
      'code field': this.by.css('input[type="text"]'),

      //connect fb fan page
      'confirm button': this.by.css('[name="__CONFIRM__"]'),
      'continue button': this.by.css('div[role="button"] span'),
      'page select all unchecked checkbox': this.by.css('._7j3o input'),
      'user navigation button': this.by.css('#userNavigationLabel'),
      'create page button': this.by.css('a[data-gt*="menu_create_page"]'),
      'start button': this.by.css('button[data-testid="BUSINESS_SUPERCATEGORYSelectButton"]'),
      'page name field': this.by.css('#BUSINESS_SUPERCATEGORYPageNameInput'),
      'page category field': this.by.css('span[data-testid="BUSINESS_SUPERCATEGORYCategoryTypeahead"] input[type="text"]'),
      'continue to create button': this.by.css('[data-testid="BUSINESS_SUPERCATEGORYFormContainer"] button._271k'),
      'skip button': this.by.css('a[role="button"][href*="skip_button_click"]'),
      'setting button': this.by.css('a[href$="pages_manager"]'),
      'remove page button': this.by.css('a[class^="fbSettingsListLink"][href$="remove_page"]'),
      'permanently delete button': this.by.css('a[href="#"][ajaxify*=delete_page]'),
      'delete button': this.by.css('input[type="button"][value="Delete"]'),
      'OK button': this.by.css('input[type="button"][value="OK"]'),
      'business address field': this.by.css('input[id="pageAddress"]'),
      'city field': this.by.css('input[type="text"][placeholder="City, State"]'),
      'ZIP code field': this.by.css('input[id="pageZipCode"]'),
      'manage pages toggle on': this.by.css('fieldset > div:nth-child(3) [aria-checked="true"]'),
      'manage pages toggle off': this.by.css('fieldset > div:nth-child(3) [aria-checked="false"]'),
      'manage and access pages toggle on': this.by.css('fieldset > div:nth-child(1) [aria-checked="true"]'),
      'manage and access pages toggle off': this.by.css('fieldset > div:nth-child(1) [aria-checked="false"]'),

      //message
      'row of messenger list': this.by.css('[aria-label="Conversation List"] [role="row"]'),
      'messenger latest message': this.by.css('[role="main"]  div:last-child > ._1t_p.clearfix'),
      'messenger latest several message': this.by.css('[role="main"]  div:last-child > ._1t_p.clearfix .direction_ltr'),
      'messenger latest several card button': this.by.css('[role="main"]  div:last-child > ._1t_p.clearfix [target="_blank"]'),
      'messenger latest several image message': this.by.css('[role="main"]  div:last-child > ._1t_p.clearfix .text_align_ltr._ylc img'),
      'messenger latest several card image message': this.by.css('[role="main"]  div:last-child > ._1t_p.clearfix [style*="background-image"]'),
      'messenger title': this.by.css('._673w'),
      'latest view button': this.by.css('#js_1 > div:last-child .direction_ltr a[target]:last-child > div'),
      'latest url link': this.by.css('#js_1 > div:last-child .direction_ltr a[target]:last-child'),
      'message field': this.by.css('div[aria-autocomplete="list"][role="combobox"]'),
      'image selector': this.by.css('div:not([style="display: none;"]) > form input[name="attachment[]"]'),
      'send button': this.by.css('[aria-label="Send"]'),
      'fan page search field': this.by.css('input[aria-label="Search Messenger"]'),
      'fan page search list': this.by.css('[data-testid*="RTCPickerDialogContactListItem"]:not([data-testid*="__special_search_entry__"]) [direction="left"]'),
    }

  }

  get samples() {

    return {
      'fb login email': this.props.loginAccount.fbLoginEmail,
      'fb login password': 'testuser040',
      'fb testuser email': 'testuser@shoplineapp.com',
      'fb testuser password': 'testuser040',
      'FB content': 'test FB message content',
      'address': '14F., No.44, Ln. 11, Guangfu N. Rd.',
      'phone': `${this.props.sample.genTwPhone()}`,
      'order number': `${this.getVariable('order info')}`.substr(52, 17).replace(/[^0-9]/g,''),
      'broadcast edit image': `${this.props.sample.sampleImagesPath()}/4.jpg`,
      'broadcast image': `${this.props.sample.sampleImagesPath()}/3.jpg`,
      'message photo': `${this.props.sample.sampleImagesPath()}/2.png`,
      'random number': `${this.props.sample.genPhone()}`,
      'handle': `${this.props.account.handle}`,
    }

  }

  get url() {

    return `https://www.facebook.com/`

  }


}

module.exports = FacebookPage