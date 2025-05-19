FROM ollama/ollama

RUN apt-get update && apt-get install -y curl

COPY ollama-init.sh /ollama-init.sh
RUN chmod +x /ollama-init.sh

ENTRYPOINT ["/bin/bash", "/ollama-init.sh"]

