build:
    docker build -t iris-classifier .

run:
    docker run -p 5000:5000 iris-classifier

push:
    docker tag iris-classifier laibaaa/iris-classifier
    docker push laibaaa/iris-classifier
