# roonserver
RoonServer as a Docker image

Build via:
<code>docker build .</code>

Run using:
<code>docker run --net=host -p 9200:9200 -p 443:443 -p 80:80 --ulimit nofile=8192:8192 pbinks/roonserver</code>
