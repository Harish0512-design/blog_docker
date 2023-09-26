# Use an official Python runtime as a parent image
FROM python:3.8-slim

# Set the working directory to /app
WORKDIR /home
# Copy the requirements file
COPY requirements.txt .

# Install any needed packages specified in requirements.txt
RUN pip3 install --no-cache-dir -r requirements.txt

# Copy the application code
COPY . .

# Command to start django application
CMD ["python3", "manage.py", "runserver", "0.0.0.0:8000"]
