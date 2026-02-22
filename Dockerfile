# Use official Nginx image
FROM nginx:alpine

# Clean default nginx contents
RUN rm -rf /usr/share/nginx/html/*

# Copy build outputs 
# This assumes your Jenkins script outputs to a folder named 'dist'
COPY ./dist/ /usr/share/nginx/html/

# Copy custom Nginx config
# Note: Ensure the file in your repo is named 'default.conf' inside the 'nginx' folder
COPY ./nginx/default.conf /etc/nginx/conf.d/default.conf

# Expose port 80
EXPOSE 80

# Run Nginx in the foreground
CMD ["nginx", "-g", "daemon off;"]
