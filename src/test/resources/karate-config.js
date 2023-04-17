function fn() {

  var config = { // base config JSON

    urlServeur : 'https://reqres.in/api/users?page=1',
    var2  : 'valeur2',
    var3 : 'valeur3'
  };

  // don't waste time waiting for a connection or if servers don't respond within 5 seconds
  karate.configure('connectTimeout', 5000);
  karate.configure('readTimeout', 5000);
  karate.configure('ssl', { trustAll: true });
  return config;
}