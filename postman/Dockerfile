FROM node:alpine
RUN npm install -g newman newman-reporter-htmlextra
WORKDIR /etc/newman

CMD sleep 10s \
    && newman run shipping-service.postman_collection.json -k \
    -r cli,htmlextra \
    --reporter-htmlextra-export="reports/shipping-service-api-tests.html"