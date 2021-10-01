const reporter = require('cucumber-html-reporter');
const fs = require('fs');

class Reporter {
  constructor({ reportFile, opts }) {
    this.reportFile = reportFile
    this.opts = opts
  }

  createDirectory() {
    const dir = `./reports/tmp-${this.reportFile}`

    if (fs.existsSync(dir)) { return }

    fs.mkdirSync(dir)
  }

  generate() {
    const options = this.opts
    const tmpPath = `./reports/tmp-${this.reportFile}`

    //handle empty parse issue
    fs.readdirSync(tmpPath).forEach((file, index) => {
     const stats = fs.statSync(`${tmpPath}/${file}`)
     if(stats.size == 0) {return fs.unlinkSync(`${tmpPath}/${file}`)}
    });

    reporter.generate(options)

    const deleteFolderRecursive = function deleteFolderRecursive(path) {
      if (!fs.existsSync(path)) { return }
      fs.readdirSync(path).forEach((file, index) => {
        const curPath = `${path}/${file}`;
        if (fs.lstatSync(curPath).isDirectory()) { // recurse
          deleteFolderRecursive(curPath);
        } else { // delete file
          fs.unlinkSync(curPath);
        }
      });
      fs.rmdirSync(path);
    };

    deleteFolderRecursive(`./reports/tmp-${this.reportFile}`)
  }
}

module.exports = Reporter
