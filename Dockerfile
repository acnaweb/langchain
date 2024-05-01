FROM python:3.9-slim

WORKDIR /opt/app

COPY src src
COPY requirements.txt .
COPY setup.py .

RUN pip install --no-cache-dir -e . && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

CMD [ "python", "src/main.py"]
