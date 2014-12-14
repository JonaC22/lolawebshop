var app = angular.module('myApp', []);
app.controller('myCtrl', function ($scope) {
    $scope.clases = ['collares', 'clutchs', 'sombreros', 'chalinas', 'monederos', 'marcas', 'aros', 'portacelulares', 'cintos', 'billeteras'];
    $scope.items = [
    {titulo: 'Collares', clase: 'collares', marca: 'Collar X-T', imagen: 'collar.jpg'},
    {titulo: 'Collares', clase: 'collares', marca: 'Collar Y-T', imagen: 'collar2.jpg'},
    {titulo: 'Clutchs', clase: 'clutchs', marca: 'Clutch Y-T', imagen: 'Clutchs.jpg'},
    {titulo: 'Sombreros', clase: 'sombreros', marca: 'Clutchs Y-T', imagen: 'sombrero.jpg'},
    {titulo: 'Chalinas', clase: 'chalinas', marca: 'Chalinas varias', imagen: 'chalinas.jpg'},
    {titulo: 'Monederos', clase: 'monederos', marca: 'Monederos de flores', imagen: 'monederos.jpg'},
    {titulo: 'Aros', clase: 'aros', marca: 'Aros', imagen: 'aros.jpg'},
    {titulo: 'Portacelulares', clase: 'portacelulares', marca: 'Portacelulares', imagen: 'portacelular.jpg'},
    {titulo: 'Cintos', clase: 'cintos', marca: 'Cintos dorados', imagen: 'cintos.jpg'},
    {titulo: 'Billeteras', clase: 'billeteras', marca: 'Billeteras de cuero', imagen: 'billetera.jpg'}
    ];

    $scope.filtroClases = function (item) {
        return Object.keys($scope.search || {}).every(function (key) {
            var value = $scope.search[key]; 
            return (value === undefined) || 
            (value === null) ||
            value === item[key];
        });
    };
});