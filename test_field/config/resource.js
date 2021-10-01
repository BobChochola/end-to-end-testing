const path = require('path')
const resourceDir = path.resolve(process.cwd(), './resources')

const {
  RESOURCE_ACCOUNT_FILE
} = process.env

module.exports = {
  account: {
    label: 'account',
    file: path.resolve(resourceDir, `./${RESOURCE_ACCOUNT_FILE}`)
  }
}
