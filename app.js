const express = require('express');
const hbs = require('hbs');
const path = require('path');
const sql = require('./utils/sql');

const port = process.env.PORT || 3000;
const app = express();

app.use(express.static('public'));

app.set('view engine', 'hbs');
app.set('views', path.join(__dirname + "/views"));

app.get('/', (req, res) => {
  res.render('home', {homemessage:"hey there", bio: "anything"});
})

app.get('/users', (req,res) => {
  // get user data when we hit this rout

  //try database connection
  //if connection fails, log error(s) to console and quit
  sql.getConnection((err, connection) => {

    if (err) {
      return console.log(err.message);
    }

    let query = "SELECT * FROM tbl_card";

    sql.query(query, (err, rows) => {
      //finnished with db now let someone else use it
      connection.release();

      if (err) { return console.log(err.message)}

      console.log(rows);

      res.render('user', rows[1]);
    })
  })
})

app.listen(port, () => {
console.log(`app is running on port ${port}`);
})

// const http = require('http');

// const hostname = '127.0.0.1';//local host
// const port = process.env.PORT || 3000; //this is a node convention

// const server = http.createServer((req, res) => {
//   res.statusCode = 200;
//   res.setHeader('Content-Type', 'text/plain');
//   res.end('Hello World\n');
// });

// server.listen(port, hostname, () => {
//   console.log(`Server running at http://${hostname}:${port}/`);
// });