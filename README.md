# Laravel Application

## Introduction

Welcome to the Laravel application. This project is built on one of the most popular PHP frameworks, **Laravel (v11.39.1)**, known for its powerful features and elegant syntax. The application leverages MySQL for its database and provides an efficient and scalable development environment for various web solutions.

---

## Features

- **Laravel Framework** version 11.39.1 with modern PHP (^8.2) features.
- **Database**: MySQL support for robust and reliable data management.
- **Queue System**: Configured with a `database` queue connection for efficient job handling.
- **Frontend**:
    - **TailwindCSS** for modern responsive design.
    - **Vite** for fast and efficient asset bundling.
- **Ecosystem Tools**:
    - `npm` for managing frontend dependencies.
    - `Composer` for backend dependency management.
- **Testing**:
    - Pest for elegant and extensible test writing and execution.

---

## Requirements

- **PHP**: 8.2 or higher
- **Database**: MySQL 5.7+ / MariaDB 10.3+
- **Node.js**: 16.x or higher (with npm)
- **Composer**: Latest version

---

## Installation

Follow these steps to set up and run the application on your local environment.

### 1. Clone the Repository

```bash
git clone https://github.com/unsta/laravel-initial-setup
cd laravel-initial-setup
```

### 2. Install Dependencies

- Install PHP dependencies with Composer:

  ```bash
  composer install
  ```

- Install JavaScript packages with npm:

  ```bash
  npm install
  ```

### 3. Set Up Environment Variables

1. Copy the `.env.example` file to `.env`:

   ```bash
   cp .env.example .env
   ```

2. Update the `.env` file with your database credentials and other application configuration values.

### 4. Generate Application Key

Run the following command to generate an application encryption key:

```bash
php artisan key:generate
```

### 5. Run Migrations

Run the database migrations to create required tables:

```bash
php artisan migrate
```

### 6. Build Frontend Assets

For building and bundling frontend assets, use:

```bash
npm run dev
```

For production builds:

```bash
npm run build
```

---

## Starting the Application

### Local Development Server

```bash
php artisan serve
```

This will serve the application at [http://localhost:8000](http://localhost:8000).

### Using Laravel Sail

For a containerized development environment, use Laravel Sail:

```bash
./vendor/bin/sail up
```

---

## Testing

The project includes tests written with the **Pest** testing framework. Run tests using the following command:

```bash
php artisan test
```

---

## Working with Queues

The app uses a `database` queue driver. To process jobs, start the queue worker:

```bash
php artisan queue:work
```

---

## Available Tools and Packages

### Backend (PHP)

- **Laravel Framework (v11.39.1)**
- **Guzzle (v7.9.2)**: For HTTP requests.
- **Monolog (v3.8.1)**: Logging library.
- **Faker PHP (v1.24.1)**: For generating dummy data in tests or seeds.
- **Dragonmantank/Cron-Expression (v3.4.0)**: Used for powerful CRON expressions.

### Frontend (Node.js)

- **axios (v1.7.4)**: For HTTP requests in JavaScript.
- **tailwindcss (v3.4.13)**: TailwindCSS framework for styling.
- **vite**: Asset bundler for Laravel.
- **postcss (v8.4.47)** and **autoprefixer (v10.4.20)** for CSS processing.

---

## Artisan Commands

Below are a few commonly used Artisan commands for managing the app:

- **Clear cache**:

  ```bash
  php artisan optimize:clear
  ```

- **Run migrations**:

  ```bash
  php artisan migrate
  ```

- **Seed the database**:

  ```bash
  php artisan db:seed
  ```

- **Start the queue worker**:

  ```bash
  php artisan queue:work
  ```

