FROM debian:stable-slim

COPY dev_env/install.sh /install.sh
RUN chmod +x /install.sh && /install.sh && rm /install.sh

# Set zsh as default shell
RUN chsh -s /usr/bin/zsh
SHELL ["/usr/bin/zsh"]

CMD ["sleep", "infinity"]
