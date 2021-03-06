ng = angular.module('popcornApp', 
  ['ngRoute', 
   'popcornApp.controllers',
   'popcornApp.services'
  ])

ng.config ($routeProvider, $locationProvider) ->
  $routeProvider.when('/movies/:movie_id', 
    {
      controller: 'MovieController',
      templateUrl: '/templates/movie.html'
    }
  ).when('/', 
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

