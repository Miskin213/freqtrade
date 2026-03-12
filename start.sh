#!/bin/bash
sudo chown -R ftuser:ftuser /freqtrade/user_data
mkdir -p /freqtrade/user_data/strategies
echo $FREQTRADE_CONFIG > /freqtrade/user_data/config.json
cp /freqtrade/freqtrade/templates/sample_strategy.py /freqtrade/user_data/strategies/SampleStrategy.py
freqtrade trade --config /freqtrade/user_data/config.json --strategy SampleStrategy
