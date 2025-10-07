FROM debian:stable-slim

COPY dev_env/install.sh /install.sh
RUN chmod +x /install.sh && /install.sh && rm /install.sh

CMD ["sleep", "infinity"]
