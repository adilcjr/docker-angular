# Build the Angular application
FROM node:22

WORKDIR /app

# Copy application files
COPY . .

# Install dependencies
RUN npm install

# Install angular client
RUN npm install -g @angular/cli@19

# Expose port 4200
EXPOSE 4200

# Start Nginx
CMD ["ng", "serve", "--host", "0.0.0.0"]