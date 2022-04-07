# tsp_container
This Repository explains the build of a single docker file including tsp_frontend and tsp_backend.

## Build Docker Image
The [tsp_backend](https://github.com/cedimo/tsp_backend) and the [tsp_frontend](https://github.com/cedimo/tsp_frontend)
must be cloned into the root folder.
The folder structure has to look like:

```
tsp_container
│   README.md
│   start.sh    
│
└───tsp_backend
│   │   app
│   │   ...
│   
└───tsp_frontend
    │   public
    │   src
    │   ...
```

Then run the following command:
``` docker build -t IMAGE_TAG .```

## Run Container from Image
```docker run -it -p 80:80 -p 8000:8000 -d -e  ORS_KEY='KEY' --name tsp IMAGE_TAG```
