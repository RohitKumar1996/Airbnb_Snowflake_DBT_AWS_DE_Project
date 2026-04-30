CREATE FILE FORMAT IF NOT EXISTS csv_format
  TYPE = 'CSV' 
  FIELD_DELIMITER = ','
  SKIP_HEADER = 1
  ERROR_ON_COLUMN_COUNT_MISMATCH = FALSE;


show file formats;

CREATE OR REPLACE STAGE snowstage
FILE_FORMAT = csv_format
URL='Your S3 bucket URL';

show stages;

COPY INTO BOOKINGS
FROM @snowstage
FILES=('bookings.csv')
CREDENTIALS=(aws_key_id = 'your access key', aws_secret_key = 'your secret key');

COPY INTO LISTINGS
FROM @snowstage
FILES=('listings.csv')
CREDENTIALS=(aws_key_id = 'your access key', aws_secret_key = 'your secret key');

COPY INTO HOSTS
FROM @snowstage
FILES=('hosts.csv')
CREDENTIALS=(aws_key_id = 'your access key', aws_secret_key = 'your secret key');

select * from bookings

select * from listings

select * from hosts