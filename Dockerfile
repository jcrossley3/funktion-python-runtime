# A docker image for the funktion python runtime container.

FROM python:3-onbuild

COPY . /app
WORKDIR /app
RUN pip3 install -r requirements.txt

ENTRYPOINT ["python3"]
CMD ["server.py"]


