#!/bin/bash

MODEL_NAME="phi4-mini"

echo "Inicializando o Ollama e baixando o modelo: $MODEL_NAME"

# Inicia o servidor Ollama em segundo plano
/usr/bin/ollama serve &

# Salva o PID do processo
OLLAMA_PID=$!

# Aguarda o Ollama estar disponível
until curl -s http://localhost:11434 > /dev/null; do
    echo "Aguardando Ollama iniciar..."
    sleep 2
done

# Baixa o modelo desejado
ollama pull $MODEL_NAME

echo "Modelo '$MODEL_NAME' baixado com sucesso!"

# Mantém o processo do Ollama rodando em foreground
wait $OLLAMA_PID

