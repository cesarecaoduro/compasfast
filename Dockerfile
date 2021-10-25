FROM python:3.9.6

WORKDIR /fastcompas-app

COPY requirements.txt .

RUN pip install cython --install-option="--no-cython-compile"
RUN pip install COMPAS
RUN pip install -r requirements.txt

COPY ./src ./app