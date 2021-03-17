# geckonoff_infra
geckonoff Infra repository

Для подключения к хосту someinternalhost в одну команду необходимо
1. На машине bastion в файл /etc/hosts добавить строчку
10.129.0.17 someinternalhost
2. Вход на someinternalhost с работчего устройства производится командой
ssh -i .ssh/ash  -A -J ash@178.154.192.103  someinternalhost

Для входа сразу по имени необходимо:
В файл /etc/hosts локальной машины добавит
EXTERNAL_IP_ADDRESS_BASTION bastion
В файл /etc/.ssh/config

Host someinternalhost
    IdentityFile ~/.ssh/ash
    IdentityFile yes
    ProxyJump ash@bastion

Host bastion
    IdentityFile .ssh/ash
    ForwardAgent yes
