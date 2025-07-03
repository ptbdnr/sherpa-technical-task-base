#!/bin/bash

# Frontend Setup Script 

set -e  # Exit on any error

echo "🚀 Setting up RAG Frontend..."

# Create .env file if it doesn't exist
if [ ! -f .env ]; then
    echo "⚙️  Creating .env file..."
    cat > .env << 'EOF'
# Backend Server URL
VITE_BACKEND_BASE_URL=http://localhost:8000
EOF
    echo "✅ .env file created!"
    echo "📝 Edit .env file to configure the backedn server"
else
    echo "ℹ️  .env file already exists, skipping creation"
fi
