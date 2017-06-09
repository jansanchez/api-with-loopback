var rp = require('request-promise');
var domain = 'http://192.168.2.6:3000/api/';
var json = {};

module.exports = function(app) {
  app.get('/api/synchronize', function(req, res) {
    var options = {
      uri: domain + 'companies',
      headers: {
        'User-Agent': 'Request-Promise'
      },
      json: true
    };

    json.status = 'SUCCESS';
    json.code = 200;
    json.message = 'synchronize executed successful';
    json.data = {};

    rp(options)
      .then(function (companies) {
        json.data.companies = companies;
      })
      .catch(function (err) {
        json.error = err;
      });

    var optionsForAreas = options;
    optionsForAreas.uri = domain + 'areas';

    rp(optionsForAreas)
      .then(function (areas) {
        json.data.areas = areas;
      })
      .catch(function (err) {
        json.error = err;
      });

    var optionsForLocations = options;
    optionsForLocations.uri = domain + 'locations';

    rp(optionsForLocations)
      .then(function (locations) {
        json.data.locations = locations;
      })
      .catch(function (err) {
        json.error = err;
      });

    setTimeout( function(){
      res.send(json);
    }, 500);

  });
}
