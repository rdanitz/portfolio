'use strict';

/**
 * @ngdoc service
 * @name annaApp.projects
 * @description
 * # projects
 * Service in the annaApp.
 */
angular.module('annaApp')
  .factory('Projects', function (_) {

    var projects = [
      {
        name: 'foo',
        description: 'foo descr',
        count: 3
      }
    ];

    return {
      projects: function () {
        return projects;
      },
      project: function () {
        return projects;
      }
    };
  });
