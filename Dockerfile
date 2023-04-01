# Use the official Flutter image as a base image
FROM cirrusci/flutter:stable

# Set the working directory to /app
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . /app

# Install any needed packages specified in pubspec.yaml
RUN flutter pub get

# Expose the Dart observatory port (used for debugging)
EXPOSE 8181

# Start the Flutter development server
CMD ["flutter", "run", "--host", "0.0.0.0", "--device-id", "chrome", "--web-port", "8181"]

