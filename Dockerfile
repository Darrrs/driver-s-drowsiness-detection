# Use an appropriate base image for your application
FROM python:3.9

# Set the working directory in the container
WORKDIR /app

# Copy the project files into the container
COPY . /app

# Install the required dependencies
RUN pip install -r requirements.txt

# Set the appropriate environment variables, if necessary
ENV MY_ENV_VAR=value

# Expose the port on which your application runs
EXPOSE 5000

# Specify the command to run your application
CMD ["python", "app.py"]
