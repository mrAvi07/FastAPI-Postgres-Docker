FROM python
WORKDIR /app
COPY ./requirements.txt .
RUN pip install --no-cache-dir --upgrade -r ./requirements.txt
COPY . .
EXPOSE 8000

CMD ["uvicorn", "app.main:app", "--reload", "--proxy-headers", "--host", "0.0.0.0"]