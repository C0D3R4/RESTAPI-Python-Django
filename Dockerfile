FROM python:2.7 # Sets the base image for the following commands.
ENV PYTHONUNBUFFERED 1 # define environment variable
RUN mkdir /scripts # executes command in new layer on top of current image.
WORKDIR /scripts # defines working directory for RUN and ADD commands below.
ADD requirements.txt /scripts/ # copies requirements.txt into filesystem of image in /scripts/ directory.
RUN pip install -r requirements.txt #install python packages listed in requirements.txt
ADD . /scripts/ # copies everything in current directory into filesystem of image in /scripts/ directory.
