## Meli Challenge

Pasos que realice para hacer la prueba:

- Hice una pequeña investigación mas a profundidad de como funciona la app: https://github.com/alesanabria/MeliChallenge/wiki/Mobile-research
- Luego Analice los endpoints: https://github.com/alesanabria/MeliChallenge/wiki/Endpoints esto me ayudo a construir la librería de network.
- Apartir de esto empece a crear las librerías acorde a lo que necesitaba.
- Luego los repositories, View models, models.
- Luego las vistas, donde empece con el search, busquedas recientes, lista de resultados, de esto ya pase a la vista de detalle.
- La vista de detalle las separe según las sub-secciones que tiene y de las que encontre endpoints para traer la información extra.

## Arquitectura


Use MVVM por el orden que me permite llevar por secciónes y mantener el estado centralizado en cada vista.

El proyecto lo separe por:
- Librerías
- Servicios
- Secciones
- Extensiones

### Librerías

- `Observable`: Ayuda a responder en los cambios de un valor a todos sus observers.
- `Logger`: Ayuda a loggear mensajes y errores en consola, si usara un servició como Sentry, enviara desde hay esos reportes de error.
- `StringHeight`: Ayuda a obtener el height de un texto.

### Servicios

- `Network`: Llamadas de red a endpoints.
- `Cache`: Almacenamiento local. (se uso para favoritos y busquedas recientes).
- 

## Screenshots

### Buscador

![simulator_screenshot_12BF41BA-0893-40EE-8440-D97A8B8410BB](https://user-images.githubusercontent.com/1097809/137012089-71921e6f-dbb8-497e-85ea-0feef8429c34.png)
![simulator_screenshot_E25C480A-73EB-4492-BA36-CB5A5BC75D88](https://user-images.githubusercontent.com/1097809/137012114-8a3d5129-993d-499d-a40c-33cc897a4de7.png)

![simulator_screenshot_9DF4C707-7658-4686-9E4E-E33F42456169](https://user-images.githubusercontent.com/1097809/137011569-d82a13e6-6daf-4fbd-ad94-b4dd10608011.png)

### Item

![simulator_screenshot_ED617D82-16EB-4E77-9715-4552FA9F912C](https://user-images.githubusercontent.com/1097809/137012147-28834f36-cb6f-4ec8-ab15-b1ac0f787a58.png)
![simulator_screenshot_9EDC089E-BA3A-4E9C-B19A-7D6B3B2B2DBB](https://user-images.githubusercontent.com/1097809/137012184-79d43f58-4fd7-40de-b32a-f53b5927212f.png)
![simulator_screenshot_5D753EAD-9679-4A6A-BB33-97D9B5B017AE](https://user-images.githubusercontent.com/1097809/137012199-428b313d-30d0-45b3-9253-21ee44e47cb7.png)
