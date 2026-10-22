#!/bin/bash
set -e

# Version is sourced from the BOT_VERSION env var if set, otherwise defaults to 3.4.5.
# Keeps startup banner in sync with settings.Config.VERSION.
BOT_VERSION="${BOT_VERSION:-3.4.5}"

echo "============================================================"
echo "🚀 AI TRADING BOT v${BOT_VERSION}"
echo "📊 Super TDI + Super Bollinger Bands Strategy"
echo "============================================================"
echo "Environment: ${ENVIRONMENT:-production}"
echo "Run Mode: ${RUN_MODE:-PRODUCTION}"
echo "============================================================"

# Create directories
mkdir -p /app/logs /app/data /app/backups

# Start the application
exec python -u main.py