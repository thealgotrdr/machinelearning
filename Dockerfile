# Use an official Python runtime as a parent image
FROM ubuntu:xenial

# Set the working directory to /app
WORKDIR /app

# Copy the current directory contents into the container at /app
ADD . /app

# Make port 80 available to the world outside this container
#EXPOSE 80

RUN apt update
RUN apt install -y \
ntpdate \
libpgapack-mpi1 \
libopenmpi-dev \
libpgapack-serial1 curl \
libcurl4-openssl-dev

# Define environment variable
ENV NAME World

# Run app.py when the container launches
CMD ["/app/test.sh"]
