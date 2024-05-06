# Use uma imagem mais leve e compatível com múltiplas arquiteturas
FROM python:3.9-alpine

# Definir diretório de trabalho
WORKDIR /app

# Copiar o arquivo de requisitos
COPY requirements.txt .

# Instalar dependências com pip
RUN pip install --no-cache-dir -r requirements.txt

# Expor a porta 5000
EXPOSE 5000

# Variáveis de ambiente
ENV FLASK_APP=app.py
ENV FLASK_RUN_HOST=0.0.0.0

# Comando padrão
CMD ["gunicorn", "--bind", "0.0.0.0:5000", "app:app"]
