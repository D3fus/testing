FROM python:3.7-alpine
COPY . /app
WORKDIR /app
RUN pip install .
RUN testing create-db
RUN testing populate-db
RUN testing add-user -u admin -p admin
EXPOSE 5000
CMD ["testing", "run"]
