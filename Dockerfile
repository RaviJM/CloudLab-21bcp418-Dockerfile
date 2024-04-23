# Use an official Python runtime as a parent image
FROM python:3.9-slim

# Set environment variables
ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

# Set the working directory in the container
WORKDIR /code

# Copy the current directory contents into the container at /code
COPY . .

# Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Command to run when the container starts
CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]
