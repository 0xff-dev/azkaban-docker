# azkaban-docker
azkaban docker

## base image
```bash
cd base/;
docker build -t azkaban-base:v1 .
```

## exec image
```bash
cd exec-server/;
docker build -t azkaban-exec-server:jre-centos .
```

## web server
```bash
cd web-server/;
docker build -t azkaban-web-server:jre-centos .
```

## use example
```bash
# 1. config db and load sql file


# 2. run exec-server
docker run -itd -v /path/to/exec-server/conf:/azkaban-exec-server-0.1.0-SNAPSHOT/conf --name aes azkaban-exec-server:jre-centos

# 3. run web-server
docke run -itd -p 8888:8081 -v /path/to/web-server/conf:/azkaban-web-server-0.1.0-SNAPSHOT/conf --name aws azkaban-web-server:jre-centos
```

## kubernetes
1. apply it
```bash
kubectl apply -f azkaban.yaml
```

2. result
```bash
[root@ent1 exec-server]# kubectl get po -nkube-system
NAME                                   READY   STATUS      RESTARTS   AGE
azkaban-exec-server-5c7fc66875-kpt94   1/1     Running     0          4m51s
azkaban-exec-server-5c7fc66875-rrjmp   1/1     Running     0          4m51s
azkaban-web-server-74d8d49ccb-5qlpk    1/1     Running     0          4m51s
azkaban-web-server-74d8d49ccb-ll6n6    1/1     Running     1          4m51s
```

3. please check executors in database.
![db](/images/db.png)

4. access
![access](/images/access.png)
```
