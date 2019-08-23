FROM python:stretch
# Set up app directory
COPY . /app
WORKDIR /app
# Install requirments
RUN pip install -r requirements.txt
# Expose port
EXPOSE 8080
# Define entrypoint
ENTRYPOINT [ "gunicorn", "-b", ":8080", "main:APP" ]