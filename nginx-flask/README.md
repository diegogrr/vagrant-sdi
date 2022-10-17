# VM com Nginx + Flask + Systemctl e Gunicorn

Este projeto implementa um site em Flask suportado pelo serviço Nginx em um sistema operacional Linux (Ubuntu Server). As configurações utilizadas permitem que o site Flask fique disponível mesmo após reinicilizações do sistema. Para isso são utilizados Gunicorn e Unix Socket. 

Acesso ao site Flask: http://<IP_DA_MAQUINA>:8080