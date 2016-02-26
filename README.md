# arm-samba

To start the container with default config :
```bash
docker run -d -p 139:139 -p 445:445 arm-samba
```

But you can also use your local datastore :
```bash
docker run -d -p 139:139 -p 445:445 -v <your local datastore>:/data arm-samba
```

