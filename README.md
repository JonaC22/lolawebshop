#Lola web shop

A barebones PHP app that makes use of the [Silex](http://silex.sensiolabs.org/) web framework, which can easily be deployed to Heroku.

## Running Locally

Make sure you have PHP, Apache and Composer installed.  Also, install the [Heroku Toolbelt](https://toolbelt.heroku.com/).

```sh
$ git clone https://github.com/JonaC22/lolawebshop.git # or clone your own fork
$ cd lolawebshop
$ composer update
$ sudo sh auto/prepareScript.sh
```

Your app should now be running on [localhost:5000](http://localhost:5000/).

## Deploying to Heroku

```
$ heroku create
$ git push heroku master
$ heroku open
```

## Documentation

For more information about using PHP on Heroku, see these Dev Center articles:

- [PHP on Heroku](https://devcenter.heroku.com/categories/php)

## Troubleshooting

For troubles when installing, see the [wiki](https://github.com/JonaC22/lolawebshop/wiki)

## TODO
- Integrar con :
	- Laravel ![alt text][DONE]
	- Angular.js ![alt text][IN PROGRESS]
	- Postgresql ![alt text][IN PROGRESS]
		- Usar un ORM u objeto para encapsular las consultas a la BD ![alt text][IN PROGRESS]
	- Cloudinary ![alt text][DONE]
	- Facebook API
	- Twitter API
- Requerimientos funcionales
	- Productos
		- Mostrar fotos de productos ordenados por fecha de agregado ![alt text][DONE]	
			- Mostrar la imagen en grande haciendo click ![alt text][DONE]
			- Mostrar anterior/siguiente por flechas izquierda/derecha ![alt text][DONE]
		- Mostrar estado de stock ![alt text][DONE]
	- Consultas en la pagina, que deben ser enviadas a casilla de email
	- Geolocalizacion del local
	- Push-notifications
	- Likes y compartir en fotos
- Requerimientos no funcionales
	- Musica de fondo ![alt text][IN PROGRESS]
		- Agregar musica ![alt text][DONE]
		- 5 lista de temas a reproducir 
		- Pausar/reproducir ![alt text][DONE]
	- Informacion de direccion y complementaria

[IN PROGRESS]: http://henri.eisenbeis.free.fr/plus/WorkInProgress.png "In Progress"
[DONE]: http://www.amandasmithphotography.com/img/icon_done.gif "Done"
