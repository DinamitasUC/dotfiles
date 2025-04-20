from flask import Flask, render_template

app = Flask(__name__)

@app.route('/')
def home():
    return render_template('index.html')  # Flask buscará el archivo en /templates

@app.route('/usuarios')
def usuarios():
    return render_template('usuarios.html') 

@app.route('/habitaciones')
def habitaciones():
    return render_template('habitaciones.html') 

@app.route('/reserva_servicio')
def reserva_servicio():
    return render_template('reserva_servicio.html') 

@app.route('/adminPagos')
def adminPagos():
    return render_template('adminPagos.html') 

@app.route('/empleados')
def empleados():
    return render_template('empleados.html') 
if __name__ == '__main__':
    app.run(host='0.0.0.0', port=8000)  # Escucha en todas las IPs de la red
