FROM python:3.11

RUN pip install poetry==1.5.0

WORKDIR /app
COPY . .
RUN poetry install

CMD ["poetry", "run", "python", "manage.py", "runserver", "0.0.0.0:8000"]
