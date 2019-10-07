const config = require('../config');
const mysql = require('mysql');

var connect = mysql.createPool({
    connectionLimit  : 10,
    queuelimit       : 100,
    waitForConnection : true,
    host             : config.host,
    port             : config.port,
    user             : config.unamep,
    password         : config.upass,
    database         : config.db
});

module.exports = connect;