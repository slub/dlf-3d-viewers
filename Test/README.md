# DFG Viewer Docker

* [Prerequisites](#prerequisites)
* [Initial setup](#initial-setup)
* [Usage](#usage)

## Prerequisites

Install Docker Engine
<https://docs.docker.com/get-docker/>

Install Docker Compose
<https://docs.docker.com/compose/install/>

### Initial setup

Go to the directory where you've put `docker-compose.yml`.

#### 1. Environment file .env

Copy the environment file `.env.example` inside the directory and rename it to `.env`. 

(Optional on the development system) Adjust the configuration of the respective service to suit your needs. The variables are marked with the prefix of the service e.g. `APP_` for our TYPO3 application with DFG-Viewer.

#### 2. Download example models

Run `./download-examples-models.sh` script to download predefined models to `./models/examples`.

``sh ./download-examples-models.sh``

The script can be executed multiple times. However, the folder `./models/examples` is deleted and recreated. Custom models that are not stored in the `./models/examples` folder remain unaffected.

`./models` is mounted into the Docker container under `/var/www/html/dfg-viewer/public/fileadmin/models` and is accessible after starting the DFG Viewer at http://localhost/fileadmin/models.

#### 3. Download example models

Run `./../install.sh` script to download resources of integrated viewers.

``sh ./../install.sh``

The script can be executed multiple times. However, the suitable module folders are deleted and recreated. 

`./../` is mounted into the Docker container under `/var/www/html/dfg-viewer/public/fileadmin/dlf_3d_viewers`.

## Usage

Go to the directory where you've put `docker-compose.yml`.

### Download images and start all service containers

```bash
docker compose up -d
```

It may take about a minute for TYPO3 and the extension to be installed at the initial start.

(Optionally) Check if apache2 started.

```bash
docker logs dfg-viewer-integration-test-app-1
```

The DFG Viewer instance can then be accessed under `localhost`.

*When running `docker compose up` all services e.g. DFG-Viewer (APP) and database (DB) in our `docker-compose.yml` will be started and each as separate Docker container.*

### Stops all service containers

```bash
docker compose stop
```

### Stops and remove all service containers

```bash
docker compose down
```
