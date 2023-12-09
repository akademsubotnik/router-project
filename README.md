

TODO:
IT WOULD BE NICE TO HAVE A LIST OF IPS WITH LOCATION INFORMATION IN A TABLE IN GRAFANA DASHBOARD ALSO

*
*
*

This project collects network traffic logs from your router with ulogd and then forwards them onto a syslog-ng service running on a server on your LAN.
Promtail + GeoIP plugin read the syslog-ng log file and display on Grafana where the IPs are from.

This project is based on https://balagetech.com/monitor-network-traffic-openwrt-syslog-ng/ for openwrt ulogd router setup
This project is based on https://medium.com/@bossm8/geoip-dashboards-in-grafana-from-iptables-logs-101a3b256d55 for reading the syslog-ng file, parsing it with Promtail + GeoIP and displaying it on Grafana

![image](https://github.com/akademsubotnik/router-project/assets/44036625/ae215e48-518a-47e7-bb54-b10c5884a042)
