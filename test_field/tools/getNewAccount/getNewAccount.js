let NewAccountExtractor = require('../../models/NewAccountExtractor.js')

let extractor= new NewAccountExtractor(process.env.IMPORT_FILE, process.env.EXPORT_FILE)
extractor.run()
