const {
  TEST_REPORT_NAME,
  TEST_TAG,
  TEST_BASE_URL,
  TEST_SHOP_URL,
  TEST_API_URL,
  TEST_ONE_URL,
  TEST_SHOPLYTICS_URL,
  TEST_ACCOUNT_UNMARK,
} = process.env

module.exports = {
  baseURL: TEST_BASE_URL,
  shopURL: TEST_SHOP_URL,
  apiURL: TEST_API_URL,
  oneURL: TEST_ONE_URL,
  shoplyticsURL: TEST_SHOPLYTICS_URL,
  accountUnmarkStatus: TEST_ACCOUNT_UNMARK,

  reportFile: `${TEST_REPORT_NAME}${TEST_TAG ? `-${TEST_TAG}` : ''}`

}

