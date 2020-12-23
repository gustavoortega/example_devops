#Use the minimum packages to run python based on Debian 10
FROM python:3.8-slim-buster

#Default directory
WORKDIR /usr/src/app

#Upgrade pip
RUN pip install --upgrade pip

#Install python modules and don't cache install files to save space
RUN pip install --no-cache-dir flask flask-api ifaddr

#Copy the application to the working directory
COPY app.py ./
COPY static ./static
COPY templates ./templates

#Start the website
CMD [ "python", "app.py"]