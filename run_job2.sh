echo "Your name $Name"
cp fall.html index.html
sed -i "s/my/$Name/g" index.html
sudo docker build --tag my_httpd_image_2 .
sudo docker stop my_httpd_container_2 || echo "Container Exist"
sudo docker rm my_httpd_container_2 || echo "Container Exist"
sudo docker run -p 9999:80 -d  --name my_httpd_container_2 my_httpd_image_2
