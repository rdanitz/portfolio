'use strict';

/**
 * @ngdoc overview
 * @name app
 * @description
 * # app
 *
 * Main module of the application.
 */
var app = angular.module('app', ['ngRoute']);

app.config(function ($routeProvider) {
  $routeProvider
    .when('/',
      {
        templateUrl: 'views/main.html',
        controller: 'MainCtrl'
      })
    .when('/project',
      {
        templateUrl: 'views/project.html',
        controller: ''
      })
    .otherwise(
      {
        templateUrl: '404.html'
      });
});
