#!/bin/bash
set -e

# Check if .env files exist
if [ ! -f ./backend/.env ]; then
  echo "Error: backend/.env file not found."
  echo "Please create this file using .env.example as a template."
  exit 1
fi

echo "Building backend JAR file with Java 17..."
cd backend
./mvnw clean package -DskipTests
cd ..

echo "Building and starting Docker containers..."
docker compose down
docker compose up --build 