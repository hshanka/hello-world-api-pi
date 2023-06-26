# Use the official Python base image with version 3.x
FROM python:3

# Set the working directory in the container
WORKDIR /app

# Copy the requirements file to the container
COPY requirements.txt .

# Install the required Python packages
RUN pip install --no-cache-dir -r requirements.txt

# Copy the Python files to the container
COPY app.py .

# Expose the port that the Flask app will be listening on
EXPOSE 5000

# Set the environment variable to run the app in development mode
ENV FLASK_ENV=development

# Set the command to run the Flask app
CMD ["flask", "run", "--host=0.0.0.0"]
