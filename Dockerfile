FROM python:3.7

RUN pip3 install sqflint

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
