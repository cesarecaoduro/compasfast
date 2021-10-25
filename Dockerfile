FROM python:3.9.6-alpine

WORKDIR /fastcompas-app

#COPY requirements.txt .

RUN pip install fastapi uvicorn
RUN pip install cython --install-option="--no-cython-compile"
RUN pip install COMPAS

COPY ./src ./app

CMD ["python", "./app/main.py"]