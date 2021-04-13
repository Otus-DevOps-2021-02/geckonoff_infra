# geckonoff_infra
geckonoff Infra repository
ДЗ 5

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

bastion_IP = 178.154.199.40
someinternalhost_IP = 10.129.0.17

ДЗ 6

Для автоматической установки необходимых пакетов и запуска приложения были созданы скрипты
install_ruby.sh
install_mongodb.sh
deploy.sh

Для создания образа и дeплоя прилжения необходимо ввести команду
yc compute instance create \
  --name reddit-app \
  --hostname reddit-app \
  --memory=4 \
  --create-boot-disk image-folder-id=standard-images,image-family=ubuntu-1604-lts,size=10GB \
  --network-interface subnet-name=default-ru-central1-a,nat-ip-version=ipv4 \
  --metadata serial-port-enable=1 \
  --metadata-from-file user-data=./metadata.yaml

  testapp_IP = 84.201.130.60
  testapp_port = 9292

  ДЗ 7

  В данном ДЗ был создан образ виртуальной машины при помощи packer
 
  ДЗ 8
  Работа с Terraform-1.
  Были созданы файлы конфигураций. В данном ДЗ необходимо было создать виртуальную машину из ранее собранного образа и запустить развертывание приложения. Что и было проделано.
  Научились работать с пользовательскими переменными terraform.

  ДЗ 10
  Работа с ansible
  В данной домашней работы мы научились работать с модулями ansible из командной строки.
  Строить файл invenory в различных форматах
  А также выполнили простейший playbook
  Для работы с динамическим inventory был создан скрипт inventory.sh который был добавлен в конфигурацию ansible.cfg
  При вызове ./inventory.sh --list выводит список хостов и параметры подключения.

