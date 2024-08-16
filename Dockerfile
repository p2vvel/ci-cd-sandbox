FROM python:3.12-alpine

COPY requirements.txt requirements.txt

RUN pip install -r requirements.txt

COPY ./src/ ./

ENTRYPOINT [ "python" ]
CMD [ "-m", "uvicorn", "main:app", "--host", "0.0.0.0", "--port", "8000"]

EXPOSE 8000

LABEL org.opencontainers.image.source https://github.com/p2vvel/ci-cd-sandbox