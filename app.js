const express = require('express');
const hbs = require('hbs');
const path = require('path');
const sql = require('./utils/sql');

const port = process.env.PORT || 3000;
const app = express();

app.use(express.static('public'));

app.set('view engine', 'hbs');
app.set('views', path.join(__dirname + "/views"));

app.get('/users', (req, res) => {
  res.render('home', {homemessage:"hey there", bio: "anything"});
})

app.get('/', (req,res) => {
  // get user data when we hit this route

  //try database connection
  //if connection fails, log error(s) to console and quit
  sql.getConnection((err, connection) => {

    if (err) {
      return console.log(err.message);
    }

    let query = "SELECT * FROM tbl_product";

    sql.query(query, (err, rows) => {
      //finnished with db now let someone else use it
      connection.release();

      if (err) { return console.log(err.message)}

      console.log(rows);

      res.render('home', rows[0]);
    })
  })
})

app.listen(port, () => {
console.log(`app is running on port ${port}`);
})