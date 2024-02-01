Build Docker Image
```$ docker build -t flask-api:1.0 .```

Run Docker Image
```$ docker run --name flask-api -d -p 5000:5000 flask-api:1.0```

Check Docker container status
``$ docker ps``