# frontend build stage
FROM node:lts-alpine as frontend-build-stage
WORKDIR /vue-app
COPY ./tsp_frontend/package*.json ./
RUN npm install
COPY ./tsp_frontend .
RUN npm run build


# production stage
FROM python:3.9
WORKDIR /code
COPY ./tsp_backend/requirements.txt /code/requirements.txt
RUN pip install --no-cache-dir --upgrade -r /code/requirements.txt
COPY ./tsp_backend/app /code/app
EXPOSE 8000

RUN apt update
RUN apt install nginx -y
COPY --from=frontend-build-stage /vue-app/dist /var/www/html
EXPOSE 80

# start frontend & backend via shell script
COPY start.sh start.sh
CMD sh ./start.sh
