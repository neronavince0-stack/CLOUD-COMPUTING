# Types of Cloud Storage

Cloud storage can be divided into three primary types: Block Storage, File Storage, and Object Storage. Each type is designed for different storage requirements and workloads.

| Storage Type       | Description                                                                                                                                                     | Primary Use Case                                                                                    | Cloud Provider Example |
| ------------------ | --------------------------------------------------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------- | ---------------------- |
| **Block Storage**  | Stores data in fixed-size blocks that can be accessed individually. It behaves like a traditional hard drive or disk attached to a computer or virtual machine. | Best for virtual machines, databases, and applications that require fast and direct disk access.    | AWS EBS                |
| **File Storage**   | Stores data as files organized into folders and directories. Multiple users or systems can access the same files through a shared file system.                  | Best for shared folders, content management systems, and applications that need shared file access. | AWS EFS                |
| **Object Storage** | Stores data as objects along with metadata and a unique identifier. Objects are stored inside containers called buckets.                                        | Best for large amounts of unstructured data such as images, videos, backups, documents, and logs.   | AWS S3                 |

## Why Object Storage is Best for the Client

Object Storage is the best choice for the client's photo-sharing application because it is designed to store large amounts of unstructured data such as user-uploaded images. It can scale to millions of files while providing easy access and management through a web or API-based interface.

