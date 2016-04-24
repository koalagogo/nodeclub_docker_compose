nodeclub docker compose 环境
----------------------------

#用法

1. `git clone http://github.com/koalagogo/nodeclub_docker_compose`
2. `git submodule init`
3. `git submodule update`
4. 修改nodeclub文件夹中的`config.default.js`文件，将其中mongo的地址中的`127.0.0.1`改为mongo，redis的地址中的`127.0.0.1`改为redis,并保存
5. `docker-compose build`
6. `docker-compose up -d`
7. 浏览器打开`http://localhost:3000`即可访问
