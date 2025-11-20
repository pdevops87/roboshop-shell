dnf module disable redis -y
dnf module enable redis:7 -y

dnf install redis -y

 sudo sed -i -e '/protected-mode/ c protected-mode no'  /etc/redis/redis.conf

sed -i -e '/protected-mode/ c protected-mode no' -e 's/127.0.0.1/0.0.0.0/' /etc/redis/redis.conf

systemctl enable redis
systemctl restart redis


# sudo grep ^bind /etc/redis/redis.conf, many bind word starts from the beginning with #,...
# but some bind starts without any # for that we can use ^bind
# to change complete line :::  sudo sed -i -e '/protected-mode/ c protected-mode no'  /etc/redis/redis.conf