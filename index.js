angular
    .module('MyApp', ['ngMaterial', 'ngMessages', 'material.svgAssetsCache'])
    .controller('SelectHeaderController', function($scope, $element) {
      $scope.organnames = ['Organ 1' ,'Organ 2' ,'Organ 3' ,'Organ 4' ,'Organ 5', 'Organ 6', 'Organ 7', 'Organ 8'];
      $scope.searchTerm;
      $scope.clearSearchTerm = function() {
        $scope.searchTerm = '';
      };
      // The md-select directive eats keydown events for some quick select
      // logic. Since we have a search input here, we don't need that logic.
      $element.find('input').on('keydown', function(ev) {
          ev.stopPropagation();
      });
    });
	
	
	var app = angular.module('StarterApp', ['ngMaterial']);

app.controller('AppCtrl', ['$scope', function($scope) {
  
   var listOfNumbers = [ 
    { value: -1, label: "All" }, 
    { value: 2, label: "Two" },
    { value: 10, label: "Ten" }, 
    { value: 25, label: "Twentyfive" }, 
    { value: 100, label: "One-hundred" } ];
  
  $scope.categories = listOfNumbers;
  $scope.current = {value: 10, label: "Ten" }
 
  // 
  $scope.clearValue = function() {
    //$scope.current = undefined;
    //$scope.categories = [ {value: -1, label: "All" } ];
    $scope.current = { value: -1, label: "All" };
  };
  
  $scope.resetValue = function() {
    //$scope.current = undefined;
    $scope.categories = listOfNumbers;
    $scope.current = { value: 25, label: "Twentyfive" };
  };
  
}]);

	