# Use the official Python image as the base image
FROM python:3.10.7

# Set the working directory in the container
WORKDIR /app

# Copy the requirements file into the container
COPY requirements.txt .

# Install the required packages
RUN pip install --no-cache-dir -r requirements.txt

# Copy the rest of the application code into the container
COPY . .

# Expose port 80 for the application to listen on
EXPOSE 5000

# Start the Flask app when the container launches
CMD [ "python3", "-m" , "flask", "run", "--host=0.0.0.0"]