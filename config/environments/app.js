var express = require('express');
var bodyParser  = require('body-parser');
var path  = require('path');
var expressValidator = require('express-validator');
var app = express();
/*
var logger = function(req, res, next)
{
    console.log('Logging...');
    next();
}
app.use(logger);
*/
// View Engine
app.set('view engine','ejs');
app.set('views', path.join(__dirname,'views'));
// Body Parser Middleware
app.use(bodyParser.json());
app.use(bodyParser.urlencoded({extended: false}));

// Set Static path
app.use(express.static(path.join(__dirname,'public')));
/*
var person = {
    name: 'Liwen',
    age: 30
}
*/
var users = [
  {
    id: 1,
    first_name: 'John',
    last_name: 'Doe',
    email:  'johndoe@gmail.com',

  },
  {
    id: 2,
    first_name: 'John2',
    last_name: 'Doe2',
    email:  'johndoe2@gmail.com',

  },
  {
    id: 3,
    first_name: 'John3',
    last_name: 'Doe3',
    email:  'johndoe3@gmail.com',

  }
]

app.get('/',function(req, res){
  res.render('index',{
    title: 'Customer',
    users:  users
  });

});

app.post('/users/add',function(req,res){
    var newUser = {
      first_name: req.body.first_name,
      last_name:  req.body.last_name,
      email:      req.body.email
    }
    console.log(newUser);
});
app.listen(3000,function(){
  console.log('Server started on Port 3000...');
})
