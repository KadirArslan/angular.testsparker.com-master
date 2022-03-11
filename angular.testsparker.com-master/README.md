# SPA Test Site Angular

**Critical Notice:** Please don't install any app on the server. Just create server, connect SSH and follow "Deploy SPA Angular Test Site" steps.

### Install SPA Angular Test Site

```sh
$ cd spa_angular/
$ sudo chmod +x installer.sh
$ ./installer.sh
```

**Note:** While installing MySQL step, you will need to enter the terminal. While installing please follow terminal.

### Updates

```sh
$ sudo chmod +x updater.sh
$ ./updater.sh
```

### For Mysql Fix
add crontab this line:
`* * * * * cd /home/ubuntu/spa_angular/ && ./fix_mysql.sh`

### Check
- Visit http://localhost/ => Should be return Monero Website.
- Visit http://localhost:8000/ => Should be return 200 OK with empty body.

### Owner
Omer Citak <<omer@netsparker.com>>