# Python slim image
FROM python:3.11-slim

# Set the working directory
WORKDIR /app

# Copy requirements and config
COPY pyproject.toml ./
COPY config.ini ./

# Install dependencies
RUN pip install poetry && poetry install

# Copy source code
COPY src/ ./

# Run the application
CMD ["sleep", "infinity"] 