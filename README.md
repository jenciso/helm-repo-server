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
curl -s http://127.0.0.1:8088/charts/
```

Client side
```
helm repo add customrepo http://127.0.0.1:8088/charts/
helm search repo app1
```

Clean
```
make clean
helm repo remove customrepo
```
