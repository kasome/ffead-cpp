# The ffead-cpp Framework

ffead-cpp is a web-framework, application framework, utilities all bundled into one. 
It also provides an embedded HTTP/Web-Socket compliant high-performance server core. 
It is a collection of modules all geared towards performing individual roles which together form the cohesive back-bone of ffead-cpp.

It provides a very simple to use and maintain web-framework library with advanced features like Reflection, Dependency Injection (IOC),
Inbuilt REST/SOAP support, Security/Authentication features. Moreover implementation for interfacing to caching tools like 
Memcached/Redis are provided in-built. 
Database integration/ORM framework (SDORM) solves all major issues with respect to interfacing with SQL/No-SQL database alike.

Multi-level serialization or template level serialization is a high point of ffead-cpp core serialization run-time. Any C++ POCO class
can be marked as serializable and the run-time will take care of marshalling/un-marshalling the object to its intended serializable form
and back(JSON/XML/BINARY).

ffead-cpp can be easily driven by XML configuration, Services/Controllers/Filters/Interfaces/API(s) are all simple POCO classes without
any need for them to extend any classes. 
The differentiating feature in ffead-cpp is the usage/implementation/support for markers (Annotations in java). Simple **#pragma**
directives can now be used to drive the entire configuration in ffead-cpp, so you can just forget XML configuration.

All in all ffead-cpp is the gap in the world of C++ web application or enterprise application development which I have tried to fill
with my humble/honest effort.

Starting version 4.0 ffead-cpp only **cmake** builds are supported

Detailed OS specific instructions, instructions for installing the available server backends and docker/docker-compose scripts are located at [docker](https://github.com/sumeetchhetri/ffead-cpp/tree/master/docker)

Latest Techempower benchmarks - https://www.techempower.com/benchmarks/#section=test&runid=53c6220a-e110-466c-a333-2e879fea21ad&hw=ph&test=json&a=2

Features
==========
- Webrtc Signalling (websocket + api) (horizontally scalable peerjs compatible signalling server)
- Multiple server backends
    - embedded
    - nginx
    - apache
    - openlitespeed (experimental)
    - cinatra
    - lithium
    - drogon
    - libreactor (c)
    - vweb (vlang)
    - picov (vlang)
    - actix (rust)
    - hyper (rust)
    - thruster (rust)
    - rocket (rust)
    - h2o.cr (crystal)
    - crystal-http (crystal)
    - fasthttp (golang)
    - gnet (golang)
    - firenio (java)
    - rapidoid (java)
    - wizzardo-http (java)
- Web Socket Support
- Advanced ORM - SDORM (sql/monogo)
- Cache API (memcached/redis)
- Search Engine API (solr/elasticsearch) -- (experimental)
- Improved Thread/ThreadPool API(s)
- Marker based configuration (java style annotations)
- Reflection support
- Serialization support
- Date/Time Ultility functions
- Better Logging support
- HTTP2.0 Support (experimental)
- Dependency Injection

Quickstart (Using cmake)
===========
- Install cmake >= 3.8.2 and [prerequisites](https://github.com/sumeetchhetri/ffead-cpp/wiki/Prerequisites)
- cmake -DSRV_EMB=on -DMOD_SDORM_MONGO=on .
- make install -j4 (Build ffead-cpp along-with the sample applications in web + generate ffead-cpp binary)
- Sip some coffee
- cd ffead-cpp-4.0-bin/ (Navigate to the ffead-cpp binary folder)
- chmod +x *.sh
- ./server.sh (Startup ffead-cpp Njoy!!)


Webrtc Example (Uses peerjs)
===========
- Follow Quickstart (Using cmake) above
- Build docker image from [docker-webrtc](https://github.com/sumeetchhetri/ffead-cpp/tree/master/docker/webrtc-peerjs)
- Once the server starts, navigate to http://localhost:8080/peer-server/index.html in 2 tabs
- Enjoy p2p calling using the ffead-cpp webrtc (peerjs compatible) signalling server

For further details checkout the [wiki](https://github.com/sumeetchhetri/ffead-cpp/wiki) page
