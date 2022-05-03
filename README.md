# TSP Container
This repository explains the build of a single docker file containing [TSP Frontend](https://github.com/cedimo/tsp_frontend) and [TSP Backend](https://github.com/cedimo/tsp_backend).

## Build Docker Image
Both [TSP Frontend](https://github.com/cedimo/tsp_frontend) and [TSP Backend](https://github.com/cedimo/tsp_backend) repositories must be cloned into the root folder.
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

Build the image with the following command:

    docker build -t <IMAGE_TAG> .

## Run Container from Image

    docker run -it -p 80:80 -p 8000:8000 -d -e  ORS_KEY='<KEY>' --name tsp <IMAGE_TAG>
