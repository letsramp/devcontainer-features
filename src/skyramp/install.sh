#!/usr/bin/env bash
set -e

MAX_USER_WATCHES="${MAX_USER_WATCHES:-524288}"
MAX_USER_INSTANCES="${MAX_USER_INSTANCES:-8192}"

if [ "$(id -u)" -ne 0 ]; then
    echo -e 'Script must be run as root. Use sudo, su, or add "USER root" to your Dockerfile before running this script.'
    exit 1
fi

CI=true bash -c "$(curl -fsSL https://skyramp-public.s3.us-west-2.amazonaws.com/installer.sh)"

echo "fs.inotify.max_user_watches=${MAX_USER_WATCHES}" |  tee -a /etc/sysctl.conf
echo "fs.inotify.max_user_instances=${MAX_USER_INSTANCES}" | tee -a /etc/sysctl.conf
