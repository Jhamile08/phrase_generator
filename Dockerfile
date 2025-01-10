# Use the official Ruby 3.2 image as the base image
FROM ruby:3.2

# Set the working directory inside the container
WORKDIR /app

# Copy all files from the current directory on the host to the working directory in the container
COPY . .

# Define the command to run when the container starts
CMD ["ruby", "script/phrase_generator.rb"]
