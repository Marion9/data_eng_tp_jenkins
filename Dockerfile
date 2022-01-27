FROM python:3.8.8
ENV FLASK_APP=app.py
ENV FLASK_RUN_HOST=0.0.0.0
COPY * ML_model/
COPY templates/home.html templates/
COPY * ./
COPY feature_engineering.py ./
RUN pip install --upgrade pip
RUN pip install -r requirements.txt
RUN python -m spacy download en_core_web_sm
EXPOSE 5000
CMD ["flask", "run"]
