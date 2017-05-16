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

Juha Nurmi on sanonut:

> Puolustajan isoin etu on, että hän voi valita taistelukentän.
> Etulyöntiasemalle saa vipuvartta tekemällä paljon yllättäviä puolustusratkaisuja.
> Näin myös puolustamisesta tulee hakkeroinnin kaltainen mielenkiintoinen taitolaji.
