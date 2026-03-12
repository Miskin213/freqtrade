#!/bin/bash
mkdir -p /freqtrade/user_data/strategies
echo $FREQTRADE_CONFIG > /freqtrade/user_data/config.json
cp /freqtrade/freqtrade/templates/sample_strategy.py /freqtrade/user_data/strategies/SampleStrategy.py
freqtrade trade --config /freqtrade/user_data/config.json --strategy SampleStrategy
```
- Commit it

**2. Add `FREQTRADE_CONFIG` env var in Railway**
- Go to your Railway service → **Variables**
- Add a new variable called `FREQTRADE_CONFIG`
- The value is your entire config JSON — paste the whole thing from `user_data/config.json` in your fork as one line

**3. Update Railway start command**
```
bash /freqtrade/start.sh
