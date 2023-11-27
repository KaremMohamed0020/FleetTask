# Fleet Task Application

This is a Laravel application configured to run with Laravel Sail.

## Getting Started

### Prerequisites

- [Docker](https://www.docker.com/)
- [Docker Compose](https://docs.docker.com/compose/)

### Clone and Run

1. Clone the repository:

   ```bash
   git clone https://github.com/your-username/your-repo.git

2. Copy the environment file:
```bash
cp .env.example .env
```
3. Build and run the Docker containers:
```bash
cp .env.example .env
```
4. Build and run the Docker containers:
```bash
sail up -d
```
5. Install PHP dependencies:
```bash
sail composer install
```
6. Run Laravel migrations and seed the database:
```bash
sail artisan migrate --seed
```
7. install Laravel Passport:
```bash
sail artisan passport:install
```
8. Access the application at http://localhost


# Postman Collection

In the root folder, you'll find a Postman collection named "Postman Collection." Inside the collection, there is a variable called `BaseUrl`. Please follow the steps below to configure it:

1. Open the Postman Collection.

2. Locate the variable `BaseUrl`.

3. Update the variable to your desired port, and append "/api" to it.

   Example: If you are running the application on port 8080, set `BaseUrl` to "http://localhost:8080/api".

Now, you can use the Postman Collection to test the APIs with the updated base URL.

# Testing
```bash
 sail artisan test
```

# Database
database dump also on the root file

if you have any questions please let me know
