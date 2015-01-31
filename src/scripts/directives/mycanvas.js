'use strict';

/**
 * @ngdoc directive
 * @name annaApp.directive:mycanvas
 * @description
 * # mycanvas
 */
angular.module('app')
  .directive('mycanvas', function () {
    return {
      restrict: 'A'
      // link: function postLink(scope, element) {
      //   var ctx = element[0].getContext('2d');
      // }
    };
  });
