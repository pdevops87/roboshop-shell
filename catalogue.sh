echo -e "\e[32mDisable nodejs module"
echo -e "\e[35m*****************************\e[0m"
dnf module disable nodejs -y >>/tmp/roboshop.log

echo -e "\e[32menable nodejs 20 module"
echo -e "\e[35m*****************************\e[0m"
dnf module enable nodejs:20 -y >>/tmp/roboshop.log


echo -e "\e[32minstall nodejs module"
echo -e "\e[35m*****************************\e[0m"
dnf install nodejs -y >>/tmp/roboshop.log
echo $?

echo -e "\e[32mcreate  new user"
echo -e "\e[35m*****************************\e[0m"
useradd roboshop  &>>/tmp/roboshop.log
echo $?

echo -e "\e[32mremove app directory"
echo -e "\e[35m*****************************\e[0m"
rm -rf /app >>/tmp/roboshop.log
echo $?

echo -e "\e[32m make a directory"
echo -e "\e[35m*****************************\e[0m"
mkdir /app >>/tmp/roboshop.log
echo $?

echo -e "\e[32m Download catalogue content"
echo -e "\e[35m*****************************\e[0m"
curl -o /tmp/catalogue.zip https://roboshop-artifacts.s3.amazonaws.com/catalogue-v3.zip &>>/tmp/roboshop.log
echo $?

echo -e "\e[32m navigate to app directory"
echo -e "\e[35m*****************************\e[0m"
cd /app >>/tmp/roboshop.log
echo $?

echo -e "\e[32munzip catalogue content"
echo -e "\e[35m*****************************\e[0m"
unzip /tmp/catalogue.zip >>/tmp/roboshop.log
echo $?


