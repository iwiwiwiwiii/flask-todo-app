FROM python:2.7-slim

WORKDIR /app

ENV PYTHONPATH=/app:/app/application:/app/application/controllers

COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

COPY . .

EXPOSE 7345

CMD ["python", "manage.py", "runserver", "-h", "0.0.0.0", "-p", "7345"]