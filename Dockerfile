# our base image
FROM python:3-onbuild

COPY . /usr/app/

# specify the port number the container should expose ..
EXPOSE 5000

WORKDIR /usr/app/

RUN pip install -r requirements.txt

# run the application
CMD python flight_price.py
