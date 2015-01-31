'use strict';

/**
 * @ngdoc function
 * @name app.controller:MainCtrl
 * @description
 * # MainCtrl
 * Controller of the app
 */
angular.module('annaApp')
  .controller('MainCtrl', function ($scope, Projects) {
    $scope.projects = Projects;
    $scope.frames = [];

    for (var i=0; i<=17;i++) {
      $scope.frames.push({});
    }

    $scope.firstFrames = function () {
      return $scope.frames.slice(0,7);
    };
    
    $scope.lastFrames = function () {
      return $scope.frames.slice(7);
    };
  });
