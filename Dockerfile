FROM node:10.16.0

EXPOSE 3001 8082
COPY ["./package.json", "./package-lock.json", ".eslintrc.js", ".eslintignore", "/app/"]
WORKDIR /app
RUN npm i --quiet
COPY ./src /app/src

CMD npm start
