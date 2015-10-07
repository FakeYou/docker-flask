FROM python:3.4

RUN mkdir /flask

VOLUME ["/flask"]

ADD requirements.txt /flask/requirements.txt
RUN pip install --no-cache-dir -r /flask/requirements.txt

ADD src/run.py /flask/run.py

EXPOSE 5000

CMD python /flask/run.py