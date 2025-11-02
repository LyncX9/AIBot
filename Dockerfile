# Gunakan Python 3.11 (stabil)
FROM python:3.11-slim

# Set working directory
WORKDIR /app

# Salin semua file ke container
COPY . /app

# Install dependencies
RUN pip install --upgrade pip && \
    pip install --no-cache-dir --prefer-binary -r requirements.txt

# Jalankan bot
CMD ["python", "main.py"]
