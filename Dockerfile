FROM python:3-alpine

WORKDIR /app

COPY requirements.txt .
RUN pip install -r requirements.txt
RUN apk add python3 
RUN pip install alpine==0.0.2
RUN apk add pkgconf
RUN apk add build-base
RUN apk add python3-dev

COPY . /usr/src/app
CMD ["ash", "-c", "python api.py"]
# docker build -t pym .
# docker run -ti -p 8000:8000 pym
