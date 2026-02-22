# Use official Nginx image
FROM nginx:alpine

# Clean default nginx contents
RUN rm -rf /usr/share/nginx/html/*

# Copy build outputs from the Jenkins 'dist' folder
COPY ./dist/ /usr/share/nginx/html/

# Copy custom Nginx config from your nginx folder
COPY ./nginx/default.conf /etc/nginx/conf.d/default.conf

# Expose port 80
EXPOSE 80

# Run Nginx in the foreground
CMD ["nginx", "-g", "daemon off;"]
