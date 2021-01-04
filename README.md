# example_devops
Example using Github actions &amp; Okteto

En el Dockerfile está la información necesaria para construir la imagen docker.
La aplicación web consiste en un server web con flask, un index.html (templates) y un archivo de css (static).

En la carpeta deployment, el file para generar los resources dentro del cluster K8S. En este ejemplo, 2 instancias de la imagen publicada en DockerHub ( genero la imagen y la subo a dockerhub en cada push dentro del repo) y un servicio con el port 80 del tipo Load Balancer.

Dado que Okteto pone el deploy en estado "sleeping" si a las 24 horas no hay actividad, generé un action con schedule para redeployar a diario.

Enjoy!
