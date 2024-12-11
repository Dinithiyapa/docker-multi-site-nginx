FROM nginx:alpine

# Copy the website files for Site 1 (Cafe)
COPY cafe7 /usr/share/nginx/html/cafe7

# Copy the website files for Site 2 (Kyn)
COPY kyn /usr/share/nginx/html/kyn

# Copy the custom main Nginx configuration file
COPY nginx.conf /etc/nginx/nginx.conf

# Expose port 80
EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
