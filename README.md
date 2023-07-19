## Helm repo server

Create some repos
```    
make prepare
```

Start helm repo server
```
make start
```

Test
```
curl -s https://127.0.0.1:8088/charts/
```

Clean
```
make clean
```

