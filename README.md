# Docker Alpine Supervisord

A lightweight Docker image running [Supervisor][supervisor] on [Alpine Linux][alpine] to monitor processes.
Supervisor makes it easy to [run and monitor multiple processes][supervisor-run].

## Build Docker Image
Then build and run the image:

```sh
docker build -f Dockerfile -t alpine-supervisord:0.0.1 --label alpine-supervisord .
```


## Run Docker
```bash
docker run -it --rm alpine-supervisord:0.0.1
```

You will see the output of docker run.

```bash
PS D:\WorkDir\Repository\HoneyMoose\Docker-Alpine-Supervisord> docker run -it --rm alpine-supervisord:0.0.1
2024-05-15 02:57:11,742 CRIT Supervisor is running as root.  Privileges were not dropped because no user is specified in the config file.  If you intend to run as root, you can set user=root in the config file to avoid this message.
2024-05-15 02:57:11,744 INFO supervisord started with pid 1
2024-05-15 02:57:12,746 INFO spawned: 'nginx_00' with pid 7
2024-05-15 02:57:13,748 INFO success: nginx_00 entered RUNNING state, process has stayed up for > than 0 seconds (startsecs)
```

## Demo
On folder nginx-spring, we provide a demo can run nginx and spring boot application a the same docker container.

You need to copy the supervisord.conf file replace in deploy folder.

## Community 
* [Join us](https://www.isharkfly.com/c/computer-technology/system-and-container/25)

# 联系方式

请使用下面的联系方式和我们联系：

| 联系方式名称  | 联系方式                                          |
|---------|-----------------------------------------------|
| 电子邮件    | [service@ossez.com](mailto:service@ossez.com) |
| 微信和QQ同号 | 103899765                                     |
| 社区论坛    | https://www.isharkfly.com/                    |


[supervisor]:        http://supervisord.org/
[supervisor-run]:    http://supervisord.org/running.html
[supervisor-config]: http://supervisord.org/configuration.html
[alpine]:            http://www.alpinelinux.org/
[dockerhub]:         https://hub.docker.com/
