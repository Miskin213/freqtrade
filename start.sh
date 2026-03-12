#!/bin/bash
mkdir -p /freqtrade/user_data/strategies
cp /freqtrade/freqtrade/templates/sample_strategy.py /freqtrade/user_data/strategies/SampleStrategy.py
cat > /freqtrade/user_data/config.json << 'EOF'
PASTE_YOUR_CONFIG_HERE
EOF
freqtrade trade --config /freqtrade/user_data/config.json --strategy SampleStrategy
