FROM node:16-alpine
WORKDIR /app
COPY . .
RUN npm install
RUN npm run build
RUN whoami > whoami.txt
CMD tail -f /dev/null
