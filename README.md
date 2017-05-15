# screenlocktimer

Force locks your screen every 15 minutes.

```sh
sudo cp screenlocktimer /usr/local/bin/
sudo chmod +x /usr/local/bin/screenlocktimer
```

```sh
crontab -e
# Add this line
*/15 * * * * bash /usr/local/bin/screenlocktimer
```
