# screenlocktimer

Force screen lock every 15 minutes
----------------------------------

```sh
sudo cp screenlocktimer /usr/local/bin/
sudo chmod +x /usr/local/bin/screenlocktimer
```

```sh
crontab -e
# Add this line
*/15 * * * * bash /usr/local/bin/screenlocktimer
```

Every 15 mins asks PIN code or locks the screen
-----------------------------------------------

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

For resolution problmes add to end of ~/.profile and cp xrandr ~/
-----------------------------------------------------------------

```sh
if xrandr | fgrep --quiet '1920x1080R    59.93*'; then
  echo "Screen resolution 1920x1080R OK"
else
  echo "Set screen resolution 1920x1080R"
  bash $HOME/xrandr.sh 120
fi
```

Juha Nurmi on sanonut:

> Puolustajan isoin etu on, että hän voi valita taistelukentän.
> Etulyöntiasemalle saa vipuvartta tekemällä paljon yllättäviä puolustusratkaisuja.
> Näin myös puolustamisesta tulee hakkeroinnin kaltainen mielenkiintoinen taitolaji.
