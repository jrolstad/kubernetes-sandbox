FROM nginx:alpine

LABEL author="Josh Rolstad"

COPY ./app /usr/share/nginx/html

EXPOSE 80 443

ENTRYPOINT ["nginx"]
CMD ["-g", "daemon off;"]

# To build:
# docker build -f nginx.dockerfile --tag jrolstad/nginx:v1 .

# To run: 
# docker run -d -p 80:6379 --name nginx jrolstad/nginx:v1