const faker = require('faker')

module.exports = {
  genNewEmail: function() {
    let suffix = new Date().toISOString().replace(/[^0-9]/g,'')
    suffix = suffix.substring(suffix.length - 6, suffix.length)

    return `testuser+${suffix}@shoplineapp.com`
  },

  genNewQAEmail: function() {
    let suffix = new Date().toISOString().replace(/[^0-9]/g,'')
    suffix = suffix.substring(suffix.length - 6, suffix.length)

    return `shoplineqa+${suffix}@gmail.com`
  },

  genStoreName() {
    return `${new Date().toISOString().replace(/[^0-9]/g,'')}`
  },

  genPhone() {
    return `+886${Math.round(Math.random() * 100000000)}`
  },

  genTwPhone() {

    const date = new Date().toISOString().replace(/[^0-9]/g,'')
    return `09${date.substring(date.length - 8, date.length)}`

  },

  sampleImagesPath() {
    return `${process.cwd()}/data`
  },

  sampleFilesPath() {
    return `${process.cwd()}/data`
  },


  genYear(year = 0) {
    date = new Date()
    date.setYear(date.getFullYear() + year);
    return date.getFullYear()
  },

  genMonth(month = 0) {
    date = new Date()
    date.setMonth(date.getMonth() + month, 1)
    return (date.getMonth() < 9 ? '0' : '') + (date.getMonth() + 1)
  },

  genEnglishMonth(month = 0) {
    let en = 'January,February,March,April,May,June,July,August,September,October,November,December'.split(',')
    date = new Date()
    date.setMonth(date.getMonth()+month)
    return en[date.getMonth()]
  },

  genDate(day = 0, month = 0, split_by = '/') {
    date = new Date()
    const dayTime = date.getDate()
    date.setMonth(date.getMonth() + month)
    if (date.getDate() != dayTime) { date.setDate(0)}
    date.setDate(date.getDate() + day)
    return `${date.getFullYear() + split_by + (date.getMonth() < 9 ? '0' : '') + (date.getMonth() + 1) + split_by + (date.getDate() < 10 ? '0' : '') + date.getDate()}`
  },

  genOnlyDate(day = 0){
    date = new Date()
    date.setDate(date.getDate() + day);
    return date.getDate()
  },

  genDay(){
    day = new Date()
    days = ['Sunday', 'Monday', 'Tuesday', 'Wednesday', 'Thursday', 'Friday', 'Saturday']
    return days[day.getDay()]
  },

  getDaysInMonth (month = 0, year = 0) {
    return new Date(year, month, 0).getDate()
  },

  genHour(hour = 0) {
    date = new Date();
    date.setHours(date.getHours() + hour);
    hour = date.getHours() % 12 ? date.getHours() % 12 : 12
    return hour < 10 ? '0' + hour : hour
  },

  genPeriodHour(hour = 0) {
    date = new Date();
    date.setHours(date.getHours() + hour);
    periodHour = date.getHours() % 12 ? date.getHours() % 12 : 12
    return periodHour < 10 ? '0' + periodHour : periodHour
  },

  genTwelveHour(hour = 0) {
    date = new Date();
    if (hour != 0) {
      date.setHours(date.getHours() + hour);
    }
    return date.getHours()%12 < 10 ? '0' + date.getHours()%12 : date.getHours()
  },

  genTime() {
    date = new Date();
    return `${ (date.getHours() % 12 ? date.getHours() % 12 : 12) + ":" + (date.getMinutes() < 10 ? '0' : '') + date.getMinutes()}`
  },

  genTwelveHourPeriod(h=0) {
    date = new Date();
    date.setHours(date.getHours()+h)
    return `${ date.getHours() < 12 ? 'AM' : 'PM' }`
  },

  genName() {
    return faker.name.findName()
  },

  genShopURL(handle) {
    const shopURL = process.env.TEST_SHOP_URL
    return shopURL.replace('://', `://${handle}.`)
  },
}
