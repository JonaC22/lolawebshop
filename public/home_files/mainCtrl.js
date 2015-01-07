angular.module('lolaFront', [])
.controller('MainCtrl', [
'$scope', '$http',
function ($scope, $http) {

    //TODO: crear un servicio para search y pasarlo al controller como funcion
    
    //trae los productos almacenados 
    //en la base de datos ordenados por fecha_agregado descendiente
    $scope.url = '/productos';
    $http.get($scope.url).
        then(function(data, status, headers, config) {
            console.log(data.data);
            $scope.productos = data.data;
        });

    //TODO: pasarlo a http.get
    $scope.categorias = ['anillos', 'aros', 'billeteras', 'cintos', 
    'chalinas', 'clutchs', 'collares', 'monederos', 
    'portacelulares', 'pulseras', 'relojes', 'sombreros'];

}]);