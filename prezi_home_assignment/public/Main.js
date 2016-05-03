var app = angular.module('homeAssignApp', []);

app.controller('homeAssignController', function($scope, $http) {
  $http({
    method: 'GET',
    url: '/getJSONData'
  }).then(function successCallback(response) {
    var data = response.data;
    _.each(data,function(record) {
      record.parsedDate = (new Date(record.createdAt)).getTime();
    })
    
    $scope.data = data;
  }, function errorCallback(response) {
      console && console.log('Huston..');
  });
});
