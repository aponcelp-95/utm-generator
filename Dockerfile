# Static single-file app — served by nginx.
FROM nginx:1.27-alpine

# Serve our app as the site root.
COPY index.html /usr/share/nginx/html/index.html

# DeployBay routes to the container on port 80.
EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
