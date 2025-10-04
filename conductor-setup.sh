#!/bin/bash
set -e

echo "🚀 Setting up Hugo workspace..."

# Check if Hugo is installed
if ! command -v hugo &> /dev/null; then
    echo "❌ Error: Hugo is not installed"
    echo "Please install Hugo first: https://gohugo.io/installation/"
    exit 1
fi

echo "✓ Hugo is installed ($(hugo version))"

# Initialize and update git submodules (for hugo-bearblog theme)
echo "📦 Initializing git submodules..."
git submodule update --init --recursive

echo "✅ Workspace setup complete!"
echo "You can now run the Hugo dev server."
