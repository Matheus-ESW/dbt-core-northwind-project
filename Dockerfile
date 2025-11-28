# Dockerfile-requirements
#syntax=docker/dockerfile:1

# Imagem base
FROM python:3.12.1

# Definir o diretório de trabalho no container
WORKDIR /usr/app/northwind

# Copiar os arquivos de dependências e instalar
COPY requirements.txt requirements.txt
RUN pip install --no-cache-dir --upgrade -r requirements.txt

EXPOSE 8081

# Comando para executar a aplicação
CMD tail -f /dev/null