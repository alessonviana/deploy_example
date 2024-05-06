# Use uma imagem base do Python
FROM python:3.9-slim

# Crie um diretório de trabalho
WORKDIR /app

# Copie o arquivo requirements.txt para a imagem
COPY requirements.txt requirements.txt

# Instale as dependências Python
RUN pip install -r requirements.txt

# Copie todo o conteúdo do diretório local para a imagem Docker
COPY . .

# Comando padrão para rodar a aplicação Flask
CMD ["python", "app.py"]
