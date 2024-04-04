FROM  python:3-alpine3.19
WORKDIR /movie-recommendation-system-main
ADD . /movie-recommendation-system-main
RUN apk update && \
    apk add --no-cache build-base gcc
RUN pip install -r requirements.txt
CMD ["python", "main.py"]