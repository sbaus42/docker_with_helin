# use an official Python runtime as a parent image
FROM python:2.7-slim

# Working dir
WORKDIR /app

# Copy stuff in this dir into the app thingy
ADD . /app

# Install packages required by the python thingy
RUN pip install --trusted-host pypi.python.org -r requirements.txt

# Make port 80 available to the world outside this container
EXPOSE 80

# Define environment variable
ENV NAME World

# Run app.py when the cointainer launches
CMD ["python", "app.py"]
