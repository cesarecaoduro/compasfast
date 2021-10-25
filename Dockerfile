FROM python:3.9.6

WORKDIR /code

COPY ./requirements.txt /code/requirements.txt
COPY ./ports.conf /code/ports.conf

RUN pip install cython --install-option="--no-cython-compile"
RUN pip install COMPAS
RUN pip install --no-cache-dir --upgrade -r /code/requirements.txt

COPY ./src /code/app

CMD ["uvicorn", "app.main:app", "--host", "0.0.0.0", "--port", "$PORT"]