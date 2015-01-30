angular.module('lolaFront', [])
.controller('MainCtrl', [
'$scope', '$http',
function ($scope, $http) {

    //TODO: crear un servicio para search y pasarlo al controller como funcion
    
    //trae los productos almacenados 
    //en la base de datos ordenados por fecha_agregado descendiente
    $http.get('/productos').
        then(function(data, status, headers, config) {
            console.log(data.data);
            $scope.productos = data.data;
        });

    $scope.categorias = [];

    function transformDataToArrayCategorias(element, index, array){
       // $scope.categorias.push(element.titulo);
    }

    //TODO: solucionar issue de filtro de categorias cuando se agregan de forma asincronica
    //trae las categorias almacenadas
    $http.get('/categorias').
        then(function(data, status, headers, config) {
            data.data.forEach(transformDataToArrayCategorias);
            console.log($scope.categorias);
        });
    
    $scope.categorias = ['anillos', 'aros', 'billeteras', 'cintos', 
    'chalinas', 'clutchs', 'collares', 'monederos', 
    'portacelulares', 'pulseras', 'relojes', 'sombreros'];

}]);