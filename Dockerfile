# Use a lightweight Nginx image
FROM nginx:alpine

# Set working dir inside the container
WORKDIR /usr/share/nginx/html

# Remove default Nginx static files
RUN rm -rf ./*

# Copy your app (index.html, CSS, JS, assets) into Nginx html dir
COPY . .

# Expose container port
EXPOSE 80
