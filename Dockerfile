FROM bentoml/model-server:0.11.0-py310
LABEL author="ersilia"

RUN pip install crem==0.2.16
RUN pip install rdkit==2025.9.1
RUN pip install scikit-learn==1.7.2

WORKDIR /repo
COPY . /repo
