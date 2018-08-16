# Registry Utils

List all images in your **Private Docker Registry**, including all **tags**, image **id** and creation **time**.



# Usage

```shell
REG_URL={{.RegistryUrl}} REG_USER={{.User}} REG_PASSWORD={{.Password}} ./list.sh
```



# Output

```shell
REPOSITORY & TAG                        IMAGE ID            CREATED
baas/corda-node
  \_ 2.0                                20faa2b5a10f        2018-08-14T14:47:04
baas/corda-notary
  \_ 2.0                                6d35648313db        2018-08-14T14:47:03
baas/corda-template1-artifacts
  \_ 0.0.1                              1c584377edf2        2018-08-14T14:44:46
baas/dev-server
  \_ 0.0.1                              3aa19f373d27        2018-08-14T12:51:30
baas/fabric-template1-artifacts
  \_ 0.0.1                              20087a9549d9        2018-08-14T12:49:14
baas/fabric-template2-artifacts
  \_ 0.0.1                              d2f64956ee07        2018-08-14T12:50:10
baas/platform-app
  \_ 0.0.1                              c026fc301363        2018-08-14T15:09:20
  \_ 0.0.1-nebulae-dev-a                c026fc301363        2018-08-14T15:09:20
baas/platform-server
  \_ 0.0.1                              59ab825e762a        2018-08-14T15:02:21
  \_ 0.0.1-nebulae-dev-a                59ab825e762a        2018-08-14T15:02:21
baas-app/poverty-relief-app
  \_ 0.0.1                              b46015b8bf8a        2018-08-14T13:39:23
baas-app/poverty-relief-server
  \_ 0.0.1                              1562a59a9423        2018-08-14T13:44:52
baas-app/trace-sample
  \_ 0.0.1                              3a2cf4203914        2018-08-14T12:54:35
baas-fabric/fabric-explorer
  \_ 0.0.1                              e35c609f342f        2018-08-14T15:03:31
  \_ 0.0.1-nebulae-dev-a                e35c609f342f        2018-08-14T15:03:31
baas-fabric/fabric-explorer-kafka
  \_ 0.0.1                              d9960229cf1d        2018-08-14T15:03:43
  \_ 0.0.1-nebulae-dev-a                d9960229cf1d        2018-08-14T15:03:43
baas-fabric/fabric-rest
  \_ 0.0.1                              cce10c525e9f        2018-08-14T15:03:20
  \_ 0.0.1-nebulae-dev-a                cce10c525e9f        2018-08-14T15:03:20
grafana/grafana
  \_ 4.6.3                              5d1d85717268        2017-12-14T09:07:22
hello-world
  \_ latest                             2cb0d9787c4d        2018-07-11T00:32:08
hyperledger/fabric-baseos
  \_ x86_64-0.3.1                       4b0cab202084        2017-05-09T21:44:16
hyperledger/fabric-ca
  \_ x86_64-1.0.0                       a15c59ecda5b        2017-07-11T15:57:22
hyperledger/fabric-ccenv
  \_ x86_64-1.0.0                       7182c260a5ca        2017-07-11T16:32:27
  \_ x86_64-1.0.1                       7e2019cf8174        2017-08-10T10:42:24
hyperledger/fabric-kafka
  \_ x86_64-1.0.0                       dbd3f94de4b5        2017-07-11T16:34:45
hyperledger/fabric-orderer
  \_ x86_64-1.0.0                       e317ca5638ba        2017-07-11T16:33:53
hyperledger/fabric-peer
  \_ x86_64-1.0.0                       6830dcd7b9b5        2017-07-11T16:33:34
  \_ x86_64-1.0.1                       abb05def5cfb        2017-08-10T10:46:46
hyperledger/fabric-zookeeper
  \_ x86_64-1.0.0                       e545dbf1c6af        2017-07-11T16:34:35
jenkins
  \_ 2.60.3                             cd14cecfdb3a        2018-07-17T16:20:34
mysql
  \_ 5.7                                75576f90a779        2018-07-31T16:57:31
postgres
  \_ 10.3                               b5ed9a4ab65b        2018-05-09T18:00:53
prom/alertmanager
  \_ v0.14.0                            23744b2d645c        2018-02-13T08:35:49
prom/node-exporter
  \_ v0.15.2                            ff5ecdcfc4a2        2017-12-05T14:55:43
prom/prometheus
  \_ v2.1.0                             c8ecf7c719c1        2018-01-19T13:12:19
registry
  \_ 2.6                                b2b03e9146e1        2018-07-06T17:33:34
timonwong/prometheus-webhook-dingtalk
  \_ v0.3.0                             5e05f165bf60        2017-12-21T13:49:15
```



# Dependency

`curl` & `jq`



# Reference

Docker Registry API https://docs.docker.com/registry/spec/api/

