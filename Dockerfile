# Use a versão correta do Python compatível com a arquitetura
FROM python:3.9-slim

# Defina o diretório de trabalho
WORKDIR /app

# Copie e instale as dependências
COPY requirements.txt requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

# Copie o restante dos arquivos
COPY . .

# Comando para iniciar a aplicação
CMD ["python", "app.py"]
