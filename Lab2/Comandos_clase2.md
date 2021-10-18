Microsoft Windows [Version 10.0.19043.1288]
(c) Microsoft Corporation. All rights reserved.

C:\Users\ptoma>docker --version
Docker version 20.10.8, build 3967b7d

C:\Users\ptoma>docker run hello-world
Unable to find image 'hello-world:latest' locally
latest: Pulling from library/hello-world
2db29710123e: Pull complete
Digest: sha256:37a0b92b08d4919615c3ee023f7ddb068d12b8387475d64c622ac30f45c29c51
Status: Downloaded newer image for hello-world:latest

Hello from Docker!
This message shows that your installation appears to be working correctly.

To generate this message, Docker took the following steps:
 1. The Docker client contacted the Docker daemon.
 2. The Docker daemon pulled the "hello-world" image from the Docker Hub.
    (amd64)
 3. The Docker daemon created a new container from that image which runs the
    executable that produces the output you are currently reading.
 4. The Docker daemon streamed that output to the Docker client, which sent it
    to your terminal.

To try something more ambitious, you can run an Ubuntu container with:
 $ docker run -it ubuntu bash

Share images, automate workflows, and more with a free Docker ID:
 https://hub.docker.com/

For more examples and ideas, visit:
 https://docs.docker.com/get-started/


C:\Users\ptoma>docker run hello-world

Hello from Docker!
This message shows that your installation appears to be working correctly.

To generate this message, Docker took the following steps:
 1. The Docker client contacted the Docker daemon.
 2. The Docker daemon pulled the "hello-world" image from the Docker Hub.
    (amd64)
 3. The Docker daemon created a new container from that image which runs the
    executable that produces the output you are currently reading.
 4. The Docker daemon streamed that output to the Docker client, which sent it
    to your terminal.

To try something more ambitious, you can run an Ubuntu container with:
 $ docker run -it ubuntu bash

Share images, automate workflows, and more with a free Docker ID:
 https://hub.docker.com/

For more examples and ideas, visit:
 https://docs.docker.com/get-started/


C:\Users\ptoma>docker pull busybox
Using default tag: latest
latest: Pulling from library/busybox
24fb2886d6f6: Pull complete
Digest: sha256:f7ca5a32c10d51aeda3b4d01c61c6061f497893d7f6628b92f822f7117182a57
Status: Downloaded newer image for busybox:latest
docker.io/library/busybox:latest

C:\Users\ptoma>docker images
REPOSITORY               TAG       IMAGE ID       CREATED        SIZE
hello-world              latest    feb5d9fea6a5   3 weeks ago    13.3kB
busybox                  latest    16ea53ea7c65   4 weeks ago    1.24MB
docker/getting-started   latest    083d7564d904   4 months ago   28MB

C:\Users\ptoma>docker run busybox

C:\Users\ptoma>docker run busybox echo "Hello From Galileo Master!"
Hello From Galileo Master!

C:\Users\ptoma>dockers ps
'dockers' is not recognized as an internal or external command,
operable program or batch file.

C:\Users\ptoma>docker ps
CONTAINER ID   IMAGE     COMMAND   CREATED   STATUS    PORTS     NAMES

C:\Users\ptoma>docker ps -a
CONTAINER ID   IMAGE                    COMMAND                  CREATED              STATUS                          PORTS                NAMES
c6264ab14204   busybox                  "echo 'Hello From Ga…"   About a minute ago   Exited (0) About a minute ago                        festive_turing
537955138caa   busybox                  "sh"                     2 minutes ago        Exited (0) 2 minutes ago                             trusting_goldberg
79e888b2ec6b   hello-world              "/hello"                 12 minutes ago       Exited (0) 12 minutes ago                            distracted_carson
08c0f6142660   hello-world              "/hello"                 12 minutes ago       Exited (0) 12 minutes ago                            exciting_brattain
670763a49c77   docker/getting-started   "/docker-entrypoint.…"   3 days ago           Exited (255) 47 hours ago       0.0.0.0:80->80/tcp   unruffled_lovelace

C:\Users\ptoma>docker run -it busybox sh
/ # ls
bin   dev   etc   home  proc  root  sys   tmp   usr   var
/ # uptime
 02:22:48 up 10:03,  0 users,  load average: 0.00, 0.01, 0.00
/ # cd home/
/home # ls
/home # cd..
sh: cd..: not found
/home # cd ..
/ # cd var/
/var # ls
spool  www
/var #
/var # cd ..
/ # exit

C:\Users\ptoma>docker ps -a
CONTAINER ID   IMAGE                    COMMAND                  CREATED          STATUS                      PORTS                NAMES
6f5560c9e78e   busybox                  "sh"                     2 minutes ago    Exited (0) 11 seconds ago                        trusting_northcutt
c6264ab14204   busybox                  "echo 'Hello From Ga…"   6 minutes ago    Exited (0) 6 minutes ago                         festive_turing
537955138caa   busybox                  "sh"                     7 minutes ago    Exited (0) 7 minutes ago                         trusting_goldberg
79e888b2ec6b   hello-world              "/hello"                 17 minutes ago   Exited (0) 17 minutes ago                        distracted_carson
08c0f6142660   hello-world              "/hello"                 17 minutes ago   Exited (0) 17 minutes ago                        exciting_brattain
670763a49c77   docker/getting-started   "/docker-entrypoint.…"   3 days ago       Exited (255) 47 hours ago   0.0.0.0:80->80/tcp   unruffled_lovelace

C:\Users\ptoma>docker rm 6f5560c9e78e c6264ab14204 537955138caa 79e888b2ec6b 08c0f6142660 670763a49c77
6f5560c9e78e
c6264ab14204
537955138caa
79e888b2ec6b
08c0f6142660
670763a49c77

C:\Users\ptoma>docker ps -a
CONTAINER ID   IMAGE     COMMAND   CREATED   STATUS    PORTS     NAMES

C:\Users\ptoma>docker images
REPOSITORY               TAG       IMAGE ID       CREATED        SIZE
hello-world              latest    feb5d9fea6a5   3 weeks ago    13.3kB
busybox                  latest    16ea53ea7c65   4 weeks ago    1.24MB
docker/getting-started   latest    083d7564d904   4 months ago   28MB

C:\Users\ptoma>docker container prune
WARNING! This will remove all stopped containers.
Are you sure you want to continue? [y/N] y
Total reclaimed space: 0B

C:\Users\ptoma>docker pull jupyter/base-notebook
Using default tag: latest
latest: Pulling from jupyter/base-notebook
7b1a6ab2e44d: Pull complete
f6b21536ad06: Pull complete
578ff31ef0bd: Pull complete
973c449b2c30: Pull complete
e8394ec0d257: Pull complete
7e4ee5cb54c2: Pull complete
a0e7b25e93c9: Pull complete
9d27c0a5e524: Pull complete
b7636939c593: Pull complete
a409e143a16d: Pull complete
7d8a2ed6e54d: Pull complete
Digest: sha256:912635e61855906073112fcf51964f6da24a622391c6bc54aaf29436d5197ce7
Status: Downloaded newer image for jupyter/base-notebook:latest
docker.io/jupyter/base-notebook:latest

C:\Users\ptoma>docker run -p 8888:8888 jupyter/base-notebook
WARN: Jupyter Notebook deprecation notice https://github.com/jupyter/docker-stacks#jupyter-notebook-deprecation-notice.
Executing the command: jupyter notebook
[I 04:33:00.288 NotebookApp] Writing notebook server cookie secret to /home/jovyan/.local/share/jupyter/runtime/notebook_cookie_secret
[W 2021-10-17 04:33:00.788 LabApp] 'ip' has moved from NotebookApp to ServerApp. This config will be passed to ServerApp. Be sure to update your config before our next release.
[W 2021-10-17 04:33:00.788 LabApp] 'port' has moved from NotebookApp to ServerApp. This config will be passed to ServerApp. Be sure to update your config before our next release.
[W 2021-10-17 04:33:00.788 LabApp] 'port' has moved from NotebookApp to ServerApp. This config will be passed to ServerApp. Be sure to update your config before our next release.
[W 2021-10-17 04:33:00.788 LabApp] 'port' has moved from NotebookApp to ServerApp. This config will be passed to ServerApp. Be sure to update your config before our next release.
[I 2021-10-17 04:33:00.795 LabApp] JupyterLab extension loaded from /opt/conda/lib/python3.9/site-packages/jupyterlab
[I 2021-10-17 04:33:00.795 LabApp] JupyterLab application directory is /opt/conda/share/jupyter/lab
[I 04:33:00.800 NotebookApp] Serving notebooks from local directory: /home/jovyan
[I 04:33:00.800 NotebookApp] Jupyter Notebook 6.4.4 is running at:
[I 04:33:00.800 NotebookApp] http://9fa595425e25:8888/?token=e3f0fcc9b80d7c9f794e1f72ba0bee4b5d2d8e6948cb8262
[I 04:33:00.800 NotebookApp]  or http://127.0.0.1:8888/?token=e3f0fcc9b80d7c9f794e1f72ba0bee4b5d2d8e6948cb8262
[I 04:33:00.800 NotebookApp] Use Control-C to stop this server and shut down all kernels (twice to skip confirmation).
[C 04:33:00.804 NotebookApp]

    To access the notebook, open this file in a browser:
        file:///home/jovyan/.local/share/jupyter/runtime/nbserver-7-open.html
    Or copy and paste one of these URLs:
        http://9fa595425e25:8888/?token=e3f0fcc9b80d7c9f794e1f72ba0bee4b5d2d8e6948cb8262
     or http://127.0.0.1:8888/?token=e3f0fcc9b80d7c9f794e1f72ba0bee4b5d2d8e6948cb8262
[I 04:33:09.793 NotebookApp] 302 GET /?token=e3f0fcc9b80d7c9f794e1f72ba0bee4b5d2d8e6948cb8262 (172.17.0.1) 1.040000ms
/opt/conda/lib/python3.9/json/encoder.py:257: UserWarning: date_default is deprecated since jupyter_client 7.0.0. Use jupyter_client.jsonutil.json_default.
  return _iterencode(o, 0)
[I 04:33:37.046 NotebookApp] Creating new notebook in
[I 04:33:37.083 NotebookApp] Writing notebook-signing key to /home/jovyan/.local/share/jupyter/notebook_secret
[W 04:33:37.919 NotebookApp] 404 GET /nbextensions/widgets/notebook/js/extension.js?v=20211017043300 (172.17.0.1) 6.810000ms referer=http://127.0.0.1:8888/notebooks/Untitled.ipynb?kernel_name=python3
Exception in callback <TaskWakeupMethWrapper object at 0x7f95fe00c2e0>(<Future finis...5189\r\n\r\n'>)
handle: <Handle <TaskWakeupMethWrapper object at 0x7f95fe00c2e0>(<Future finis...5189\r\n\r\n'>)>
Traceback (most recent call last):
  File "/opt/conda/lib/python3.9/asyncio/events.py", line 80, in _run
    self._context.run(self._callback, *self._args)
RuntimeError: Cannot enter into task <Task pending name='Task-8' coro=<HTTP1ServerConnection._server_request_loop() running at /opt/conda/lib/python3.9/site-packages/tornado/http1connection.py:823> wait_for=<Future finished result=b'GET /api/co...45189\r\n\r\n'> cb=[IOLoop.add_future.<locals>.<lambda>() at /opt/conda/lib/python3.9/site-packages/tornado/ioloop.py:688]> while another task <Task pending name='Task-1' coro=<MultiKernelManager._async_start_kernel() running at /opt/conda/lib/python3.9/site-packages/jupyter_client/multikernelmanager.py:186>> is being executed.
Exception in callback <TaskWakeupMethWrapper object at 0x7f95fd5d0a90>(<Future finis...5189\r\n\r\n'>)
handle: <Handle <TaskWakeupMethWrapper object at 0x7f95fd5d0a90>(<Future finis...5189\r\n\r\n'>)>
Traceback (most recent call last):
  File "/opt/conda/lib/python3.9/asyncio/events.py", line 80, in _run
    self._context.run(self._callback, *self._args)
RuntimeError: Cannot enter into task <Task pending name='Task-11' coro=<HTTP1ServerConnection._server_request_loop() running at /opt/conda/lib/python3.9/site-packages/tornado/http1connection.py:823> wait_for=<Future finished result=b'GET /kernel...45189\r\n\r\n'> cb=[IOLoop.add_future.<locals>.<lambda>() at /opt/conda/lib/python3.9/site-packages/tornado/ioloop.py:688]> while another task <Task pending name='Task-2' coro=<KernelManager._async_start_kernel() running at /opt/conda/lib/python3.9/site-packages/jupyter_client/manager.py:337>> is being executed.
[I 04:33:38.024 NotebookApp] Kernel started: bba701c0-4981-4f87-bab1-9da96b868fe5, name: python3
/opt/conda/lib/python3.9/json/encoder.py:257: UserWarning: date_default is deprecated since jupyter_client 7.0.0. Use jupyter_client.jsonutil.json_default.
  return _iterencode(o, 0)
[I 04:35:38.055 NotebookApp] Saving file at /Untitled.ipynb
[I 04:39:13.173 NotebookApp] Starting buffering for bba701c0-4981-4f87-bab1-9da96b868fe5:5d46a1fdeacd45b285e7cce91e4e16b8
[C 04:40:42.651 NotebookApp] received signal 15, stopping
[I 04:40:42.652 NotebookApp] Shutting down 1 kernel
[I 04:40:42.653 NotebookApp] Kernel shutdown: bba701c0-4981-4f87-bab1-9da96b868fe5
[I 04:40:42.858 NotebookApp] Shutting down 0 terminals

C:\Users\ptoma>docker network create --driver bridge my_test_another
a86859bee2abe4700d07afcf8f6ebf5671daff200291216c4a43dfbba3178d4f

C:\Users\ptoma>docker run -it --network my_test_another -e "MYSQL_ROOT_PASSWORD=root123" -e "MYSQL_DATABASE=test" -e "MYSQL_USER=test" -e "MYSQL_PASSWORD=test123" mysql:5.7.35
Unable to find image 'mysql:5.7.35' locally
5.7.35: Pulling from library/mysql
b380bbd43752: Pull complete
f23cbf2ecc5d: Pull complete
30cfc6c29c0a: Pull complete
b38609286cbe: Pull complete
8211d9e66cd6: Pull complete
2313f9eeca4a: Pull complete
7eb487d00da0: Pull complete
bb9cc5c700e7: Pull complete
88676eb32344: Pull complete
8fea0b38a348: Pull complete
3dc585bfc693: Pull complete
Digest: sha256:b8814059bbd9c80b78fe4b2b0b70cd70fe3772b3c5d8ee1edfa46791db3224f9
Status: Downloaded newer image for mysql:5.7.35
2021-10-17 04:48:07+00:00 [Note] [Entrypoint]: Entrypoint script for MySQL Server 5.7.35-1debian10 started.
2021-10-17 04:48:07+00:00 [Note] [Entrypoint]: Switching to dedicated user 'mysql'
2021-10-17 04:48:07+00:00 [Note] [Entrypoint]: Entrypoint script for MySQL Server 5.7.35-1debian10 started.
2021-10-17 04:48:07+00:00 [Note] [Entrypoint]: Initializing database files
2021-10-17T04:48:07.954828Z 0 [Warning] TIMESTAMP with implicit DEFAULT value is deprecated. Please use --explicit_defaults_for_timestamp server option (see documentation for more details).
2021-10-17T04:48:08.145154Z 0 [Warning] InnoDB: New log files created, LSN=45790
2021-10-17T04:48:08.189553Z 0 [Warning] InnoDB: Creating foreign key constraint system tables.
2021-10-17T04:48:08.208653Z 0 [Warning] No existing UUID has been found, so we assume that this is the first time that this server has been started. Generating a new UUID: 6c6d4a03-2f05-11ec-803d-0242ac120002.
2021-10-17T04:48:08.214448Z 0 [Warning] Gtid table is not ready to be used. Table 'mysql.gtid_executed' cannot be opened.
2021-10-17T04:48:08.718578Z 0 [Warning] A deprecated TLS version TLSv1 is enabled. Please use TLSv1.2 or higher.
2021-10-17T04:48:08.718610Z 0 [Warning] A deprecated TLS version TLSv1.1 is enabled. Please use TLSv1.2 or higher.
2021-10-17T04:48:08.719037Z 0 [Warning] CA certificate ca.pem is self signed.
2021-10-17T04:48:09.108104Z 1 [Warning] root@localhost is created with an empty password ! Please consider switching off the --initialize-insecure option.
2021-10-17 04:48:13+00:00 [Note] [Entrypoint]: Database files initialized
2021-10-17 04:48:13+00:00 [Note] [Entrypoint]: Starting temporary server
2021-10-17 04:48:13+00:00 [Note] [Entrypoint]: Waiting for server startup
2021-10-17T04:48:13.226303Z 0 [Warning] TIMESTAMP with implicit DEFAULT value is deprecated. Please use --explicit_defaults_for_timestamp server option (see documentation for more details).
2021-10-17T04:48:13.227892Z 0 [Note] mysqld (mysqld 5.7.35) starting as process 77 ...
2021-10-17T04:48:13.231031Z 0 [Note] InnoDB: PUNCH HOLE support available
2021-10-17T04:48:13.231079Z 0 [Note] InnoDB: Mutexes and rw_locks use GCC atomic builtins
2021-10-17T04:48:13.231086Z 0 [Note] InnoDB: Uses event mutexes
2021-10-17T04:48:13.231089Z 0 [Note] InnoDB: GCC builtin __atomic_thread_fence() is used for memory barrier
2021-10-17T04:48:13.231092Z 0 [Note] InnoDB: Compressed tables use zlib 1.2.11
2021-10-17T04:48:13.231095Z 0 [Note] InnoDB: Using Linux native AIO
2021-10-17T04:48:13.231408Z 0 [Note] InnoDB: Number of pools: 1
2021-10-17T04:48:13.231563Z 0 [Note] InnoDB: Using CPU crc32 instructions
2021-10-17T04:48:13.233787Z 0 [Note] InnoDB: Initializing buffer pool, total size = 128M, instances = 1, chunk size = 128M
2021-10-17T04:48:13.247776Z 0 [Note] InnoDB: Completed initialization of buffer pool
2021-10-17T04:48:13.250432Z 0 [Note] InnoDB: If the mysqld execution user is authorized, page cleaner thread priority can be changed. See the man page of setpriority().
2021-10-17T04:48:13.263150Z 0 [Note] InnoDB: Highest supported file format is Barracuda.
2021-10-17T04:48:13.278721Z 0 [Note] InnoDB: Creating shared tablespace for temporary tables
2021-10-17T04:48:13.278793Z 0 [Note] InnoDB: Setting file './ibtmp1' size to 12 MB. Physically writing the file full; Please wait ...
2021-10-17T04:48:13.300599Z 0 [Note] InnoDB: File './ibtmp1' size is now 12 MB.
2021-10-17T04:48:13.301391Z 0 [Note] InnoDB: 96 redo rollback segment(s) found. 96 redo rollback segment(s) are active.
2021-10-17T04:48:13.301439Z 0 [Note] InnoDB: 32 non-redo rollback segment(s) are active.
2021-10-17T04:48:13.303689Z 0 [Note] InnoDB: Waiting for purge to start
2021-10-17T04:48:13.354101Z 0 [Note] InnoDB: 5.7.35 started; log sequence number 2748441
2021-10-17T04:48:13.355625Z 0 [Note] InnoDB: Loading buffer pool(s) from /var/lib/mysql/ib_buffer_pool
2021-10-17T04:48:13.355851Z 0 [Note] Plugin 'FEDERATED' is disabled.
2021-10-17T04:48:13.358499Z 0 [Note] InnoDB: Buffer pool(s) load completed at 211017  4:48:13
2021-10-17T04:48:13.365479Z 0 [Note] Found ca.pem, server-cert.pem and server-key.pem in data directory. Trying to enable SSL support using them.
2021-10-17T04:48:13.365536Z 0 [Note] Skipping generation of SSL certificates as certificate files are present in data directory.
2021-10-17T04:48:13.365547Z 0 [Warning] A deprecated TLS version TLSv1 is enabled. Please use TLSv1.2 or higher.
2021-10-17T04:48:13.365551Z 0 [Warning] A deprecated TLS version TLSv1.1 is enabled. Please use TLSv1.2 or higher.
2021-10-17T04:48:13.366452Z 0 [Warning] CA certificate ca.pem is self signed.
2021-10-17T04:48:13.366506Z 0 [Note] Skipping generation of RSA key pair as key files are present in data directory.
2021-10-17T04:48:13.372008Z 0 [Warning] Insecure configuration for --pid-file: Location '/var/run/mysqld' in the path is accessible to all OS users. Consider choosing a different directory.
2021-10-17T04:48:13.377796Z 0 [Note] Event Scheduler: Loaded 0 events
2021-10-17T04:48:13.378225Z 0 [Note] mysqld: ready for connections.
Version: '5.7.35'  socket: '/var/run/mysqld/mysqld.sock'  port: 0  MySQL Community Server (GPL)
2021-10-17 04:48:14+00:00 [Note] [Entrypoint]: Temporary server started.
Warning: Unable to load '/usr/share/zoneinfo/iso3166.tab' as time zone. Skipping it.
Warning: Unable to load '/usr/share/zoneinfo/leap-seconds.list' as time zone. Skipping it.
Warning: Unable to load '/usr/share/zoneinfo/zone.tab' as time zone. Skipping it.
Warning: Unable to load '/usr/share/zoneinfo/zone1970.tab' as time zone. Skipping it.
2021-10-17 04:48:16+00:00 [Note] [Entrypoint]: Creating database test
2021-10-17 04:48:16+00:00 [Note] [Entrypoint]: Creating user test
2021-10-17 04:48:16+00:00 [Note] [Entrypoint]: Giving user test access to schema test

2021-10-17 04:48:16+00:00 [Note] [Entrypoint]: Stopping temporary server
2021-10-17T04:48:16.845164Z 0 [Note] Giving 0 client threads a chance to die gracefully
2021-10-17T04:48:16.845212Z 0 [Note] Shutting down slave threads
2021-10-17T04:48:16.845217Z 0 [Note] Forcefully disconnecting 0 remaining clients
2021-10-17T04:48:16.845222Z 0 [Note] Event Scheduler: Purging the queue. 0 events
2021-10-17T04:48:16.845337Z 0 [Note] Binlog end
2021-10-17T04:48:16.846188Z 0 [Note] Shutting down plugin 'ngram'
2021-10-17T04:48:16.846228Z 0 [Note] Shutting down plugin 'partition'
2021-10-17T04:48:16.846236Z 0 [Note] Shutting down plugin 'BLACKHOLE'
2021-10-17T04:48:16.846241Z 0 [Note] Shutting down plugin 'ARCHIVE'
2021-10-17T04:48:16.846270Z 0 [Note] Shutting down plugin 'PERFORMANCE_SCHEMA'
2021-10-17T04:48:16.846325Z 0 [Note] Shutting down plugin 'MRG_MYISAM'
2021-10-17T04:48:16.846356Z 0 [Note] Shutting down plugin 'MyISAM'
2021-10-17T04:48:16.846366Z 0 [Note] Shutting down plugin 'INNODB_SYS_VIRTUAL'
2021-10-17T04:48:16.846421Z 0 [Note] Shutting down plugin 'INNODB_SYS_DATAFILES'
2021-10-17T04:48:16.846425Z 0 [Note] Shutting down plugin 'INNODB_SYS_TABLESPACES'
2021-10-17T04:48:16.846437Z 0 [Note] Shutting down plugin 'INNODB_SYS_FOREIGN_COLS'
2021-10-17T04:48:16.846440Z 0 [Note] Shutting down plugin 'INNODB_SYS_FOREIGN'
2021-10-17T04:48:16.846443Z 0 [Note] Shutting down plugin 'INNODB_SYS_FIELDS'
2021-10-17T04:48:16.846446Z 0 [Note] Shutting down plugin 'INNODB_SYS_COLUMNS'
2021-10-17T04:48:16.846449Z 0 [Note] Shutting down plugin 'INNODB_SYS_INDEXES'
2021-10-17T04:48:16.846452Z 0 [Note] Shutting down plugin 'INNODB_SYS_TABLESTATS'
2021-10-17T04:48:16.846455Z 0 [Note] Shutting down plugin 'INNODB_SYS_TABLES'
2021-10-17T04:48:16.846457Z 0 [Note] Shutting down plugin 'INNODB_FT_INDEX_TABLE'
2021-10-17T04:48:16.846460Z 0 [Note] Shutting down plugin 'INNODB_FT_INDEX_CACHE'
2021-10-17T04:48:16.846464Z 0 [Note] Shutting down plugin 'INNODB_FT_CONFIG'
2021-10-17T04:48:16.846471Z 0 [Note] Shutting down plugin 'INNODB_FT_BEING_DELETED'
2021-10-17T04:48:16.846473Z 0 [Note] Shutting down plugin 'INNODB_FT_DELETED'
2021-10-17T04:48:16.846475Z 0 [Note] Shutting down plugin 'INNODB_FT_DEFAULT_STOPWORD'
2021-10-17T04:48:16.846477Z 0 [Note] Shutting down plugin 'INNODB_METRICS'
2021-10-17T04:48:16.846504Z 0 [Note] Shutting down plugin 'INNODB_TEMP_TABLE_INFO'
2021-10-17T04:48:16.846523Z 0 [Note] Shutting down plugin 'INNODB_BUFFER_POOL_STATS'
2021-10-17T04:48:16.846529Z 0 [Note] Shutting down plugin 'INNODB_BUFFER_PAGE_LRU'
2021-10-17T04:48:16.846533Z 0 [Note] Shutting down plugin 'INNODB_BUFFER_PAGE'
2021-10-17T04:48:16.846536Z 0 [Note] Shutting down plugin 'INNODB_CMP_PER_INDEX_RESET'
2021-10-17T04:48:16.846539Z 0 [Note] Shutting down plugin 'INNODB_CMP_PER_INDEX'
2021-10-17T04:48:16.846542Z 0 [Note] Shutting down plugin 'INNODB_CMPMEM_RESET'
2021-10-17T04:48:16.846546Z 0 [Note] Shutting down plugin 'INNODB_CMPMEM'
2021-10-17T04:48:16.846549Z 0 [Note] Shutting down plugin 'INNODB_CMP_RESET'
2021-10-17T04:48:16.846610Z 0 [Note] Shutting down plugin 'INNODB_CMP'
2021-10-17T04:48:16.846636Z 0 [Note] Shutting down plugin 'INNODB_LOCK_WAITS'
2021-10-17T04:48:16.846644Z 0 [Note] Shutting down plugin 'INNODB_LOCKS'
2021-10-17T04:48:16.846648Z 0 [Note] Shutting down plugin 'INNODB_TRX'
2021-10-17T04:48:16.846652Z 0 [Note] Shutting down plugin 'InnoDB'
2021-10-17T04:48:16.846727Z 0 [Note] InnoDB: FTS optimize thread exiting.
2021-10-17T04:48:16.846931Z 0 [Note] InnoDB: Starting shutdown...
2021-10-17T04:48:16.947498Z 0 [Note] InnoDB: Dumping buffer pool(s) to /var/lib/mysql/ib_buffer_pool
2021-10-17T04:48:16.947945Z 0 [Note] InnoDB: Buffer pool(s) dump completed at 211017  4:48:16
2021-10-17T04:48:18.370782Z 0 [Note] InnoDB: Shutdown completed; log sequence number 12658916
2021-10-17T04:48:18.374047Z 0 [Note] InnoDB: Removed temporary tablespace data file: "ibtmp1"
2021-10-17T04:48:18.374110Z 0 [Note] Shutting down plugin 'MEMORY'
2021-10-17T04:48:18.374145Z 0 [Note] Shutting down plugin 'CSV'
2021-10-17T04:48:18.374154Z 0 [Note] Shutting down plugin 'sha256_password'
2021-10-17T04:48:18.374158Z 0 [Note] Shutting down plugin 'mysql_native_password'
2021-10-17T04:48:18.374375Z 0 [Note] Shutting down plugin 'binlog'
2021-10-17T04:48:18.375238Z 0 [Note] mysqld: Shutdown complete

2021-10-17 04:48:18+00:00 [Note] [Entrypoint]: Temporary server stopped

2021-10-17 04:48:18+00:00 [Note] [Entrypoint]: MySQL init process done. Ready for start up.

2021-10-17T04:48:19.010854Z 0 [Warning] TIMESTAMP with implicit DEFAULT value is deprecated. Please use --explicit_defaults_for_timestamp server option (see documentation for more details).
2021-10-17T04:48:19.012136Z 0 [Note] mysqld (mysqld 5.7.35) starting as process 1 ...
2021-10-17T04:48:19.014549Z 0 [Note] InnoDB: PUNCH HOLE support available
2021-10-17T04:48:19.014589Z 0 [Note] InnoDB: Mutexes and rw_locks use GCC atomic builtins
2021-10-17T04:48:19.014593Z 0 [Note] InnoDB: Uses event mutexes
2021-10-17T04:48:19.014595Z 0 [Note] InnoDB: GCC builtin __atomic_thread_fence() is used for memory barrier
2021-10-17T04:48:19.014597Z 0 [Note] InnoDB: Compressed tables use zlib 1.2.11
2021-10-17T04:48:19.014599Z 0 [Note] InnoDB: Using Linux native AIO
2021-10-17T04:48:19.014808Z 0 [Note] InnoDB: Number of pools: 1
2021-10-17T04:48:19.014910Z 0 [Note] InnoDB: Using CPU crc32 instructions
2021-10-17T04:48:19.016400Z 0 [Note] InnoDB: Initializing buffer pool, total size = 128M, instances = 1, chunk size = 128M
2021-10-17T04:48:19.022576Z 0 [Note] InnoDB: Completed initialization of buffer pool
2021-10-17T04:48:19.024775Z 0 [Note] InnoDB: If the mysqld execution user is authorized, page cleaner thread priority can be changed. See the man page of setpriority().
2021-10-17T04:48:19.036754Z 0 [Note] InnoDB: Highest supported file format is Barracuda.
2021-10-17T04:48:19.045977Z 0 [Note] InnoDB: Creating shared tablespace for temporary tables
2021-10-17T04:48:19.046043Z 0 [Note] InnoDB: Setting file './ibtmp1' size to 12 MB. Physically writing the file full; Please wait ...
2021-10-17T04:48:19.059729Z 0 [Note] InnoDB: File './ibtmp1' size is now 12 MB.
2021-10-17T04:48:19.060304Z 0 [Note] InnoDB: 96 redo rollback segment(s) found. 96 redo rollback segment(s) are active.
2021-10-17T04:48:19.060339Z 0 [Note] InnoDB: 32 non-redo rollback segment(s) are active.
2021-10-17T04:48:19.061083Z 0 [Note] InnoDB: 5.7.35 started; log sequence number 12658916
2021-10-17T04:48:19.061526Z 0 [Note] InnoDB: Loading buffer pool(s) from /var/lib/mysql/ib_buffer_pool
2021-10-17T04:48:19.061694Z 0 [Note] Plugin 'FEDERATED' is disabled.
2021-10-17T04:48:19.064227Z 0 [Note] InnoDB: Buffer pool(s) load completed at 211017  4:48:19
2021-10-17T04:48:19.065374Z 0 [Note] Found ca.pem, server-cert.pem and server-key.pem in data directory. Trying to enable SSL support using them.
2021-10-17T04:48:19.065411Z 0 [Note] Skipping generation of SSL certificates as certificate files are present in data directory.
2021-10-17T04:48:19.065436Z 0 [Warning] A deprecated TLS version TLSv1 is enabled. Please use TLSv1.2 or higher.
2021-10-17T04:48:19.065456Z 0 [Warning] A deprecated TLS version TLSv1.1 is enabled. Please use TLSv1.2 or higher.
2021-10-17T04:48:19.065848Z 0 [Warning] CA certificate ca.pem is self signed.
2021-10-17T04:48:19.065886Z 0 [Note] Skipping generation of RSA key pair as key files are present in data directory.
2021-10-17T04:48:19.066360Z 0 [Note] Server hostname (bind-address): '*'; port: 3306
2021-10-17T04:48:19.066465Z 0 [Note] IPv6 is available.
2021-10-17T04:48:19.066503Z 0 [Note]   - '::' resolves to '::';
2021-10-17T04:48:19.066515Z 0 [Note] Server socket created on IP: '::'.
2021-10-17T04:48:19.070675Z 0 [Warning] Insecure configuration for --pid-file: Location '/var/run/mysqld' in the path is accessible to all OS users. Consider choosing a different directory.
2021-10-17T04:48:19.075923Z 0 [Note] Event Scheduler: Loaded 0 events
2021-10-17T04:48:19.076404Z 0 [Note] mysqld: ready for connections.
Version: '5.7.35'  socket: '/var/run/mysqld/mysqld.sock'  port: 3306  MySQL Community Server (GPL)
2021-10-17T04:49:43.475074Z 0 [Note] Giving 0 client threads a chance to die gracefully
2021-10-17T04:49:43.475180Z 0 [Note] Shutting down slave threads
2021-10-17T04:49:43.475189Z 0 [Note] Forcefully disconnecting 0 remaining clients
2021-10-17T04:49:43.475235Z 0 [Note] Event Scheduler: Purging the queue. 0 events
2021-10-17T04:49:43.475412Z 0 [Note] Binlog end
2021-10-17T04:49:43.476242Z 0 [Note] Shutting down plugin 'ngram'
2021-10-17T04:49:43.476300Z 0 [Note] Shutting down plugin 'partition'
2021-10-17T04:49:43.476309Z 0 [Note] Shutting down plugin 'BLACKHOLE'
2021-10-17T04:49:43.476315Z 0 [Note] Shutting down plugin 'ARCHIVE'
2021-10-17T04:49:43.476320Z 0 [Note] Shutting down plugin 'PERFORMANCE_SCHEMA'
2021-10-17T04:49:43.476365Z 0 [Note] Shutting down plugin 'MRG_MYISAM'
2021-10-17T04:49:43.476408Z 0 [Note] Shutting down plugin 'MyISAM'
2021-10-17T04:49:43.476476Z 0 [Note] Shutting down plugin 'INNODB_SYS_VIRTUAL'
2021-10-17T04:49:43.476527Z 0 [Note] Shutting down plugin 'INNODB_SYS_DATAFILES'
2021-10-17T04:49:43.476540Z 0 [Note] Shutting down plugin 'INNODB_SYS_TABLESPACES'
2021-10-17T04:49:43.476546Z 0 [Note] Shutting down plugin 'INNODB_SYS_FOREIGN_COLS'
2021-10-17T04:49:43.476551Z 0 [Note] Shutting down plugin 'INNODB_SYS_FOREIGN'
2021-10-17T04:49:43.476598Z 0 [Note] Shutting down plugin 'INNODB_SYS_FIELDS'
2021-10-17T04:49:43.476658Z 0 [Note] Shutting down plugin 'INNODB_SYS_COLUMNS'
2021-10-17T04:49:43.476666Z 0 [Note] Shutting down plugin 'INNODB_SYS_INDEXES'
2021-10-17T04:49:43.476671Z 0 [Note] Shutting down plugin 'INNODB_SYS_TABLESTATS'
2021-10-17T04:49:43.476676Z 0 [Note] Shutting down plugin 'INNODB_SYS_TABLES'
2021-10-17T04:49:43.476681Z 0 [Note] Shutting down plugin 'INNODB_FT_INDEX_TABLE'
2021-10-17T04:49:43.476685Z 0 [Note] Shutting down plugin 'INNODB_FT_INDEX_CACHE'
2021-10-17T04:49:43.476695Z 0 [Note] Shutting down plugin 'INNODB_FT_CONFIG'
2021-10-17T04:49:43.476705Z 0 [Note] Shutting down plugin 'INNODB_FT_BEING_DELETED'
2021-10-17T04:49:43.476709Z 0 [Note] Shutting down plugin 'INNODB_FT_DELETED'
2021-10-17T04:49:43.476746Z 0 [Note] Shutting down plugin 'INNODB_FT_DEFAULT_STOPWORD'
2021-10-17T04:49:43.476755Z 0 [Note] Shutting down plugin 'INNODB_METRICS'
2021-10-17T04:49:43.476761Z 0 [Note] Shutting down plugin 'INNODB_TEMP_TABLE_INFO'
2021-10-17T04:49:43.476766Z 0 [Note] Shutting down plugin 'INNODB_BUFFER_POOL_STATS'
2021-10-17T04:49:43.476791Z 0 [Note] Shutting down plugin 'INNODB_BUFFER_PAGE_LRU'
2021-10-17T04:49:43.476824Z 0 [Note] Shutting down plugin 'INNODB_BUFFER_PAGE'
2021-10-17T04:49:43.476837Z 0 [Note] Shutting down plugin 'INNODB_CMP_PER_INDEX_RESET'
2021-10-17T04:49:43.476844Z 0 [Note] Shutting down plugin 'INNODB_CMP_PER_INDEX'
2021-10-17T04:49:43.476884Z 0 [Note] Shutting down plugin 'INNODB_CMPMEM_RESET'
2021-10-17T04:49:43.476932Z 0 [Note] Shutting down plugin 'INNODB_CMPMEM'
2021-10-17T04:49:43.476977Z 0 [Note] Shutting down plugin 'INNODB_CMP_RESET'
2021-10-17T04:49:43.476988Z 0 [Note] Shutting down plugin 'INNODB_CMP'
2021-10-17T04:49:43.476994Z 0 [Note] Shutting down plugin 'INNODB_LOCK_WAITS'
2021-10-17T04:49:43.476999Z 0 [Note] Shutting down plugin 'INNODB_LOCKS'
2021-10-17T04:49:43.477005Z 0 [Note] Shutting down plugin 'INNODB_TRX'
2021-10-17T04:49:43.477010Z 0 [Note] Shutting down plugin 'InnoDB'
2021-10-17T04:49:43.477202Z 0 [Note] InnoDB: FTS optimize thread exiting.
2021-10-17T04:49:43.477599Z 0 [Note] InnoDB: Starting shutdown...
2021-10-17T04:49:43.578425Z 0 [Note] InnoDB: Dumping buffer pool(s) to /var/lib/mysql/ib_buffer_pool
2021-10-17T04:49:43.579062Z 0 [Note] InnoDB: Buffer pool(s) dump completed at 211017  4:49:43
2021-10-17T04:49:45.098715Z 0 [Note] InnoDB: Shutdown completed; log sequence number 12658944
2021-10-17T04:49:45.102648Z 0 [Note] InnoDB: Removed temporary tablespace data file: "ibtmp1"
2021-10-17T04:49:45.102731Z 0 [Note] Shutting down plugin 'MEMORY'
2021-10-17T04:49:45.102745Z 0 [Note] Shutting down plugin 'CSV'
2021-10-17T04:49:45.102754Z 0 [Note] Shutting down plugin 'sha256_password'
2021-10-17T04:49:45.102760Z 0 [Note] Shutting down plugin 'mysql_native_password'
2021-10-17T04:49:45.103053Z 0 [Note] Shutting down plugin 'binlog'
2021-10-17T04:49:45.104242Z 0 [Note] mysqld: Shutdown complete


C:\Users\ptoma>docker run -it --network my_test_another -e "MYSQL_ROOT_PASSWORD=root123" -e "MYSQL_DATABASE=test" -e "MYSQL_USER=test" -e "MYSQL_PASSWORD=test123" -p 3306:3306 mysql:5.7.35
2021-10-17 04:53:09+00:00 [Note] [Entrypoint]: Entrypoint script for MySQL Server 5.7.35-1debian10 started.
2021-10-17 04:53:09+00:00 [Note] [Entrypoint]: Switching to dedicated user 'mysql'
2021-10-17 04:53:09+00:00 [Note] [Entrypoint]: Entrypoint script for MySQL Server 5.7.35-1debian10 started.
2021-10-17 04:53:09+00:00 [Note] [Entrypoint]: Initializing database files
2021-10-17T04:53:09.558247Z 0 [Warning] TIMESTAMP with implicit DEFAULT value is deprecated. Please use --explicit_defaults_for_timestamp server option (see documentation for more details).
2021-10-17T04:53:09.755861Z 0 [Warning] InnoDB: New log files created, LSN=45790
2021-10-17T04:53:09.815136Z 0 [Warning] InnoDB: Creating foreign key constraint system tables.
2021-10-17T04:53:09.889776Z 0 [Warning] No existing UUID has been found, so we assume that this is the first time that this server has been started. Generating a new UUID: 203e2ce0-2f06-11ec-9f40-0242ac120002.
2021-10-17T04:53:09.896024Z 0 [Warning] Gtid table is not ready to be used. Table 'mysql.gtid_executed' cannot be opened.
2021-10-17T04:53:10.380968Z 0 [Warning] A deprecated TLS version TLSv1 is enabled. Please use TLSv1.2 or higher.
2021-10-17T04:53:10.380999Z 0 [Warning] A deprecated TLS version TLSv1.1 is enabled. Please use TLSv1.2 or higher.
2021-10-17T04:53:10.381365Z 0 [Warning] CA certificate ca.pem is self signed.
2021-10-17T04:53:10.477361Z 1 [Warning] root@localhost is created with an empty password ! Please consider switching off the --initialize-insecure option.
2021-10-17 04:53:14+00:00 [Note] [Entrypoint]: Database files initialized
2021-10-17 04:53:14+00:00 [Note] [Entrypoint]: Starting temporary server
2021-10-17 04:53:14+00:00 [Note] [Entrypoint]: Waiting for server startup
2021-10-17T04:53:15.060121Z 0 [Warning] TIMESTAMP with implicit DEFAULT value is deprecated. Please use --explicit_defaults_for_timestamp server option (see documentation for more details).
2021-10-17T04:53:15.061771Z 0 [Note] mysqld (mysqld 5.7.35) starting as process 78 ...
2021-10-17T04:53:15.064788Z 0 [Note] InnoDB: PUNCH HOLE support available
2021-10-17T04:53:15.064843Z 0 [Note] InnoDB: Mutexes and rw_locks use GCC atomic builtins
2021-10-17T04:53:15.064848Z 0 [Note] InnoDB: Uses event mutexes
2021-10-17T04:53:15.064897Z 0 [Note] InnoDB: GCC builtin __atomic_thread_fence() is used for memory barrier
2021-10-17T04:53:15.064917Z 0 [Note] InnoDB: Compressed tables use zlib 1.2.11
2021-10-17T04:53:15.064924Z 0 [Note] InnoDB: Using Linux native AIO
2021-10-17T04:53:15.065167Z 0 [Note] InnoDB: Number of pools: 1
2021-10-17T04:53:15.065275Z 0 [Note] InnoDB: Using CPU crc32 instructions
2021-10-17T04:53:15.067974Z 0 [Note] InnoDB: Initializing buffer pool, total size = 128M, instances = 1, chunk size = 128M
2021-10-17T04:53:15.076327Z 0 [Note] InnoDB: Completed initialization of buffer pool
2021-10-17T04:53:15.079744Z 0 [Note] InnoDB: If the mysqld execution user is authorized, page cleaner thread priority can be changed. See the man page of setpriority().
2021-10-17T04:53:15.095410Z 0 [Note] InnoDB: Highest supported file format is Barracuda.
2021-10-17T04:53:15.151771Z 0 [Note] InnoDB: Creating shared tablespace for temporary tables
2021-10-17T04:53:15.151928Z 0 [Note] InnoDB: Setting file './ibtmp1' size to 12 MB. Physically writing the file full; Please wait ...
2021-10-17T04:53:15.185783Z 0 [Note] InnoDB: File './ibtmp1' size is now 12 MB.
2021-10-17T04:53:15.186745Z 0 [Note] InnoDB: 96 redo rollback segment(s) found. 96 redo rollback segment(s) are active.
2021-10-17T04:53:15.186799Z 0 [Note] InnoDB: 32 non-redo rollback segment(s) are active.
2021-10-17T04:53:15.189257Z 0 [Note] InnoDB: Waiting for purge to start
2021-10-17T04:53:15.239787Z 0 [Note] InnoDB: 5.7.35 started; log sequence number 2748441
2021-10-17T04:53:15.240337Z 0 [Note] InnoDB: Loading buffer pool(s) from /var/lib/mysql/ib_buffer_pool
2021-10-17T04:53:15.242765Z 0 [Note] Plugin 'FEDERATED' is disabled.
2021-10-17T04:53:15.244028Z 0 [Note] InnoDB: Buffer pool(s) load completed at 211017  4:53:15
2021-10-17T04:53:15.256448Z 0 [Note] Found ca.pem, server-cert.pem and server-key.pem in data directory. Trying to enable SSL support using them.
2021-10-17T04:53:15.256511Z 0 [Note] Skipping generation of SSL certificates as certificate files are present in data directory.
2021-10-17T04:53:15.256522Z 0 [Warning] A deprecated TLS version TLSv1 is enabled. Please use TLSv1.2 or higher.
2021-10-17T04:53:15.256568Z 0 [Warning] A deprecated TLS version TLSv1.1 is enabled. Please use TLSv1.2 or higher.
2021-10-17T04:53:15.257457Z 0 [Warning] CA certificate ca.pem is self signed.
2021-10-17T04:53:15.257531Z 0 [Note] Skipping generation of RSA key pair as key files are present in data directory.
2021-10-17T04:53:15.265951Z 0 [Warning] Insecure configuration for --pid-file: Location '/var/run/mysqld' in the path is accessible to all OS users. Consider choosing a different directory.
2021-10-17T04:53:15.282227Z 0 [Note] Event Scheduler: Loaded 0 events
2021-10-17T04:53:15.282860Z 0 [Note] mysqld: ready for connections.
Version: '5.7.35'  socket: '/var/run/mysqld/mysqld.sock'  port: 0  MySQL Community Server (GPL)
2021-10-17 04:53:15+00:00 [Note] [Entrypoint]: Temporary server started.
Warning: Unable to load '/usr/share/zoneinfo/iso3166.tab' as time zone. Skipping it.
Warning: Unable to load '/usr/share/zoneinfo/leap-seconds.list' as time zone. Skipping it.
Warning: Unable to load '/usr/share/zoneinfo/zone.tab' as time zone. Skipping it.
Warning: Unable to load '/usr/share/zoneinfo/zone1970.tab' as time zone. Skipping it.
2021-10-17 04:53:18+00:00 [Note] [Entrypoint]: Creating database test
2021-10-17 04:53:18+00:00 [Note] [Entrypoint]: Creating user test
2021-10-17 04:53:18+00:00 [Note] [Entrypoint]: Giving user test access to schema test

2021-10-17 04:53:18+00:00 [Note] [Entrypoint]: Stopping temporary server
2021-10-17T04:53:18.497501Z 0 [Note] Giving 0 client threads a chance to die gracefully
2021-10-17T04:53:18.497544Z 0 [Note] Shutting down slave threads
2021-10-17T04:53:18.497576Z 0 [Note] Forcefully disconnecting 0 remaining clients
2021-10-17T04:53:18.497591Z 0 [Note] Event Scheduler: Purging the queue. 0 events
2021-10-17T04:53:18.497689Z 0 [Note] Binlog end
2021-10-17T04:53:18.498368Z 0 [Note] Shutting down plugin 'ngram'
2021-10-17T04:53:18.498419Z 0 [Note] Shutting down plugin 'partition'
2021-10-17T04:53:18.498423Z 0 [Note] Shutting down plugin 'BLACKHOLE'
2021-10-17T04:53:18.498426Z 0 [Note] Shutting down plugin 'ARCHIVE'
2021-10-17T04:53:18.498428Z 0 [Note] Shutting down plugin 'PERFORMANCE_SCHEMA'
2021-10-17T04:53:18.498477Z 0 [Note] Shutting down plugin 'MRG_MYISAM'
2021-10-17T04:53:18.498506Z 0 [Note] Shutting down plugin 'MyISAM'
2021-10-17T04:53:18.498565Z 0 [Note] Shutting down plugin 'INNODB_SYS_VIRTUAL'
2021-10-17T04:53:18.498585Z 0 [Note] Shutting down plugin 'INNODB_SYS_DATAFILES'
2021-10-17T04:53:18.498589Z 0 [Note] Shutting down plugin 'INNODB_SYS_TABLESPACES'
2021-10-17T04:53:18.498591Z 0 [Note] Shutting down plugin 'INNODB_SYS_FOREIGN_COLS'
2021-10-17T04:53:18.498593Z 0 [Note] Shutting down plugin 'INNODB_SYS_FOREIGN'
2021-10-17T04:53:18.498638Z 0 [Note] Shutting down plugin 'INNODB_SYS_FIELDS'
2021-10-17T04:53:18.498642Z 0 [Note] Shutting down plugin 'INNODB_SYS_COLUMNS'
2021-10-17T04:53:18.498645Z 0 [Note] Shutting down plugin 'INNODB_SYS_INDEXES'
2021-10-17T04:53:18.498647Z 0 [Note] Shutting down plugin 'INNODB_SYS_TABLESTATS'
2021-10-17T04:53:18.498649Z 0 [Note] Shutting down plugin 'INNODB_SYS_TABLES'
2021-10-17T04:53:18.498650Z 0 [Note] Shutting down plugin 'INNODB_FT_INDEX_TABLE'
2021-10-17T04:53:18.498651Z 0 [Note] Shutting down plugin 'INNODB_FT_INDEX_CACHE'
2021-10-17T04:53:18.498653Z 0 [Note] Shutting down plugin 'INNODB_FT_CONFIG'
2021-10-17T04:53:18.498655Z 0 [Note] Shutting down plugin 'INNODB_FT_BEING_DELETED'
2021-10-17T04:53:18.498693Z 0 [Note] Shutting down plugin 'INNODB_FT_DELETED'
2021-10-17T04:53:18.498697Z 0 [Note] Shutting down plugin 'INNODB_FT_DEFAULT_STOPWORD'
2021-10-17T04:53:18.498702Z 0 [Note] Shutting down plugin 'INNODB_METRICS'
2021-10-17T04:53:18.498705Z 0 [Note] Shutting down plugin 'INNODB_TEMP_TABLE_INFO'
2021-10-17T04:53:18.498715Z 0 [Note] Shutting down plugin 'INNODB_BUFFER_POOL_STATS'
2021-10-17T04:53:18.498734Z 0 [Note] Shutting down plugin 'INNODB_BUFFER_PAGE_LRU'
2021-10-17T04:53:18.498738Z 0 [Note] Shutting down plugin 'INNODB_BUFFER_PAGE'
2021-10-17T04:53:18.498757Z 0 [Note] Shutting down plugin 'INNODB_CMP_PER_INDEX_RESET'
2021-10-17T04:53:18.498763Z 0 [Note] Shutting down plugin 'INNODB_CMP_PER_INDEX'
2021-10-17T04:53:18.498765Z 0 [Note] Shutting down plugin 'INNODB_CMPMEM_RESET'
2021-10-17T04:53:18.498772Z 0 [Note] Shutting down plugin 'INNODB_CMPMEM'
2021-10-17T04:53:18.498774Z 0 [Note] Shutting down plugin 'INNODB_CMP_RESET'
2021-10-17T04:53:18.498776Z 0 [Note] Shutting down plugin 'INNODB_CMP'
2021-10-17T04:53:18.498778Z 0 [Note] Shutting down plugin 'INNODB_LOCK_WAITS'
2021-10-17T04:53:18.498781Z 0 [Note] Shutting down plugin 'INNODB_LOCKS'
2021-10-17T04:53:18.498783Z 0 [Note] Shutting down plugin 'INNODB_TRX'
2021-10-17T04:53:18.498787Z 0 [Note] Shutting down plugin 'InnoDB'
2021-10-17T04:53:18.498831Z 0 [Note] InnoDB: FTS optimize thread exiting.
2021-10-17T04:53:18.498956Z 0 [Note] InnoDB: Starting shutdown...
2021-10-17T04:53:18.599512Z 0 [Note] InnoDB: Dumping buffer pool(s) to /var/lib/mysql/ib_buffer_pool
2021-10-17T04:53:18.600134Z 0 [Note] InnoDB: Buffer pool(s) dump completed at 211017  4:53:18
2021-10-17T04:53:20.270613Z 0 [Note] InnoDB: Shutdown completed; log sequence number 12658916
2021-10-17T04:53:20.273501Z 0 [Note] InnoDB: Removed temporary tablespace data file: "ibtmp1"
2021-10-17T04:53:20.273565Z 0 [Note] Shutting down plugin 'MEMORY'
2021-10-17T04:53:20.273576Z 0 [Note] Shutting down plugin 'CSV'
2021-10-17T04:53:20.273583Z 0 [Note] Shutting down plugin 'sha256_password'
2021-10-17T04:53:20.273587Z 0 [Note] Shutting down plugin 'mysql_native_password'
2021-10-17T04:53:20.273829Z 0 [Note] Shutting down plugin 'binlog'
2021-10-17T04:53:20.275037Z 0 [Note] mysqld: Shutdown complete

2021-10-17 04:53:20+00:00 [Note] [Entrypoint]: Temporary server stopped

2021-10-17 04:53:20+00:00 [Note] [Entrypoint]: MySQL init process done. Ready for start up.

2021-10-17T04:53:20.670033Z 0 [Warning] TIMESTAMP with implicit DEFAULT value is deprecated. Please use --explicit_defaults_for_timestamp server option (see documentation for more details).
2021-10-17T04:53:20.671167Z 0 [Note] mysqld (mysqld 5.7.35) starting as process 1 ...
2021-10-17T04:53:20.673447Z 0 [Note] InnoDB: PUNCH HOLE support available
2021-10-17T04:53:20.673481Z 0 [Note] InnoDB: Mutexes and rw_locks use GCC atomic builtins
2021-10-17T04:53:20.673485Z 0 [Note] InnoDB: Uses event mutexes
2021-10-17T04:53:20.673488Z 0 [Note] InnoDB: GCC builtin __atomic_thread_fence() is used for memory barrier
2021-10-17T04:53:20.673509Z 0 [Note] InnoDB: Compressed tables use zlib 1.2.11
2021-10-17T04:53:20.673530Z 0 [Note] InnoDB: Using Linux native AIO
2021-10-17T04:53:20.674071Z 0 [Note] InnoDB: Number of pools: 1
2021-10-17T04:53:20.674202Z 0 [Note] InnoDB: Using CPU crc32 instructions
2021-10-17T04:53:20.675834Z 0 [Note] InnoDB: Initializing buffer pool, total size = 128M, instances = 1, chunk size = 128M
2021-10-17T04:53:20.681592Z 0 [Note] InnoDB: Completed initialization of buffer pool
2021-10-17T04:53:20.683632Z 0 [Note] InnoDB: If the mysqld execution user is authorized, page cleaner thread priority can be changed. See the man page of setpriority().
2021-10-17T04:53:20.695116Z 0 [Note] InnoDB: Highest supported file format is Barracuda.
2021-10-17T04:53:20.746967Z 0 [Note] InnoDB: Creating shared tablespace for temporary tables
2021-10-17T04:53:20.747112Z 0 [Note] InnoDB: Setting file './ibtmp1' size to 12 MB. Physically writing the file full; Please wait ...
2021-10-17T04:53:20.774130Z 0 [Note] InnoDB: File './ibtmp1' size is now 12 MB.
2021-10-17T04:53:20.775097Z 0 [Note] InnoDB: 96 redo rollback segment(s) found. 96 redo rollback segment(s) are active.
2021-10-17T04:53:20.775124Z 0 [Note] InnoDB: 32 non-redo rollback segment(s) are active.
2021-10-17T04:53:20.777371Z 0 [Note] InnoDB: 5.7.35 started; log sequence number 12658916
2021-10-17T04:53:20.777720Z 0 [Note] InnoDB: Loading buffer pool(s) from /var/lib/mysql/ib_buffer_pool
2021-10-17T04:53:20.778091Z 0 [Note] Plugin 'FEDERATED' is disabled.
2021-10-17T04:53:20.782544Z 0 [Note] InnoDB: Buffer pool(s) load completed at 211017  4:53:20
2021-10-17T04:53:20.787100Z 0 [Note] Found ca.pem, server-cert.pem and server-key.pem in data directory. Trying to enable SSL support using them.
2021-10-17T04:53:20.787180Z 0 [Note] Skipping generation of SSL certificates as certificate files are present in data directory.
2021-10-17T04:53:20.787191Z 0 [Warning] A deprecated TLS version TLSv1 is enabled. Please use TLSv1.2 or higher.
2021-10-17T04:53:20.787198Z 0 [Warning] A deprecated TLS version TLSv1.1 is enabled. Please use TLSv1.2 or higher.
2021-10-17T04:53:20.788061Z 0 [Warning] CA certificate ca.pem is self signed.
2021-10-17T04:53:20.788192Z 0 [Note] Skipping generation of RSA key pair as key files are present in data directory.
2021-10-17T04:53:20.789782Z 0 [Note] Server hostname (bind-address): '*'; port: 3306
2021-10-17T04:53:20.789889Z 0 [Note] IPv6 is available.
2021-10-17T04:53:20.789947Z 0 [Note]   - '::' resolves to '::';
2021-10-17T04:53:20.790011Z 0 [Note] Server socket created on IP: '::'.
2021-10-17T04:53:20.797413Z 0 [Warning] Insecure configuration for --pid-file: Location '/var/run/mysqld' in the path is accessible to all OS users. Consider choosing a different directory.
2021-10-17T04:53:20.807846Z 0 [Note] Event Scheduler: Loaded 0 events
2021-10-17T04:53:20.808427Z 0 [Note] mysqld: ready for connections.
Version: '5.7.35'  socket: '/var/run/mysqld/mysqld.sock'  port: 3306  MySQL Community Server (GPL)
2021-10-17T05:19:47.384584Z 0 [Note] Giving 0 client threads a chance to die gracefully
2021-10-17T05:19:47.384676Z 0 [Note] Shutting down slave threads
2021-10-17T05:19:47.384683Z 0 [Note] Forcefully disconnecting 0 remaining clients
2021-10-17T05:19:47.384691Z 0 [Note] Event Scheduler: Purging the queue. 0 events
2021-10-17T05:19:47.384810Z 0 [Note] Binlog end
2021-10-17T05:19:47.385548Z 0 [Note] Shutting down plugin 'ngram'
2021-10-17T05:19:47.385655Z 0 [Note] Shutting down plugin 'partition'
2021-10-17T05:19:47.385661Z 0 [Note] Shutting down plugin 'BLACKHOLE'
2021-10-17T05:19:47.385695Z 0 [Note] Shutting down plugin 'ARCHIVE'
2021-10-17T05:19:47.385699Z 0 [Note] Shutting down plugin 'PERFORMANCE_SCHEMA'
2021-10-17T05:19:47.385736Z 0 [Note] Shutting down plugin 'MRG_MYISAM'
2021-10-17T05:19:47.385768Z 0 [Note] Shutting down plugin 'MyISAM'
2021-10-17T05:19:47.385805Z 0 [Note] Shutting down plugin 'INNODB_SYS_VIRTUAL'
2021-10-17T05:19:47.385814Z 0 [Note] Shutting down plugin 'INNODB_SYS_DATAFILES'
2021-10-17T05:19:47.385874Z 0 [Note] Shutting down plugin 'INNODB_SYS_TABLESPACES'
2021-10-17T05:19:47.385924Z 0 [Note] Shutting down plugin 'INNODB_SYS_FOREIGN_COLS'
2021-10-17T05:19:47.385960Z 0 [Note] Shutting down plugin 'INNODB_SYS_FOREIGN'
2021-10-17T05:19:47.385969Z 0 [Note] Shutting down plugin 'INNODB_SYS_FIELDS'
2021-10-17T05:19:47.385974Z 0 [Note] Shutting down plugin 'INNODB_SYS_COLUMNS'
2021-10-17T05:19:47.386001Z 0 [Note] Shutting down plugin 'INNODB_SYS_INDEXES'
2021-10-17T05:19:47.386007Z 0 [Note] Shutting down plugin 'INNODB_SYS_TABLESTATS'
2021-10-17T05:19:47.386011Z 0 [Note] Shutting down plugin 'INNODB_SYS_TABLES'
2021-10-17T05:19:47.386014Z 0 [Note] Shutting down plugin 'INNODB_FT_INDEX_TABLE'
2021-10-17T05:19:47.386018Z 0 [Note] Shutting down plugin 'INNODB_FT_INDEX_CACHE'
2021-10-17T05:19:47.386047Z 0 [Note] Shutting down plugin 'INNODB_FT_CONFIG'
2021-10-17T05:19:47.386054Z 0 [Note] Shutting down plugin 'INNODB_FT_BEING_DELETED'
2021-10-17T05:19:47.386058Z 0 [Note] Shutting down plugin 'INNODB_FT_DELETED'
2021-10-17T05:19:47.386065Z 0 [Note] Shutting down plugin 'INNODB_FT_DEFAULT_STOPWORD'
2021-10-17T05:19:47.386069Z 0 [Note] Shutting down plugin 'INNODB_METRICS'
2021-10-17T05:19:47.386073Z 0 [Note] Shutting down plugin 'INNODB_TEMP_TABLE_INFO'
2021-10-17T05:19:47.386099Z 0 [Note] Shutting down plugin 'INNODB_BUFFER_POOL_STATS'
2021-10-17T05:19:47.386105Z 0 [Note] Shutting down plugin 'INNODB_BUFFER_PAGE_LRU'
2021-10-17T05:19:47.386109Z 0 [Note] Shutting down plugin 'INNODB_BUFFER_PAGE'
2021-10-17T05:19:47.386116Z 0 [Note] Shutting down plugin 'INNODB_CMP_PER_INDEX_RESET'
2021-10-17T05:19:47.386120Z 0 [Note] Shutting down plugin 'INNODB_CMP_PER_INDEX'
2021-10-17T05:19:47.386148Z 0 [Note] Shutting down plugin 'INNODB_CMPMEM_RESET'
2021-10-17T05:19:47.386154Z 0 [Note] Shutting down plugin 'INNODB_CMPMEM'
2021-10-17T05:19:47.386158Z 0 [Note] Shutting down plugin 'INNODB_CMP_RESET'
2021-10-17T05:19:47.386165Z 0 [Note] Shutting down plugin 'INNODB_CMP'
2021-10-17T05:19:47.386204Z 0 [Note] Shutting down plugin 'INNODB_LOCK_WAITS'
2021-10-17T05:19:47.386210Z 0 [Note] Shutting down plugin 'INNODB_LOCKS'
2021-10-17T05:19:47.386214Z 0 [Note] Shutting down plugin 'INNODB_TRX'
2021-10-17T05:19:47.386218Z 0 [Note] Shutting down plugin 'InnoDB'
2021-10-17T05:19:47.386362Z 0 [Note] InnoDB: FTS optimize thread exiting.
2021-10-17T05:19:47.386807Z 0 [Note] InnoDB: Starting shutdown...
2021-10-17T05:19:47.487999Z 0 [Note] InnoDB: Dumping buffer pool(s) to /var/lib/mysql/ib_buffer_pool
2021-10-17T05:19:47.488587Z 0 [Note] InnoDB: Buffer pool(s) dump completed at 211017  5:19:47
2021-10-17T05:19:49.251435Z 0 [Note] InnoDB: Shutdown completed; log sequence number 12658944
2021-10-17T05:19:49.254923Z 0 [Note] InnoDB: Removed temporary tablespace data file: "ibtmp1"
2021-10-17T05:19:49.254997Z 0 [Note] Shutting down plugin 'MEMORY'
2021-10-17T05:19:49.255008Z 0 [Note] Shutting down plugin 'CSV'
2021-10-17T05:19:49.255015Z 0 [Note] Shutting down plugin 'sha256_password'
2021-10-17T05:19:49.255019Z 0 [Note] Shutting down plugin 'mysql_native_password'
2021-10-17T05:19:49.255273Z 0 [Note] Shutting down plugin 'binlog'
2021-10-17T05:19:49.256409Z 0 [Note] mysqld: Shutdown complete


C:\Users\ptoma>

Microsoft Windows [Version 10.0.19043.1288]
(c) Microsoft Corporation. All rights reserved.

C:\Users\ptoma>docker ps
CONTAINER ID   IMAGE                   COMMAND                  CREATED         STATUS         PORTS                    NAMES
9fa595425e25   jupyter/base-notebook   "tini -g -- start-no…"   2 minutes ago   Up 2 minutes   0.0.0.0:8888->8888/tcp   adoring_raman

C:\Users\ptoma>docker ps
CONTAINER ID   IMAGE                   COMMAND                  CREATED         STATUS         PORTS                    NAMES
9fa595425e25   jupyter/base-notebook   "tini -g -- start-no…"   7 minutes ago   Up 7 minutes   0.0.0.0:8888->8888/tcp   adoring_raman

C:\Users\ptoma>docker stop 9fa595425e25
9fa595425e25

C:\Users\ptoma>docker ps
CONTAINER ID   IMAGE     COMMAND   CREATED   STATUS    PORTS     NAMES

C:\Users\ptoma>docker ps
CONTAINER ID   IMAGE          COMMAND                  CREATED          STATUS          PORTS                 NAMES
83d445c3ccf1   mysql:5.7.35   "docker-entrypoint.s…"   39 seconds ago   Up 32 seconds   3306/tcp, 33060/tcp   thirsty_turing

C:\Users\ptoma>docker stop agitated_wing
Error response from daemon: No such container: agitated_wing

C:\Users\ptoma>docker stop 83d445c3ccf1
83d445c3ccf1

C:\Users\ptoma>docker ps
CONTAINER ID   IMAGE          COMMAND                  CREATED          STATUS          PORTS                               NAMES
357abe9d3a6b   mysql:5.7.35   "docker-entrypoint.s…"   31 seconds ago   Up 24 seconds   0.0.0.0:3306->3306/tcp, 33060/tcp   wizardly_moore

C:\Users\ptoma>docker run -p 8888:8888 --network my_test_another jupyter/base-notebook
WARN: Jupyter Notebook deprecation notice https://github.com/jupyter/docker-stacks#jupyter-notebook-deprecation-notice.
Executing the command: jupyter notebook
[I 04:56:47.423 NotebookApp] Writing notebook server cookie secret to /home/jovyan/.local/share/jupyter/runtime/notebook_cookie_secret
[W 2021-10-17 04:56:48.093 LabApp] 'ip' has moved from NotebookApp to ServerApp. This config will be passed to ServerApp. Be sure to update your config before our next release.
[W 2021-10-17 04:56:48.093 LabApp] 'port' has moved from NotebookApp to ServerApp. This config will be passed to ServerApp. Be sure to update your config before our next release.
[W 2021-10-17 04:56:48.093 LabApp] 'port' has moved from NotebookApp to ServerApp. This config will be passed to ServerApp. Be sure to update your config before our next release.
[W 2021-10-17 04:56:48.093 LabApp] 'port' has moved from NotebookApp to ServerApp. This config will be passed to ServerApp. Be sure to update your config before our next release.
[I 2021-10-17 04:56:48.109 LabApp] JupyterLab extension loaded from /opt/conda/lib/python3.9/site-packages/jupyterlab
[I 2021-10-17 04:56:48.109 LabApp] JupyterLab application directory is /opt/conda/share/jupyter/lab
[I 04:56:48.116 NotebookApp] Serving notebooks from local directory: /home/jovyan
[I 04:56:48.116 NotebookApp] Jupyter Notebook 6.4.4 is running at:
[I 04:56:48.116 NotebookApp] http://3d1e31050355:8888/?token=c8f608ae82cc26e922da8b5577de5ad460385f5c865cb0f1
[I 04:56:48.116 NotebookApp]  or http://127.0.0.1:8888/?token=c8f608ae82cc26e922da8b5577de5ad460385f5c865cb0f1
[I 04:56:48.116 NotebookApp] Use Control-C to stop this server and shut down all kernels (twice to skip confirmation).
[C 04:56:48.122 NotebookApp]

    To access the notebook, open this file in a browser:
        file:///home/jovyan/.local/share/jupyter/runtime/nbserver-8-open.html
    Or copy and paste one of these URLs:
        http://3d1e31050355:8888/?token=c8f608ae82cc26e922da8b5577de5ad460385f5c865cb0f1
     or http://127.0.0.1:8888/?token=c8f608ae82cc26e922da8b5577de5ad460385f5c865cb0f1
[I 04:56:55.356 NotebookApp] 302 GET /?token=c8f608ae82cc26e922da8b5577de5ad460385f5c865cb0f1 (172.18.0.1) 0.900000ms
/opt/conda/lib/python3.9/json/encoder.py:257: UserWarning: date_default is deprecated since jupyter_client 7.0.0. Use jupyter_client.jsonutil.json_default.
  return _iterencode(o, 0)
[I 04:56:58.569 NotebookApp] Creating new notebook in
[I 04:56:58.641 NotebookApp] Writing notebook-signing key to /home/jovyan/.local/share/jupyter/notebook_secret
[W 04:57:01.121 NotebookApp] 404 GET /nbextensions/widgets/notebook/js/extension.js?v=20211017045647 (172.18.0.1) 19.150000ms referer=http://127.0.0.1:8888/notebooks/Untitled.ipynb?kernel_name=python3
Exception in callback <TaskWakeupMethWrapper object at 0x7f68d7267d30>(<Future finis...7f1"\r\n\r\n'>)
handle: <Handle <TaskWakeupMethWrapper object at 0x7f68d7267d30>(<Future finis...7f1"\r\n\r\n'>)>
Traceback (most recent call last):
  File "/opt/conda/lib/python3.9/asyncio/events.py", line 80, in _run
    self._context.run(self._callback, *self._args)
RuntimeError: Cannot enter into task <Task pending name='Task-12' coro=<HTTP1ServerConnection._server_request_loop() running at /opt/conda/lib/python3.9/site-packages/tornado/http1connection.py:823> wait_for=<Future finished result=b'GET /api/co...47f1"\r\n\r\n'> cb=[IOLoop.add_future.<locals>.<lambda>() at /opt/conda/lib/python3.9/site-packages/tornado/ioloop.py:688]> while another task <Task pending name='Task-1' coro=<MultiKernelManager._async_start_kernel() running at /opt/conda/lib/python3.9/site-packages/jupyter_client/multikernelmanager.py:186>> is being executed.
Exception in callback <TaskWakeupMethWrapper object at 0x7f68d6a4bd30>(<Future finis...7f1"\r\n\r\n'>)
handle: <Handle <TaskWakeupMethWrapper object at 0x7f68d6a4bd30>(<Future finis...7f1"\r\n\r\n'>)>
Traceback (most recent call last):
  File "/opt/conda/lib/python3.9/asyncio/events.py", line 80, in _run
    self._context.run(self._callback, *self._args)
RuntimeError: Cannot enter into task <Task pending name='Task-10' coro=<HTTP1ServerConnection._server_request_loop() running at /opt/conda/lib/python3.9/site-packages/tornado/http1connection.py:823> wait_for=<Future finished result=b'GET /kernel...47f1"\r\n\r\n'> cb=[IOLoop.add_future.<locals>.<lambda>() at /opt/conda/lib/python3.9/site-packages/tornado/ioloop.py:688]> while another task <Task pending name='Task-2' coro=<KernelManager._async_start_kernel() running at /opt/conda/lib/python3.9/site-packages/jupyter_client/manager.py:337>> is being executed.
[I 04:57:01.221 NotebookApp] Kernel started: 97aa6162-16ab-4a6e-a524-13d98e1d6482, name: python3
/opt/conda/lib/python3.9/json/encoder.py:257: UserWarning: date_default is deprecated since jupyter_client 7.0.0. Use jupyter_client.jsonutil.json_default.
  return _iterencode(o, 0)
[I 04:59:01.668 NotebookApp] Saving file at /Untitled.ipynb
[I 05:03:26.990 NotebookApp] Starting buffering for 97aa6162-16ab-4a6e-a524-13d98e1d6482:cc74205483654318a1929661d537c2c6
[I 05:03:27.313 NotebookApp] Kernel restarted: 97aa6162-16ab-4a6e-a524-13d98e1d6482
[I 05:03:27.366 NotebookApp] Restoring connection for 97aa6162-16ab-4a6e-a524-13d98e1d6482:cc74205483654318a1929661d537c2c6
[I 05:03:28.379 NotebookApp] Replaying 3 buffered messages
[I 05:05:01.262 NotebookApp] Saving file at /Untitled.ipynb
[I 05:07:01.638 NotebookApp] Saving file at /Untitled.ipynb
[I 05:09:01.256 NotebookApp] Saving file at /Untitled.ipynb
[I 05:11:01.654 NotebookApp] Saving file at /Untitled.ipynb
[I 05:15:01.612 NotebookApp] Saving file at /Untitled.ipynb
[C 05:19:36.937 NotebookApp] received signal 15, stopping
[I 05:19:36.937 NotebookApp] Shutting down 1 kernel
[I 05:19:36.938 NotebookApp] Kernel shutdown: 97aa6162-16ab-4a6e-a524-13d98e1d6482
[I 05:19:37.031 NotebookApp] Starting buffering for 97aa6162-16ab-4a6e-a524-13d98e1d6482:cc74205483654318a1929661d537c2c6
Exception in callback <TaskWakeupMethWrapper object at 0x7f68d6864f10>(<Future finis...7f1"\r\n\r\n'>)
handle: <Handle <TaskWakeupMethWrapper object at 0x7f68d6864f10>(<Future finis...7f1"\r\n\r\n'>)>
Traceback (most recent call last):
  File "/opt/conda/lib/python3.9/asyncio/events.py", line 80, in _run
    self._context.run(self._callback, *self._args)
RuntimeError: Cannot enter into task <Task pending name='Task-9' coro=<HTTP1ServerConnection._server_request_loop() running at /opt/conda/lib/python3.9/site-packages/tornado/http1connection.py:823> wait_for=<Future finished result=b'DELETE /api...47f1"\r\n\r\n'> cb=[IOLoop.add_future.<locals>.<lambda>() at /opt/conda/lib/python3.9/site-packages/tornado/ioloop.py:688]> while another task <Task pending name='Task-538' coro=<KernelManager._async_shutdown_kernel() running at /opt/conda/lib/python3.9/site-packages/jupyter_client/manager.py:443>> is being executed.
[I 05:19:37.244 NotebookApp] Shutting down 0 terminals

C:\Users\ptoma>

Microsoft Windows [Version 10.0.19043.1288]
(c) Microsoft Corporation. All rights reserved.

C:\Users\ptoma>docker ps
CONTAINER ID   IMAGE                   COMMAND                  CREATED              STATUS              PORTS                               NAMES
3d1e31050355   jupyter/base-notebook   "tini -g -- start-no…"   About a minute ago   Up About a minute   0.0.0.0:8888->8888/tcp              zen_benz
357abe9d3a6b   mysql:5.7.35            "docker-entrypoint.s…"   5 minutes ago        Up 5 minutes        0.0.0.0:3306->3306/tcp, 33060/tcp   wizardly_moore

C:\Users\ptoma>docker exec --it zen-benz sh
unknown flag: --it
See 'docker exec --help'.

C:\Users\ptoma>docker exec -it zen-benz sh
Error: No such container: zen-benz

C:\Users\ptoma>docker exec -it zen_benz sh
$ python --version
Python 3.9.7
$ !pip install mysql-connector-python
sh: 2: !pip: not found
$
C:\Users\ptoma>docker exec -it zen_benz sh
$ pip install mysql-connector-python
Collecting mysql-connector-python
  Downloading mysql_connector_python-8.0.26-cp39-cp39-manylinux1_x86_64.whl (30.9 MB)
     |████████████████████████████████| 30.9 MB 1.4 MB/s
Collecting protobuf>=3.0.0
  Downloading protobuf-3.18.1-cp39-cp39-manylinux_2_17_x86_64.manylinux2014_x86_64.whl (1.1 MB)
     |████████████████████████████████| 1.1 MB 578 kB/s
Installing collected packages: protobuf, mysql-connector-python
Successfully installed mysql-connector-python-8.0.26 protobuf-3.18.1
$ pip install pandas
Collecting pandas
  Downloading pandas-1.3.3-cp39-cp39-manylinux_2_17_x86_64.manylinux2014_x86_64.whl (11.5 MB)
     |████████████████████████████████| 11.5 MB 246 kB/s
Requirement already satisfied: python-dateutil>=2.7.3 in /opt/conda/lib/python3.9/site-packages (from pandas) (2.8.2)
Requirement already satisfied: pytz>=2017.3 in /opt/conda/lib/python3.9/site-packages (from pandas) (2021.3)
Collecting numpy>=1.17.3
  Downloading numpy-1.21.2-cp39-cp39-manylinux_2_12_x86_64.manylinux2010_x86_64.whl (15.8 MB)
     |████████████████████████████████| 15.8 MB 1.2 MB/s
Requirement already satisfied: six>=1.5 in /opt/conda/lib/python3.9/site-packages (from python-dateutil>=2.7.3->pandas) (1.16.0)
Installing collected packages: numpy, pandas
Successfully installed numpy-1.21.2 pandas-1.3.3
$ exit

C:\Users\ptoma>docker ps
CONTAINER ID   IMAGE                   COMMAND                  CREATED          STATUS          PORTS                               NAMES
3d1e31050355   jupyter/base-notebook   "tini -g -- start-no…"   9 minutes ago    Up 9 minutes    0.0.0.0:8888->8888/tcp              zen_benz
357abe9d3a6b   mysql:5.7.35            "docker-entrypoint.s…"   13 minutes ago   Up 13 minutes   0.0.0.0:3306->3306/tcp, 33060/tcp   wizardly_moore

C:\Users\ptoma>docker inspect network my_test_another
[
    {
        "Name": "my_test_another",
        "Id": "a86859bee2abe4700d07afcf8f6ebf5671daff200291216c4a43dfbba3178d4f",
        "Created": "2021-10-17T04:41:28.891821165Z",
        "Scope": "local",
        "Driver": "bridge",
        "EnableIPv6": false,
        "IPAM": {
            "Driver": "default",
            "Options": {},
            "Config": [
                {
                    "Subnet": "172.18.0.0/16",
                    "Gateway": "172.18.0.1"
                }
            ]
        },
        "Internal": false,
        "Attachable": false,
        "Ingress": false,
        "ConfigFrom": {
            "Network": ""
        },
        "ConfigOnly": false,
        "Containers": {
            "357abe9d3a6bac6188fc0995b1ba5a963d3851a5669ecad0afb5cdd91b6c1b18": {
                "Name": "wizardly_moore",
                "EndpointID": "4f7c1431aa6f686fc3d08964d21b8f2b472db5c3ff29948a08f2d6f5cfe3cb9f",
                "MacAddress": "02:42:ac:12:00:02",
                "IPv4Address": "172.18.0.2/16",
                "IPv6Address": ""
            },
            "3d1e31050355ea0b519c7ef0dcc498963154c5475645ac30ef6d2090aea894c2": {
                "Name": "zen_benz",
                "EndpointID": "6af0336bc50794e61d983f9312af7c20f1b96761a64e7b20946943845c2ce67f",
                "MacAddress": "02:42:ac:12:00:03",
                "IPv4Address": "172.18.0.3/16",
                "IPv6Address": ""
            }
        },
        "Options": {},
        "Labels": {}
    }
]
Error: No such object: network

C:\Users\ptoma>docker-compose --version
Docker Compose version v2.0.0

C:\Users\ptoma>docker-compose --version
Docker Compose version v2.0.0

C:\Users\ptoma>docker ps
CONTAINER ID   IMAGE                   COMMAND                  CREATED          STATUS          PORTS                               NAMES
3d1e31050355   jupyter/base-notebook   "tini -g -- start-no…"   22 minutes ago   Up 22 minutes   0.0.0.0:8888->8888/tcp              zen_benz
357abe9d3a6b   mysql:5.7.35            "docker-entrypoint.s…"   26 minutes ago   Up 26 minutes   0.0.0.0:3306->3306/tcp, 33060/tcp   wizardly_moore

C:\Users\ptoma>docker stop zen_benz
zen_benz

C:\Users\ptoma>docker stop wizardly_moore
wizardly_moore

C:\Users\ptoma>docker ps
CONTAINER ID   IMAGE     COMMAND   CREATED   STATUS    PORTS     NAMES

C:\Users\ptoma>docker inspect network my_test_another
[
    {
        "Name": "my_test_another",
        "Id": "a86859bee2abe4700d07afcf8f6ebf5671daff200291216c4a43dfbba3178d4f",
        "Created": "2021-10-17T04:41:28.891821165Z",
        "Scope": "local",
        "Driver": "bridge",
        "EnableIPv6": false,
        "IPAM": {
            "Driver": "default",
            "Options": {},
            "Config": [
                {
                    "Subnet": "172.18.0.0/16",
                    "Gateway": "172.18.0.1"
                }
            ]
        },
        "Internal": false,
        "Attachable": false,
        "Ingress": false,
        "ConfigFrom": {
            "Network": ""
        },
        "ConfigOnly": false,
        "Containers": {},
        "Options": {},
        "Labels": {}
    }
]
Error: No such object: network

C:\Users\ptoma>