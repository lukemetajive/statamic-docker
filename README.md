# Statamic Docker Compose Project

This project sets up a Docker environment for running a Statamic CMS application. Below are the details for setting up and using the project.

## Project Structure

```
statamic-docker-compose
├── src
│   ├── public
│   │   └── index.php
│   └── statamic
│       └── index.php
├── vendor
│   └── autoload.php
├── composer.json
├── docker-compose.yml
├── Dockerfile
└── README.md
```

## Prerequisites

- Docker
- Docker Compose

## Setup Instructions

1. Clone the repository or download the project files.
2. Navigate to the project directory:
   ```
   cd statamic-docker-compose
   ```
3. Build the Docker images:
   ```
   docker-compose build
   ```
4. Start the services:
   ```
   docker-compose up
   ```

## Usage

- Access the Statamic application in your web browser at `http://localhost:8000`.
- Make sure to configure any necessary environment variables in the `.env` file.

## Contributing

Feel free to submit issues or pull requests for improvements or bug fixes.

## License

This project is licensed under the MIT License.