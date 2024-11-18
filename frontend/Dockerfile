# Use Nginx image as a basic image
FROM registry.cn-beijing.aliyuncs.com/docker_image_turn_ark/nginx:alpine

# Cooy a builded frontend document to default path of Nginx
COPY dist/ /usr/share/nginx/html

# Expose 80 port
EXPOSE 80

# Start Nginx Service
CMD ["nginx", "-g", "daemon off;"]
