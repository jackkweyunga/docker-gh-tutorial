FROM python:3-alpine

# Set the working directory
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . /app

# Install any needed packages specified in requirements.txt
RUN pip install -r requirements.txt

EXPOSE 9000

# Run app.py when the container launches
CMD ["python", "run_server.py"]
