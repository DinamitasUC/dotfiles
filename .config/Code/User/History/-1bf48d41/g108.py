from flask import Flask, request, jsonify

app = Flask(__name__)

datos = {
    "mensaje": "Bienvenido a la API de Harold"
}

@app.route('/', methods=['GET'])
def home():
    return jsonify(datos)

@app.route('/enviar', methods=['POST'])
def enviar():
    contenido = request.get_json()
    datos.update(contenido)
    return jsonify({"mensaje": "Datos actualizados", "datos": datos})

@app.route('/reemplazar', methods=['PUT'])
def reemplazar():
    contenido = request.get_json()
    global datos
    datos = contenido  # Reemplaza todo
    return jsonify({"mensaje": "Datos reemplazados", "datos": datos})

@app.route('/parche', methods=['PATCH'])
def parche():
    contenido = request.get_json()
    datos.update(contenido)  # Solo cambia algunos campos
    return jsonify({"mensaje": "Datos modificados", "datos": datos})

@app.route('/borrar', methods=['DELETE'])
def borrar():
    datos.clear()
    return jsonify({"mensaje": "Datos eliminados", "datos": datos})

if __name__ == '__main__':
    app.run(host='0.0.0.0', port=8000)
