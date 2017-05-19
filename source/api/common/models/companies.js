'use strict';

module.exports = function(Companies) {

  // SELECT t1.*
  // FROM companies AS t1
  // INNER JOIN favorite_companies AS t2 ON t2.company_id = t1.id
  // WHERE t2.postulant_id = 1000

  Companies.favorites = function (postulant_id, cb) {
    var ds = Companies.dataSource;
    var sql = "SELECT t1.*, t2.id FROM companies AS t1 INNER JOIN favorite_companies AS t2 ON t2.company_id = t1.id WHERE t2.postulant_id = " + postulant_id + " ORDER BY t2.id DESC";

    ds.connector.execute(sql, [], function (err, companies) {
      if (err) console.error(err);
        cb(err, companies);
    });
  };

  Companies.remoteMethod(
    'favorites',
    {
      http: {path: '/:postulant_id/favorites', verb: 'get'},
      description: 'Get list of my favorite companies per postulant',
      accepts: { arg: 'postulant_id', type: 'number' },
      returns: { arg: 'data', type: ['Companies'] }
    }
  );

};
