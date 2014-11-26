
; <<>> DiG 9.9.4-RedHat-9.9.4-14.el7 <<>> @127.0.0.1 cnn.com
; (1 server found)
;; global options: +cmd
;; Got answer:
;; ->>HEADER<<- opcode: QUERY, status: NOERROR, id: 32041
;; flags: qr rd ra; QUERY: 1, ANSWER: 2, AUTHORITY: 4, ADDITIONAL: 3

;; OPT PSEUDOSECTION:
; EDNS: version: 0, flags:; udp: 4096
;; QUESTION SECTION:
;cnn.com.			IN	A

;; ANSWER SECTION:
cnn.com.		228	IN	A	157.166.226.25
cnn.com.		228	IN	A	157.166.226.26

;; AUTHORITY SECTION:
cnn.com.		172727	IN	NS	ns2.p42.dynect.net.
cnn.com.		172727	IN	NS	ns1.p42.dynect.net.
cnn.com.		172727	IN	NS	ns3.timewarner.net.
cnn.com.		172727	IN	NS	ns1.timewarner.net.

;; ADDITIONAL SECTION:
ns1.timewarner.net.	172727	IN	A	204.74.108.238
ns3.timewarner.net.	172727	IN	A	199.7.68.238

;; Query time: 0 msec
;; SERVER: 127.0.0.1#53(127.0.0.1)
;; WHEN: Tue Nov 25 23:56:25 PST 2014
;; MSG SIZE  rcvd: 197

