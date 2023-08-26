# Use Node.js 16 as the base image
FROM node:16.14

# Install create-docusaurus
RUN npm install -g create-docusaurus@latest

# Set the working directory to /app
# WORKDIR /app
# RUN git clone https://github.com/facebook/docusaurus.git /app

RUN npx create-docusaurus@latest /app/docusaurus classic
WORKDIR /app/docusaurus

# Expose the default port
EXPOSE 3000
