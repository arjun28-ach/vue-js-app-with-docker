# my-app

## Project setup
```
npm install
```

### Compiles and hot-reloads for development
```
npm run serve
```

### Compiles and minifies for production
```
npm run build
```

### Lints and fixes files
```
npm run lint
```

### Customize configuration
See [Configuration Reference](https://cli.vuejs.org/config/).


## Run the app using following command
```
docker run -p 8080:80 my-app
```
You can access the Vue.js application by opening a web browser and navigating to http://localhost:8080. This should display the Vue.js application running inside the Docker container.

## Here is an example of architecture diagram to Setup a vue.js application and deploy using docker on top of kubernetes.

                                     +-----------------+
                                     |  Kubernetes     |
                                     |  Master Node    |
                                     +-----------------+
                                               |
                                               |
                                               |
                             +-----------------+-----------------+
                             |                 |                 |
                   +-----------------+  +-----------------+  +-----------------+
                   |   Kubernetes    |  |   Kubernetes    |  |   Kubernetes    |
                   |   Worker Node   |  |   Worker Node   |  |   Worker Node   |
                   +-----------------+  +-----------------+  +-----------------+
                             |                 |                 |
                             |                 |                 |
                             |                 |                 |
                   +-----------------+  +-----------------+  +-----------------+
                   | Docker Engine   |  | Docker Engine   |  | Docker Engine   |
                   |     (Pod 1)    |  |     (Pod 2)    |  |     (Pod 3)    |
                   +-----------------+  +-----------------+  +-----------------+
                             |                 |                 |
                             |                 |                 |
                             |                 |                 |
                   +-----------------+  +-----------------+  +-----------------+
                   | Vue.js          |  | Vue.js          |  | Vue.js          |
                   | Application     |  | Application     |  | Application     |
                   |  (Container 1)  |  |   (Container 2) |  |    (Container 3)|
                   +-----------------+  +-----------------+  +-----------------+


