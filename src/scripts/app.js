'use strict';

/**
 * @ngdoc overview
 * @name app
 * @description
 * # app
 *
 * Main module of the application.
 */
var app = angular.module('annaApp', ['ngRoute', 'underscore']);

app.config(function ($routeProvider) {
  $routeProvider
    .when('/',
      {
        templateUrl: 'views/main.html',
        controller: 'MainCtrl'
      })
    .when('/projects/:project',
      {
        templateUrl: 'views/project.html',
        controller: 'ProjectCtrl'
      })
    .otherwise(
      {
        templateUrl: '404.html'
      });
});
