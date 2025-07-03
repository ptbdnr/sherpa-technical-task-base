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

# Check if npm is installed
if command -v npm &> /dev/null; then
    echo "⚡ NPM detected!"

    echo "🔄 Running npm install..."
    npm install
    echo "✅ npm install complete!"
else
    echo "❌ NPM is not installed. Please install Node.js and NPM to proceed."
    exit 1
fi

echo "🚀 RAG Frontend setup complete!"
echo "👉 You can now run the frontend using 'npm run dev'."
# End of setup script