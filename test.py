# flask
from flask import *


# creat flak app
app = Flask(__name__)

@app.route('/api/home')
def home():
   return jsonify({"message":"welcome to home api"})

@app.route('/api/sevices')
def sevices():
    return jsonify({"message":"Welcome to our sevices API"})
@app.route('/api/products')
def product():
    return jsonify({"message":"welcome to the products API"})
@app.route('/api/calc', methods=['POST'])
def calc():
    if request.method == 'POST':
        num1 = request.form['num1']
        num2 = request.form['num2']

        answer = int(num1) + int(num2)
        return jsonify({"answer":answer})
if __name__=='__main__':
    app.run(debug=True)

