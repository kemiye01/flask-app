# # Use an official Python runtime as a parent image
# FROM python:3.7-alpine

# RUN mkdir /app

# # Set the working directory to /app
# WORKDIR /app

# # Copy the entire Flask application into the container
# COPY . /app

# # Install any needed packages specified in requirements.txt
# RUN pip install --trusted-host pypi.python.org -r requirements.txt

# # Expose the port the application will run on
# EXPOSE 5000

# ENV NAME world

# CMD ["python","flaskapp.py"]

# # Set the environment variable for Flask to know where to find the application
# ENV FLASK_APP flaskapp.py

# # Run the command to start the application
# CMD ["flask", "run", "--host=0.0.0.0"]
FROM python:3.9

RUN mkdir /app

WORKDIR /app

COPY requirements.txt .

RUN pip install --no-cache-dir -r requirements.txt

COPY . .

CMD ["python", "flaskapp.py"]