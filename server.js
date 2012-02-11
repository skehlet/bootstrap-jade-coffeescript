
var express = require('express'),
    app = express.createServer();

//app.use(express.logger());
//app.set('view engine', 'jade');
app.use(express.static(__dirname + '/public'));
app.use(require('connect-assets')());

app.get('/', function(req, res){
  //res.send('Hello World');
  res.render('index.jade', {
  	title: 'hi there'
  });
});

app.listen(3000);
console.log('Express server started on port %s', app.address().port);
