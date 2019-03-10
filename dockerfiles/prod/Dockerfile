# build environment
FROM node:11-alpine as builder
WORKDIR /usr/src/app
ENV PATH /usr/src/app/node_modules/.bin:$PATH
ADD sample-app-react/package.json /usr/src/app/package.json
RUN npm install
RUN npm install react-scripts

ADD sample-app-react /usr/src/app
RUN npm run build

# production environment
FROM nginx:alpine
COPY --from=builder /usr/src/app/build /usr/share/nginx/html
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]