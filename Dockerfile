# Base
FROM node:14
WORKDIR /app

# Dependencies
COPY package*.json ./
RUN npm i

# Build
COPY . .
RUN npm run build

# Application
ENV PORT=8080
EXPOSE 8080
CMD ["node", "dist/main.js"]
