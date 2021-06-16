FROM python:3.8-slim-buster
COPY . /app
RUN apt-get update -y && apt-get upgrade -y
RUN apt-get install gcc libpq-dev python3-dev nginx -y
	
RUN pip install -r /app/requirements.txt --no-cache-dir

EXPOSE 8080

CMD /app/nginx/nginx-config.sh ; python /app/manage.py migrate ; gunicorn -b :8000 --chdir /app/ESPOR.wsgi