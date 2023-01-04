FROM node:lts-slim
EXPOSE 500
COPY ./server .
RUN  mkdir web
COPY build/web web
RUN npm install 

CMD [ "node","app.js" ]
