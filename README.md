# check_internet

Pings google every sixty seconds and logs ping results to the csv `internet_log.csv`.

## Operation

To start:
```
launchctl load -w check_internet.launchd_config.plist 
```

To stop:
```
launchctl unload -w check_internet.launchd_config.plist 
```



