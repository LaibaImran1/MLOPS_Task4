# Use an official Python runtime as the base image
FROM python:3.8-slim AS base


WORKDIR /app


COPY . /app

# Install any needed packages specified in requirements.txt
FROM base AS dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Expose the port the app runs on
EXPOSE 5000


CMD ["python", "app.py"]
