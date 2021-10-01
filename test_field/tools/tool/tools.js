let express = require('express')

let app = express()
let path = process.cwd();

app.get('/readme.md', function(req, res) {

  res.sendFile(`${path}/README.md`);

});


app.get('/:file', function(req, res) {

  res.sendFile(`${path}/public/${req.params.file}`);

});


app.listen(1234)
