echo "Your name $Name"
cp click.html index.html
sed -i "s/my/$Name/g" index.html
sudo docker build --tag my_httpd_image .
sudo docker stop my_httpd_container || echo "Container Exist"
sudo docker rm my_httpd_container || echo "Container Exist"
sudo docker run -p 4444:80 -d  --name my_httpd_container my_httpd_image
