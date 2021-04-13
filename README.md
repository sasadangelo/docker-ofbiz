# Docker Apache Ofbiz

This project is a dockerization of [Apache OfBiz](https://ofbiz.apache.org/). Apache OFBiz is a suite of business applications flexible enough to be used across any industry. A common architecture allows developers to easily extend or enhance it to create custom features.

# Build

Here the instructions to build the docker image. Make sure you have [Docker Engine installed on your machine](https://docs.docker.com/engine/install/) and [git](https://git-scm.com/book/en/v2/Getting-Started-Installing-Git).

```
cd <WORK DIR>
git clone https://github.com/sasadangelo/docker-ofbiz.git
cd docker-ofbiz
docker build . -t docker-ofbiz
```

# Run

Here the instructions to run the software.

```
docker run -d 8443:8443 docker-ofbiz
```

* **Default dashboard**: https://SERVER_IP:8443/ordermgr/control/main. 
* **e-Commerce**: https://SERVER_IP:8443/ecommerce
* **WebTools**: https://SERVER_IP:8443/webtools
* **Catalog Manager**: https://SERVER_IP:8443/catalog

Where SERVER_IP is the IP address of your hosting server, by default **localhost**.

