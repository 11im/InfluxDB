#Python, CronJob Install
yum install python3
yum install cronie

#CronJob Initiate
systemctl start crond
systemctl enable crond

#Python Package Install
pip3 install influxdb
pip3 install numpy
pip install -U scikit-learn
pip install statsmodels


#Change Authorization
chmod 777 Command.sh, Input.sh