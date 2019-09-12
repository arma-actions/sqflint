FROM python:3.7

RUN pip3 install sqflint

COPY entrypoint.sh /entrypoint.sh

RUN chmod +x /entrypoint.sh

CMD ["--exit e", "--directory addons"]
ENTRYPOINT ["/entrypoint.sh"]
