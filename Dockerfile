FROM node:lts-alpine

RUN npm install -g http-server

WORKDIR /app

COPY . .

RUN npm install -D tailwindcss
RUN npm install -D @tailwindcss/forms
RUN npx tailwindcss -i ./src/tailwind.css -o ./dist/tailwind.css

EXPOSE 8080
CMD [ "http-server", "dist" ]