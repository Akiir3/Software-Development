var config = {
database: {
host:       'localhost',    // database host
user:       'root',         // your database username
password:   'Boulder17',             // your database password
port:       3306,           // default MySQL port
db:         'lab6_1'          // your database name
},
server: {
host: '127.0.0.1',
port: '4000'
}
}
module.exports = config   //Expose the current config as a module