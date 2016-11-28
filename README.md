# minidlna-docker

sudo docker build -t minidlna .

sudo docker run -d  \
  --restart unless-stopped \
  --net=host \
  -p 8200:8200 \
  -p 1900:1900/udp \
  -v /storage/shared/rtorrent/finished:/movies \
  minidlna
