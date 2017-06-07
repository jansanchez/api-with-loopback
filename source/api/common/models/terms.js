'use strict';

module.exports = function(Terms) {

  Terms.query = function (term, cb) {

    var ds = Terms.dataSource;
    var sql = "SELECT t1.* FROM terms AS t1 WHERE t1.keyword LIKE '%" + term + "%' ORDER BY t1.count DESC";

    ds.connector.execute(sql, [], function (err, terms) {
      if (err) console.error(err);
        cb(err, terms);
    });
  };


  Terms.remoteMethod(
    'query',
    {
      http: {path: '/autocomplete/:term', verb: 'get'},
      description: 'Get list of search terms',
      accepts: { arg: 'term', type: 'string' },
      returns: { arg: 'data', type: ['Terms'] }
    }
  );

};
