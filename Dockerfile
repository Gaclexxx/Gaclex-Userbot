FROM greycilik/cilikuserbot:buster

RUN git clone -b Gaclex-Userbot https://github.com/Gaclexxx/Gaclexxx-Userbot /home/gaclex-userbot/ \
    && chmod 777 /home/gaclex-userbot \
    && mkdir /home/gaclex-userbot/bin/

COPY ./sample_config.env ./config.env* /home/gaclex-userbot/

WORKDIR /home/gaclex-userbot/

CMD ["python3", "-m", "userbot"]
