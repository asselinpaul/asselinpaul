#!/bin/bash
set -e

echo "🚀 Setting up Hugo workspace..."

# Install the same pinned Hugo release used by GitHub Pages.
./scripts/hugo version

# Initialize and update git submodules (for hugo-bearblog theme)
echo "📦 Initializing git submodules..."
git submodule update --init --recursive

echo "✅ Workspace setup complete!"
echo "You can now run the Hugo dev server."
