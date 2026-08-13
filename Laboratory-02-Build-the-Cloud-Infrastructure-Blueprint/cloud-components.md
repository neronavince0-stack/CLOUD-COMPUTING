# Cloud Infrastructure Components

## 1. Compute Resources

**Purpose:** Compute resources provide the processing power needed to run programs and applications.

**Importance:** They are important in cloud computing because they allow users to run applications without owning physical servers.

**KillerCoda:** The Linux server uses a CPU and CPU cores to process commands and run applications. I checked these using `lscpu` and `nproc`.

## 2. Storage Resources

**Purpose:** Storage is used to save the operating system, applications, and files.

**Importance:** Cloud systems need storage to keep data available and organized.

**KillerCoda:** The Linux environment has disk storage and mounted file systems. I checked these using `lsblk` and `df -h`.

## 3. Networking Resources

**Purpose:** Networking allows the server to communicate with other computers and services.

**Importance:** It is important because cloud applications need to communicate with users and other systems through networks.

**KillerCoda:** The Linux server has network interfaces and an IP address. I checked the IP address using `hostname -I` and network information using `ip addr`.

## 4. Operating System

**Purpose:** The operating system manages the computer's hardware and allows applications to run.

**Importance:** It provides the basic environment needed to operate and manage cloud servers.

**KillerCoda:** The environment uses Linux as its operating system. I checked the OS information using `cat /etc/os-release` and the kernel using `uname -r`.

## Summary

Compute, storage, networking, and the operating system work together to make the KillerCoda Linux server function. These same components are also the foundation of most cloud computing environments.

