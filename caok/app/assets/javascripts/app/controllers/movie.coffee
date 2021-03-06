'use strict'

angular.module('popcornApp.controllers')
  .controller 'MovieController', ['$scope', '$routeParams', "MoviesService", "$sce", ($scope, $routeParams, MoviesService, $sce) ->
    $scope.movies = MoviesService.movies()

    $scope.movie = _.find($scope.movies, (v) ->
      v.youtubeId == $routeParams.movie_id
    )

    $scope.movie.youtubeUrl = $sce.trustAsResourceUrl("http://www.youtube.com/embed/" + $scope.movie.youtubeId + "?rel=0")
  ]
