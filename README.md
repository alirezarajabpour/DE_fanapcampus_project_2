# DE_fanapcampus_project_2

### This project requires setting up three Kafka producers and consumers to run on Ubuntu via cron jobs. These producers and consumers will operate on their respective topics. They will retrieve data from the Random User API, apply transformations to it, and then store and back up the processed data in a PostgreSQL database.
##
##
## to install requirments in ubuntu:
`pip install -r requirements.txt `

## to install crontab and nano:
`sudo apt-get install cron`
`sudo apt-get install nano`

## to add get_data.py to schedules:
`crontab -e`

## to start cron service:
`service cron start`

## to run consumers:
`python3 Consumer1.py`

## to craete a topic:
`kafka-topics --create --topic users_info --bootstrap-server broker:29092 --partitions 1 --replication-factor 1`
