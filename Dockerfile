FROM docker:latest
RUN apk add --no-cache --update python py-pip && \
    pip install awscli && \
    rm -rf /var/cache/apk/*
ADD https://github.com/m4i/ssmenv/releases/download/v0.1.0/ssmenv_linux_amd64 /usr/local/bin/ssmenv 
ADD https://github.com/kreuzwerker/envplate/releases/download/v0.0.8/ep-linux /usr/local/bin/ep
RUN chmod +x /usr/local/bin/ssmenv && chmod +x /usr/local/bin/ep