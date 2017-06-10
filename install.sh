# Tested yet
useradd -s /bin/bash -d /opt/stack -m stack
echo "stack ALL=(ALL) NOPASSWD: ALL" | sudo tee /etc/sudoers.d/stack
su - stack
apt-get update
apt-get install -y git lsb-core
git clone https://git.openstack.org/openstack-dev/devstack
cd devstack
echo '[[local|localrc]]
ADMIN_PASSWORD=capitain
DATABASE_PASSWORD=$ADMIN_PASSWORD
RABBIT_PASSWORD=$ADMIN_PASSWORD
SERVICE_PASSWORD=$ADMIN_PASSWORD' > local.conf



# Not tested yet

./stack.sh