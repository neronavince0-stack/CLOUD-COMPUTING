# Mission Reflection

This laboratory activity helped me understand how Docker containers can make application deployment faster and easier compared with traditional Virtual Machines. Installing an operating system on a Virtual Machine usually takes more time because virtual hardware must be created, an operating system must be installed, and the system needs to be configured before an application can be installed. In contrast, a Docker container can start within seconds because it uses the host operating system kernel and contains only the application and its required dependencies. In this activity, I was able to run an Nginx web server using only a few Docker commands.

Port mapping using `-p 8080:80` is necessary because the Nginx web server is running inside the container on port 80. The first number, `8080`, represents the port on the host, while `80` represents the port inside the container. This mapping allows users to access the Nginx web server through `http://localhost:8080`. Without port mapping, the service running inside the container would not be directly accessible through the host's port 8080.

When the `docker rm` command is used, the specified stopped container is permanently removed. Data stored only inside the container's writable layer is also removed with the container. However, Docker images remain available, and data stored in persistent volumes can remain even after the container is deleted.

Containerization can improve collaboration between software developers and IT operations teams because developers can package applications and their dependencies into containers. IT operations teams can then deploy the same container in different environments. This supports DevOps by making application deployment more consistent and repeatable.

My GitHub portfolio is also evolving as I add more laboratory activities and technical documentation. This laboratory added practical experience with Docker, container deployment, networking, and container lifecycle management. It also helped me become more confident in documenting technical procedures and organizing my cloud computing projects.
