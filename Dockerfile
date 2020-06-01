FROM nginx:1.17.10

WORKDIR /app

COPY . .

COPY nginx.template.conf /etc/nginx

CMD ["/app/entrypoint.sh"]
