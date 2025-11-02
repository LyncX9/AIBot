# Gunakan Python versi 3.11 agar kompatibel dengan discord.py
FROM python:3.11-slim

# Set working directory di dalam container
WORKDIR /app

# Copy semua file ke dalam container
COPY . /app

# Install dependensi
RUN pip install --upgrade pip && \
    pip install --no-cache-dir --prefer-binary -r requirements.txt

# Jalankan aplikasi
CMD ["python", "main.py"]
