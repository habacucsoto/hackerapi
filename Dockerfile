FROM python:3
ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1
RUN mkdir /hackerdock
WORKDIR /hackerdock
COPY requirements.txt /hackerdock/
RUN pip install -r requirements.txt
COPY . /hackerdock/
CMD python manage.py runserver 0.0.0.0:8080
