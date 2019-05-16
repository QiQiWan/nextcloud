# docker-nextcloud

# 使用
```
docker pull ghostry/nextcloud
docker container stop gnextcloud
docker container rm gnextcloud
docker run -d \
--name gnextcloud \
-p 9088:80 \
-v ~/.gnextcloud:/var/www/html \
--restart always \
ghostry/nextcloud
```
安装后,浏览器打开对应 ip:端口 根据提示进行安装流程.
然后从应用里安装ocDownloader,
就可以开始使用带离线下载的网盘了.