FROM bentoml/model-server:0.11.0-py38
LABEL author="ersilia"

RUN pip install git+https://github.com/DrrDom/crem.git
RUN pip install rdkit-pypi==2022.09.5
RUN pip install scikit-learn==1.0.2

WORKDIR /repo
COPY . /repo
