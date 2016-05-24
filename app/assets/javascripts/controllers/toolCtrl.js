stackApp.controller('ToolController', ['$scope', '$http', function($scope, $http) {
	$http.get('/tools')
		.then(function(res) {
			$scope.tools = JSON.parse(res.data[0]);
		});
}]);