'use strict';

/**
 * @ngdoc function
 * @name annaApp.controller:ProjectctrlCtrl
 * @description
 * # ProjectctrlCtrl
 * Controller of the annaApp
 */
angular.module('annaApp')
  .controller('ProjectCtrl', function ($scope, $routeParams) {
    // $scope.projectTitle = 'Some Title';
    $scope.projectTitle = $routeParams.project;
    $scope.projectDescr = 'Narwhal master cleanse letterpress, four dollar toast try-hard wolf authentic aesthetic 90\'s locavore single-origin coffee Pinterest. Bitters banjo deep v put a bird on it crucifix PBR&B. Hella disrupt cliche ennui before they sold out, lumbersexual forage tattooed PBR&B whatever single-origin coffee Vice. American Apparel bitters keytar, raw denim Schlitz mustache crucifix scenester post-ironic freegan health goth. Fap wayfarers salvia, cardigan Banksy squid taxidermy actually literally 8-bit church-key. Taxidermy beard actually fashion axe irony fixie sustainable, fingerstache VHS. Wayfarers photo booth cold-pressed chia you probably haven\'t heard of them mumblecore gentrify, roof party distillery authentic.';

    $scope.currentPic = 0;
    $scope.picCount = 3;

    $scope.prev = function () {
      console.log('prev');
    };
    
    $scope.next = function () {
      console.log('next');
    };
  });
