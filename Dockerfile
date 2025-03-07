FROM nginx:latest

# Set the working directory to Nginx's default html directory
WORKDIR /usr/share/nginx/html

# Remove the default Nginx index page
RUN rm -rf ./*

# Copy the custom index.html file into the container
COPY index.html .

# Expose port 80 to allow external connections
EXPOSE 80

# Start Nginx
CMD ["nginx", "-g", "daemon off;"]
