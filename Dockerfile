FROM ubuntu:20.04

RUN apt-get update -y
RUN apt-get install python3-pip -y

RUN pip3 install jupyter

COPY scripts/entrypoint.sh 

# remove any CRLF line endings if running from Windows
RUN sed -i entrypoint.sh 's/\r$//'

COPY requirements.txt .

RUN pip3 install -r requirements.txt

COPY notebooks .

RUN jupyter-nbconvert --to python --RegexRemovePreprocessor.patterns "\# nbconvert_ignore_cell" *.ipynb

ENTRYPOINT ["bash", "entrypoint.sh"]
