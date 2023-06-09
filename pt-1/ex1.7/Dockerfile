# Start from the ubuntu image.
FROM ubuntu:20.04

# Use /usr/src/app as our workdir. The following instructions will be executed in this location.
WORKDIR /usr/src/app

RUN apt-get update 
RUN apt-get install -y curl

# Copy the script.sh file from this location to /usr/src/app/ creating /usr/src/app/script.sh
COPY script.sh .
RUN chmod +x script.sh


# When running docker run the command will be ./script.sh
CMD ./script.sh