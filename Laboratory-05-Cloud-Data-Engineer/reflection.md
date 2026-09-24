# Mission Reflection

Object storage is better suited for storing millions of photos because it is designed to handle large amounts of unstructured data such as images, videos, and backups. Unlike traditional block storage, object storage organizes data as objects inside buckets and can scale as the amount of data increases. This makes it useful for a photo-sharing application where many users can continuously upload images.

Using Docker made it easier to deploy the MinIO storage server because I did not have to manually install and configure all of its required components. With one Docker command, I was able to download the MinIO image, create the container, set the administrator credentials, and expose the required ports. Docker also made the deployment more portable because the same container configuration can be used in another environment.

A bucket in cloud storage is a container used to organize and store objects such as images, videos, documents, and backups. In this activity, I created a bucket named `client-photos` and uploaded a test file to demonstrate how object storage works.

Large enterprise companies can protect their object storage data from physical server failures by using redundancy, replication, backups, and distributed storage systems. Data can be stored across multiple physical servers or locations so that if one server fails, another copy can still be accessed. Companies can also use monitoring and disaster recovery systems to help prevent permanent data loss.

My confidence in navigating the Linux command line is growing because I was able to use Docker commands to deploy and verify a cloud storage server. At first, I was unsure about using commands and understanding ports, but completing this activity helped me become more comfortable with commands such as `docker run` and `docker ps`. I also learned that troubleshooting errors is an important part of working with Linux and cloud technologies.
