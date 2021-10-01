let Page = require('../../framework/models/Page.js')

class BlogPostsPage extends Page {

  get elements() {

    return {
      'id': this.by.css('body[ng-controller="MainController"]'),
      'activate button': this.by.css('[ng-click="createBlog()"]'),
      'blog list table': this.by.css('.box-info.full'),
      'row of publish button': this.by.css('button.btn.btn-primary.btn-sm.ladda-button.ng-binding'),
      'row of unpublish button': this.by.css('button.btn.btn-default.btn-sm.ladda-button.ng-binding'),
      'add posts button': this.by.css('.box-header .btn'),
      'row of blog list': this.by.css('.table tr[ng-repeat="post in posts"]'),
      'delete button': this.by.css('button[ng-click="deletePost(post)"]'),
    }

  }

  get url() {

    return `${this.props.baseURL}/admin/${this.props.account.handle}/blog/posts?locale=en`

  }

}

module.exports = BlogPostsPage
