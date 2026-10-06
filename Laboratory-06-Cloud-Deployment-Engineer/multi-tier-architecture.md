
# Two-Tier Architecture

A two-tier architecture is a system divided into two main layers or tiers: an application tier and a database tier. In this laboratory, the Nextcloud container works as the web/application tier while the MariaDB container works as the database tier.

## The Web/Application Tier

The web/application tier is responsible for providing the user interface and handling HTTP requests from users. In this project, the Nextcloud container provides the private cloud storage web interface. Users access Nextcloud through a web browser using port 8080.

## The Database Tier

The database tier is responsible for storing persistent information required by the application. In this project, MariaDB stores Nextcloud's database information, including user accounts, configuration information, and file metadata.

## Why Separate Them?

Separating the web server and database into different containers makes the system easier to manage, maintain, and scale. If the application and database are separated, each component can be updated, restarted, monitored, or scaled independently without placing everything inside one container.
