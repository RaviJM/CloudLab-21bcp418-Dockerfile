# CloudLab-21bcp418-Dockerfile

**FROM python:3.9-slim:** This line specifies the base image for the Docker container. It pulls the official Python 3.9 slim image from Docker Hub, which is a minimal version of the Python image, optimized for size.
**ENV PYTHONDONTWRITEBYTECODE 1:** This sets an environment variable to tell Python not to write bytecode (.pyc) files to disk. Bytecode files are not needed in a containerized environment and can be omitted to save space.
**ENV PYTHONUNBUFFERED 1:** This sets another environment variable to ensure that Python outputs are sent straight to the terminal without being buffered. This can help with logging and debugging in containerized environments.
**WORKDIR /code:** This sets the working directory inside the container to /code. This is where the subsequent commands will be executed.
**COPY . .:** This copies the contents of the current directory (where the Dockerfile is located) into the /code directory in the container. This typically includes your application code and any other necessary files.
**RUN pip install --no-cache-dir -r requirements.txt:** This installs the Python dependencies listed in the requirements.txt file into the container. The --no-cache-dir flag ensures that pip does not cache the downloaded packages, which helps keep the Docker image size smaller.
**CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]:** This specifies the command to run when the Docker container starts. It runs the Django development server using the manage.py script, binding it to listen on all available interfaces (0.0.0.0) on port 8000 within the container. This is the typical command used to start a Django server during development.
