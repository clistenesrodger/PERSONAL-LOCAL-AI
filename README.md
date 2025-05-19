
# Documentação Markdown de Execução do Projeto

Para iniciar este projeto, siga estas instruções:
1. Abra um terminal no computador onde o arquivo `docker-compose.yml` está localizado.
2. No terminal, navegue até a pasta que contém o arquivo `docker-compose.yml`.
3. Inicie os serviços configurados pelo docker-compose usando o seguinte comando:

   ```bash
   docker-compose up -d --build
   ```

   Este comando irá construir quaisquer imagens Docker necessárias e iniciar as contêineres em segundo plano.

Após executar este comando, você pode acessar a interface web do projeto:
1. Abra um navegador de internet.
2. Navegue até: http://localhost:3000

A partir desse endereço, você deve ter acesso à aplicação ou serviço que está sendo executado dentro dos contêineres iniciados pelo docker-compose.
