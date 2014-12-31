angular.module('lolaFront', [])
.controller('MainCtrl', [
'$scope',
function ($scope) {
    $scope.clases = ['collares', 'clutchs', 'sombreros', 'chalinas', 'monederos', 'marcas', 'aros', 'portacelulares', 'cintos', 'billeteras'];
    $scope.items = [
    {clase: 'collares', marca: 'Collar X-T', imagen: 'collar.jpg'},
    {clase: 'collares', marca: 'Collar Y-T', imagen: 'collar2.jpg'},
    {clase: 'clutchs', marca: 'Clutch Y-T', imagen: 'Clutchs.jpg'},
    {clase: 'sombreros', marca: 'Clutchs Y-T', imagen: 'sombrero.jpg'},
    {clase: 'chalinas', marca: 'Chalinas varias', imagen: 'chalinas.jpg'},
    {clase: 'monederos', marca: 'Monederos de flores', imagen: 'monederos.jpg'},
    {clase: 'aros', marca: 'Aros', imagen: 'aros.jpg'},
    {clase: 'portacelulares', marca: 'Portacelulares', imagen: 'portacelular.jpg'},
    {clase: 'cintos', marca: 'Cintos dorados', imagen: 'cintos.jpg'},
    {clase: 'billeteras', marca: 'Billeteras de cuero', imagen: 'billetera.jpg'}
    ];
/*
    $scope.filtroClases = function (item) {
        return Object.keys($scope.search || {}).every(function (key) {
            var value = $scope.search[key]; 
            return (value === undefined) || 
            (value === null) ||
            value === item[key];
        });
    };
    */
}]);