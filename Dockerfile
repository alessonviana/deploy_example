# Usar uma imagem base do Nginx
FROM nginx:alpine

# Remover a configuração padrão do Nginx
RUN rm /usr/share/nginx/html/*

# Copiar o arquivo index.html para o diretório padrão do Nginx
COPY index.html /usr/share/nginx/html/

# Expor a porta 80
EXPOSE 80
