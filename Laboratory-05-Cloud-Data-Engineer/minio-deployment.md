# MinIO Deployment

## Deployment Steps

First, I launched an Ubuntu Playground in KillerCoda and verified that Docker was available. I then deployed MinIO using Docker.

The exact Docker command I used was:

```bash
docker run -d -p 9000:9000 -p 9001:9001 --name minio-server \
-e "MINIO_ROOT_USER=cloudadmin" \
-e "MINIO_ROOT_PASSWORD=CloudNova2026!" \
quay.io/minio/minio server /data --console-address ":9001"

and i open the port in the top right side and open it in login using the credentials you provided
and then go into the create bucket and i created 1 and upload an image
