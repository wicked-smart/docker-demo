FROM python:latest

WORKDIR /app

COPY requirements.txt .

#install all the required files 
RUN pip3 install -r requirements.txt 

#copy all the application code
COPY . .

CMD ["python3", "-m" , "flask", "run", "--host=0.0.0.0"]
