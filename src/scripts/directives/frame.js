'use strict';

/**
 * @ngdoc directive
 * @name app.directive:frame
 * @description
 * # frame
 */
angular.module('annaApp')
  .directive('frame', function () {
    return {
      restrict: 'A',
      template: '<div class="pure-u-1-3">foo<div class="frame"></div><div>',
      link: function postLink(scope, element, attrs) {
        attrs.align = 'center';
      }
    };
  });
