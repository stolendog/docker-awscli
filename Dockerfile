FROM docker:latest
ADD https://github.com/m4i/ssmenv/releases/download/v0.1.0/ssmenv_linux_amd64 /usr/local/bin/ssmenv 
ADD https://github.com/kreuzwerker/envplate/releases/download/1.0.0-RC1/ep-linux /usr/local/bin/ep
RUN chmod +x /usr/local/bin/ssmenv && chmod +x /usr/local/bin/ep

RUN apk add --no-cache --update python py-pip git
RUN pip install awscli sceptre && \
    rm -rf /var/cache/apk/*