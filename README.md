### 1. Orchestration

```html 
Swarm is good for learning about Orchestration
But Swarm is not stable in production, K8s does it well...
```

Docuemnt:<br>
- Orchestration:<br>
  * https://viblo.asia/p/container-orchestration-and-rancher-DzVGpLBXGnW/<br>
  * https://www.bmc.com/blogs/it-orchestration-vs-automation-whats-the-difference/<br>
- Swarm & K8s https://techmaster.vn/posts/34553/docker_swarm_vs_kubernetes<br>
- Swarm: https://docs.docker.com/engine/swarm/<br>
- K8s: https://kubernetes.io/<br>
- K8s UI Management: https://rancher.com/<br>

### 2. Traefik

```html
We use Traefik as a Reverse Proxy for Docker Containers
With Nginx we need to do many things, but with Traefik we can easily configure, it also automatically finds a new service to be deployed and imposes its settings for that service.
```

```html
Traefik tự động cập nhật cấu hình mà không phải restart
Hỗ trợ nhiều giải thuật load balancing
Free & Auto HTTPS cho microservice với Let's Encrypt
Websocket, HTTP/2, GRPC
Chống quá tải với Circuit breakers
Lưu access logs (JSON, CLF)
Có Rest API cho bạn sử dụng để để update các config.
```

Document:<br>
- https://traefik.io/<br>
- https://viblo.asia/p/tong-quan-ve-traefik-XL6lAA8Dlek/<br>

### 3. Service Discovery

```html
Service discovery is how applications and (micro)services locate each other on a network. Service discovery implementations include both:

* A central server (or servers) that maintain a global view of addresses and
* Clients that connect to the central server to update and retrieve addresses.
```

Document:<br>
- https://www.nginx.com/blog/service-discovery-in-a-microservices-architecture/<br>

### 3. EFK(Elasticsearch + Fluentd + Kibana)

```html
Another tech is ELF(Elasticsearch + Logstash + Kibana)
```

```html
Fluentd is an open source data collector for unified logging layer. Fluentd allows you to unify data collection and consumption for a better use and understanding of data.
```

```html
DescriptionKibana is an open source data visualization plugin for Elasticsearch. It provides visualization capabilities on top of the content indexed on an Elasticsearch cluster. Users can create bar, line and scatter plots, or pie charts and maps on top of large volumes of data.
```

Document:<br>
- https://docs.fluentd.org/<br>
- https://www.elastic.co/products/elastic-stack/<br>
- https://blog.vietnamlab.vn/2018/05/30/quan-ly-log-voi-logstash-elasticsearch-kibana/<br>
