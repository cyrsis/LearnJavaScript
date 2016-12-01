(function () {
   'use strict';

   // Create the module and define its dependencies.
   var app = angular.module('app', [
      // Angular modules
      'ngRoute',           // routing

      // Custom modules

      // 3rd Party Modules
      'kendo.directives'
   ]);

   // config always runs before the services are ready.
   // basically the first thing our module does.
   app.config(['$routeProvider', function($routeProvider) {
      $routeProvider
         .when('/', { templateUrl: 'app/welcome/welcome.html' })
         .when('/dataSource', {templateUrl: 'app/dataSource/dataSource.html'})
         .when('/dataVizualization', {templateUrl: 'app/dataVizualization/dataViz.html'})
         .when('/globalEvents', {templateUrl: 'app/globalEvents/globalEvents.html'})
         .when('/modal', {templateUrl: 'app/modal/modalWindow.html'})
         .when('/order', {templateUrl: 'app/order/order.html'})
         .when('/welcome2', { templateUrl: 'app/welcome/welcome2.html' })
         .when('/welcome3', { templateUrl: 'app/welcome/Welcome3.html' })
         .otherwise({ redirectTo: '/' }); // go to the welcome page
   }
   ]);

})();