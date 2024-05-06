from flask import Flask

app = Flask(__name__)

@app.route('/')
def home():
    return '''<!DOCTYPE html>
    <html lang="pt-br">
    <head>
        <meta charset="UTF-8">
        <title>Página Simples</title>
    </head>
    <body>
        <p style="color: blue;">Este é o site com a fonte azul</p>
    </body>
    </html>'''

if __name__ == '__main__':
    app.run(host='0.0.0.0', debug=True, port=5000)
