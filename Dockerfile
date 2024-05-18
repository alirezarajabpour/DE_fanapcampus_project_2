FROM ubuntu:latest

RUN apt-get update -y && \
    apt-get install -y python3-pip python3-dev cron && \
    pip3 install confluent-kafka && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

ADD /home/projects/get_data.py /home/projects/get_data.py

RUN chmod 755 /home/projects/get_data.py

RUN (crontab -l ; echo "* * * * * /usr/bin/python /home/projects/get_data.py") | crontab

CMD ["cron", "-f"]
