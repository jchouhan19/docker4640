FROM python:3
RUN wget -qq https://raw.githubusercontent.com/vishnubob/wait-for-it/master/wait-for-it.sh && chmod a+x wait-for-it.sh
COPY start.sh ./start.sh
CMD ["/bin/bash","start.sh"]
