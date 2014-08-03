angular.module('popcornApp.controllers')
  .controller('MoviesController', ($scope, MoviesService) ->
    $scope.movies = MoviesService.movies()

    $scope.addFavorite = (movie) ->
      movie.isFavorite = true

    $scope.removeFavorite = (movie) ->
      movie.isFavorite = false
  )
