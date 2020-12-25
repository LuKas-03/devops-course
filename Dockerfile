FROM python:3.8-alpine
COPY . /app
RUN apk update && pip install -r /app/requirements.txt --no-cache-dir

EXPOSE $PORT

RUN adduser -D espor
USER espor

CMD python /app/manage.py migrate
CMD python /app/manage.py runserver 0:$PORT