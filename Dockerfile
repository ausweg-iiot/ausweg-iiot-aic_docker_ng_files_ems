# Use the stable, lightweight Nginx Alpine image
FROM nginx:stable-alpine

# Set the working directory to Nginx's html folder
WORKDIR /usr/share/nginx/html

# Remove the default Nginx welcome page
RUN rm -rf ./*

# Copy the compiled Angular files from the Jenkins 'dist' folder
# NOTE: If 'ng build' creates a subfolder (e.g., dist/my-app/*), 
# change the source below to 'dist/my-app/'.
COPY dist/ .

# Copy your custom Nginx configuration from the project folder
COPY nginx/nginx.conf /etc/nginx/conf.d/default.conf

# Expose port 80 for traffic
EXPOSE 80

# Start Nginx in the foreground
CMD ["nginx", "-g", "daemon off;"]
