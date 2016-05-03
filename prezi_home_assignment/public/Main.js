var app = angular.module('homeAssignApp', []);

app.controller('homeAssignController', function($scope, $http) {
  $http({
    method: 'GET',
    url: '/getJSONData'
  }).then(function successCallback(response) {
    $scope.data = response.data;
  }, function errorCallback(response) {
      console && console.log('Huston..');
  });
});
