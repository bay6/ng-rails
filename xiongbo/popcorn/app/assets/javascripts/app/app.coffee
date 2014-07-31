ng = angular.module('popcornApp', ['ngRoute', 'popcornApp.controllers'])

ng.config ($routeProvider, $locationProvider) ->
  $routeProvider.when('/', 
    {
      controller: 'MoviesController',
      templateUrl: '/templates/movies.html'
    }
  ).otherwise(
    {
      redirectTo: '/'
    }
  )
  $locationProvider.html5Mode(true)

