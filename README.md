# pi-nightscout-arm64
cgm-remote-monitor for Raspberry Pi on 64 bit OS

Docker Image von [cgm-remote-monitor aka Nightscout](http://github.com/nightscout/cgm-remote-monitor) für den Raspberry Pi 3/4 auf arm64 (64bit) Basis.

Aktuelle Version: 14.2.2

Das Image kann bei [Docker Hub](https://hub.docker.com/r/dave2526/nightscout) geladen werden. Als zusätzlicher Container muss eine MongoDB z.B. [Mongo](https://hub.docker.com/_/mongo)  installiert werden, diese ist hier nicht enthalten.

Die Nightscout Variablen können einfach mit übergeben werden, oder z.B. mit Portainer eingestellt werden.
Mindestvariablen:  
MONGODB_URI= &lt; ip-des-mongo-containers &gt; :27017/nightscout  
API_SECRET= &lt; Passwort-mindestens-12-Stellen &gt;  

zum Start kann noch folgende Variable übergeben werden, da Nightscout nun Standard mäßig nur noch https:// verbindungen akzeptiert, im container sind allerdings keine Zertifikate integriert:  
INSECURE_USE_HTTP=true  
Dies ist nur zum Test geignet! Entweder Zertifikate nachinstallieren oder einen Server (Nginx, Apache,...) zusätzlich integrieren!
