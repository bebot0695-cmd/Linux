FROM ubuntu:22.04

RUN apt-get update && \
    apt-get install -y \
    curl wget git vim build-essential sudo ttyd \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

WORKDIR /root

CMD ["sh", "-c", "ttyd -p ${PORT:-8080} bash"]
