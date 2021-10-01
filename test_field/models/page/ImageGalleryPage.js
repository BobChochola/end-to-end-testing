let Page = require('../../framework/models/Page.js')

class ImageGalleryPage extends Page {

  get elements() {

    return {
      'id': this.by.css('[ng-show="!state.loadingItems"]'),
      'language dropdown': this.by.css('#current-language-name'),
      'language dropdown option': this.by.css('[aria-labelledby="menu-languages"] a'),
      'image limit': this.by.css('[style="margin-bottom:20px"] .ng-binding'),
      'description message': this.by.css('.box-info.ng-binding'),
      'box header': this.by.css('.box-header h2.ng-binding'),
      'empty message': this.by.css('.empty-message'),
      'image list': this.by.css('[ng-show="imageList.images"]'),
      'image table title': this.by.css('[ng-show="imageList.images"] .table'),
      'upload image button': this.by.css('[ng-click="openFile(\'main_media\')"]'),
      'image selector': this.by.css('input[ng-file-select="checkingUploadLimit($files)"]'),
      'row of image': this.by.css('[ng-repeat="image in imageList.images"] img'),
      'row of image name': this.by.css('[ng-click="printimage()"]'),
      'row of upload time': this.by.css('.word-break-wrap'),
      'copy url button': this.by.css('button[ng-click="copyImageUrlToClipboard(image)"]'),
      'delete button': this.by.css('button[ng-click="deleteRecord(image)"]'),
      'delete popover': this.by.css('.modal-content'),
      'ensure checkbox': this.by.css('[ng-model="recheckboxDialog"]'),
      'ok button': this.by.css('[ng-click="confirm()"]:not(.ng-hide)'),
      'alert': this.by.css('.alert'),
      'error message': this.by.css('[ng-repeat="err in imageUpload.errorList"]'),
    }

  }

  get samples() {

    return {
      'png image': `${this.props.sample.sampleImagesPath()}/2.png`,
      'jpg image': `${this.props.sample.sampleImagesPath()}/3.jpg`,
      'large image': `${this.props.sample.sampleImagesPath()}/15mb.jpg`,
      'product photo': `${this.props.sample.sampleImagesPath()}/1.png`,
      'dateNow': `${this.props.sample.genDate().toString().replace(/[^0-9]/g, '-')}`,
      'hourNow': this.props.sample.genPeriodHour().toString(),
      'meridianNow': this.props.sample.genTwelveHourPeriod(0).toString(),
    }

  }

  get url() {
  
    return `${this.props.baseURL}/admin/${this.props.account.handle}/image_gallery?locale=en`
  
  }
}

module.exports = ImageGalleryPage 