echo "Your name $Name"
sed i
sed -i 's/\(name=\).*/\\10/' /etc/yum.conf
sudo docker build --tag my_httpd_image .
sudo docker stop my_httpd_container || echo "Container Exist"
sudo docker rm my_httpd_container || echo "Container Exist"
sudo docker run -p 9999:80 --name my_httpd_container my_httpd_image
