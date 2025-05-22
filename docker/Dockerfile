FROM python:3.12-alpine AS builder

WORKDIR /build 

COPY pyproject.toml .
COPY conftest.py .
COPY src/ ./src
COPY tests/ ./tests
 
RUN pip install --upgrade pip && \
    pip install --prefix=/deps .[test]
 
FROM python:3.12-alpine AS runtime
 
RUN adduser --disabled-password --gecos "" appuser
 
WORKDIR /app
 
COPY --from=builder /deps /usr/local
 
COPY --from=builder /build/ .
 
ENV PYTHONPATH=/app
 
USER appuser
 
EXPOSE 8043

CMD ["uvicorn", "src.main:app", "--host", "0.0.0.0", "--port", "8043"]
