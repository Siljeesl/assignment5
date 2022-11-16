FROM python:3.11-rc-bullseye

ENV PYTHONUNBUFFERED 1


WORKDIR /mysite

COPY requirements.txt requirements.txt
RUN pip3 install -r requirements.txt

COPY mysite/mysite .


CMD ["python3", "manage.py", "runserver", "0.0.0.0:8000"]
