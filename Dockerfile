# Use an official Python runtime as a parent image
FROM python:3.8

# Set the working directory in the container
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . /app

# Install Jupyter Notebook
RUN pip install jupyter

# Make port 8888 available to the world outside this container
EXPOSE 8888

# Run Jupyter Notebook
CMD ["jupyter", "notebook", "--ip=0.0.0.0", "--port=8888", "--allow-root", "--no-browser", "main.ipynb"]
