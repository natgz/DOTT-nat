FROM python:3-alpine

WORKDIR /app

COPY requirements.txt .
RUN pip install -r requirements.txt
RUN curl -fsSLO https://get.docker.com/builds/Linux/x86_64/docker-17.04.0-ce.tgz \
    tar xzvf docker-17.04.0-ce.tgz \
    mv docker/docker /usr/local/bin \
    rm -r docker docker-17.04.0-ce.tgz

COPY . .
CMD ["ash", "-c", "python api.py"]
# docker build -t pym .
# docker run -ti -p 8000:8000 pym
