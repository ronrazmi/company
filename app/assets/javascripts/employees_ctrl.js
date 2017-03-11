(function() {
  "use strict";

  angular.module("app").controller("employeesCtrl", function($scope, $http){

  	$scope.setup = function(){
  		console.log('hello');
  		$http.get('/api/v1/employees').then(function(response){
  			console.log(response.data);
  			$scope.employees = response.data
  		});
  			 		
  		};

  		$scope.addEmployee  = function(new_first_name, new_last_name, new_title, new_university){
  			var newEmployee = {
  				first_name: new_first_name,
  				last_name: new_last_name,
  				title: new_title,
  				university: new_university
  			};
  			$http.post('/api/v1/employees', newEmployee).then(function(response){
  				var newItem = response.data
  				$scope.employees.push(newItem);
  				$scope.first_name = "",
  				$scope.last_name = "",
  				$scope.title = "",
  				$scope.university = "";
  				},
  				function(responseError){
  						$scope.errors = responseError.data.errors
  					console.log(responseError.data.errors)
  				})

  		}

  		$scope.getOrderAttribute = function(inputAttribute){
  			if (inputAttribute === $scope.inputAttributeOrder) {$scope.reverese = !$scope.reverse;
  				if (inputAttribute ==='name'){
  				$scope.nameSorter = 'v';
  			} else {$scope.nameSorter = '^';
  		}
  			} else {
  				$scope.reverse = false;
  				$scope.sorter = '^';
  			}
  			$scope.inputAttributeOrder = inputAttribute;
  		}
  	});
}());

