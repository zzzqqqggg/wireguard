# Wireguard сервер в Docker-контейнере

## Установка

- Клонировать репозиторий

```shell
git clone https://github.com/zzzqqqggg/wireguard.git
```
- Перейти в каталог репозитория

```shell
cd wireguard/
```
- Скопироват файл конфигурации сервера из шаблона

```shell
cp template/wg0.conf.template conf/wg0.conf
```
- Запуск 

> Средствами Docker Compose

> Продуктивное окружение

```shell
docker compose up -d
```

> Окружение разработки

```shell
docker compose -f docker-compose-dev.yml up -d
```

```shell
docker run -d --name wireguard --cap-add NET_ADMIN -v config:/etc/wireguard -p 51820:51820/udp wireguard
```
> Средствами Docker

## Параметры сборки и отправки в реестр
### Сборка образа

```shell
docker build -t wireguard src
```
### Отправка в ghcr.io

#### Авторизация


```shell
echo <GITHUB_TOKEN> | docker login ghcr.io -u <GITHUB_USERNAME> --password-stdin
```

- <GITHUB_TOKEN> - права ```read:packages```, ```write:packages```, ```delete:packages```
- <GITHUB_USERNAME> - имя пользователя GitHub

#### Отправка в реестр ghcr.io

```shell
docker tag wireguard ghcr.io/<GITHUB_USERNAME>/wireguard:latest
docker push ghcr.io/<GITHUB_USERNAME>/wireguard:latest
```

- <GITHUB_USERNAME> - имя пользователя GitHub