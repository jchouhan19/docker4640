FROM python

RUN useradd -m -d /backend backend

USER backend
WORKDIR /backend

RUN wget -qq https://github.com/timoguic/acit4640-py-mysql/archive/refs/heads/master.zip -O /tmp/source.zip && unzip /tmp/source.zip && cp -r acit4640-py-mysql-master/backend /backend/src && rm -rf acit4640-py-mysql-master

RUN python -m pip install -r /backend/src/requirements.txt
COPY backend.conf /backend/src

WORKDIR /backend/src
RUN wget -qq https://raw.githubusercontent.com/vishnubob/wait-for-it/master/wait-for-it.sh && chmod a+x wait-for-it.sh

EXPOSE 8000

COPY start.sh ./start.sh

CMD ["/bin/bash", "./start.sh"]
