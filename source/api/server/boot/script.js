var loopback = require('loopback');

var memory = loopback.createDataSource({
  connector: loopback.Memory,
  file: "mydata.json"
});
