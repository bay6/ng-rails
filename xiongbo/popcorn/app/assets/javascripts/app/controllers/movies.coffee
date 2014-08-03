nm = angular.module('popcornApp.controllers')

nm.controller 'MoviesController', ($scope, MoviesService) ->

  $scope.addFavorite = (movie) ->
    movie.isFavorite = true

  $scope.removeFavorite = (movie) ->
    movie.isFavorite = false 

  $scope.movies = MoviesService.movies() 
