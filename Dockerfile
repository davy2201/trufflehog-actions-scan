FROM python:3.7-alpine

LABEL repository="https://github.com/davy2201/trufflehog-actions-scan"
LABEL homepage="https://github.com/actions"

RUN apk add --no-cache git less
RUN pip install gitdb2==3.0.0 truffleHog==2.1.11
RUN export trufflehog_ouput = "Salut"
COPY entrypoint.sh /entrypoint.sh
COPY regexes.json /regexes.json

ENTRYPOINT ["sh", "/entrypoint.sh"]