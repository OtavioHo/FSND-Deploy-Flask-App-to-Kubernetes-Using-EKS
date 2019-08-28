FROM python:stretch
# Set up app directory
COPY . /app
WORKDIR /app
# Install requirments
RUN pip install -r requirements.txt
# Expose port
EXPOSE 80
# Define entrypoint
ENTRYPOINT [ "gunicorn", "-b", "0.0.0.0:8080", "main:APP" ]
