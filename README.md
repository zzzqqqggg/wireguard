### Сборка образа

```shell
docker build -t wireguard src
```

### Запуск

> Docker

```shell
docker run -d --name wireguard --cap-add NET_ADMIN -v config:/etc/wireguard -p 51820:51820/udp wireguard
```

> Docker Compose

```shell
docker compose up -d
```