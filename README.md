
# Documentação Execução do Projeto

Para iniciar este projeto, siga estas instruções:
1. Abra um terminal no computador onde o arquivo `docker-compose.yml` está localizado.
2. No terminal, navegue até a pasta que contém o arquivo `docker-compose.yml`.
3. Inicie os serviços configurados pelo docker-compose usando o seguinte comando:

   ```bash
   docker-compose up -d --build
   ```

   Este comando irá construir quaisquer imagens Docker necessárias e iniciar as contêineres em segundo plano.

Após executar este comando, você pode acessar a interface web do projeto:
http://localhost:3000

A partir desse endereço, você deve ter acesso à aplicação ou serviço que está sendo executado dentro dos contêineres iniciados pelo docker-compose.

Para finalizar e limpar todos os contêineres que foram iniciados com o Docker Compose, você pode usar o seguinte comando no terminal:

```bash
docker-compose down
```

Este comando apagará qualquer contêiner, rede ou volume associado ao `docker-compose.yml` em execução. Se quiser também remover as imagens locais usadas pelos seus contêineres (sem limpar os volumes), pode adicionar a opção `--rmi all`, como mostrado abaixo:

```bash
docker-compose down --rmi all
```

Este comando ajudará você manter seu sistema limpo sem precisar cuidar manualmente das imagens desnecessárias.

