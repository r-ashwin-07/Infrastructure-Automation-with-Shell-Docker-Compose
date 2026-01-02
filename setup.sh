#!/bin/bash

echo "🚀 Starting Infrastructure Automation..."

# Check Docker
if ! command -v docker &> /dev/null
then
  echo "Docker not installed"
  exit 1
fi

# Start services
echo "🔧 Starting services using Docker Compose..."
docker-compose up -d --build

# Show status
echo "📊 Running containers:"
docker ps

echo "✅ Infrastructure setup completed!"
echo "Jenkins: http://localhost:8080"
echo "App: http://localhost"
