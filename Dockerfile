FROM python:3.9
EXPOSE $PORT
WORKDIR /app
COPY requirements.txt ./requirements.txt
RUN pip3 install -r requirements.txt
COPY . .
CMD streamlit run --server.port $PORT app.py