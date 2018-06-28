# Phantombot-Docker
This is a Docker container for PhantomBot

To Run without manual configuration (minimal args):
```
docker run -d -e BOT_TWITCH_USERNAME= -e BOT_OAUTH= -e PANEL_USER= \
  -e PANEL_PASSWORD= -e BOT_CHANNEL= -e API_OAUTH= -e BOT_OWNER= \
  --name=phantombot m3adow/phantombot-docker:latest \
  -p 25000:25000 -p 25001:25001 -p 25002:25002 -p 25005:25005
```

There are some more environment variables which can be set (untested):

MySQL Setup:
```
-e MYSQL_HOST= -e MYSQL_PORT= -e MYSQL_NAME= -e MYSQL_USER= -e MYSQL_PASS=
```

GameWisp integration:
```
-e GAMEWISPAUTH= -e GAMEWISPREFRESH=
```

Log Timezone:
```
-e TIME_ZONE=
```


This is still WIP
