#! /bin/bash

if [ "$1" == "--list" ]; then
cat<<EOF
{
    "_meta": {
        "hostvars": {
            "appserver": {
                "ansible_host": "178.154.201.94",
                "ansible_private_key_file": "~/.ssh/ash",
                "ansible_user": "ubuntu"
            },
            "dbserver": {
                "ansible_host": "178.154.202.165",
                "ansible_private_key_file": "~/.ssh/ash",
                "ansible_user": "ubuntu"
            }
        }
    },
    "all": {
        "children": [
            "app",
            "db",
            "ungrouped"
        ]
    },
    "app": {
        "hosts": [
            "appserver"
        ]
    },
    "db": {
        "hosts": [
            "dbserver"
        ]
    }
}
EOF
elif [ "$1" == "--host" ]; then
  echo '{"_meta": {hostvars": {}}}'
else
  echo "{ }"
fi
