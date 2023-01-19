# monitoring
Monitoring using prometheus integrated with alert manager
also we use Grafana to show dashboards of some services
all deployed using docker
the alerts are to send to mail personal
you need initialize the containers in this order:
 - mysql.sh
you must get the IP from MYSQL container,to set up in the script mysql_exp.sh <IP_MYSQL_CONTAINER>
run this comand using the following script:
  getipcontainer.sh <CONTAINER_NAME>
 next to
 - mysql_exp.sh
 - pma.sh
 - cadvisor.sh
 - alertmanager.sh
 - node.sh
finally you must get all the ips from containers, CADVISOR, NODE_EXPORTER, MYSQL_EXPORTER and put on prometheus_config/prometheus.yml
and run the last script prom.sh
 - prom.sh

if you did the configuration correctly, go to localhost:9090 and status/targets
you will see that 
![image](https://user-images.githubusercontent.com/70656587/213340086-41eeeeb9-d885-4d2a-a74f-ed5a0a835e24.png)



