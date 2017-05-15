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

Or with PIN code dialog:

Edit screenlocktimer-zenity-bin and set your PIN code.

```sh
sudo apt-get install zenity
sudo cp screenlocktimer-zenity-bin /usr/local/bin/
sudo chmod +x /usr/local/bin/screenlocktimer-zenity-bin
```

```sh
crontab -e
# Add this line
*/15 * * * * bash /usr/local/bin/screenlocktimer-zenity-bin
```
