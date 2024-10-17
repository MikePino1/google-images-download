FROM python:3.8-slim

# Install required packages
RUN pip install selenium

# Set the working directory inside the container
WORKDIR /app

# Copy local files to the container
COPY ./google_images_download /app

# Define the entry point to run the app
ENTRYPOINT ["python", "google_images_download.py"]

