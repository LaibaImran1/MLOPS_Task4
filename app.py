from flask import Flask, request, jsonify
import numpy as np
import pickle

app = Flask(__name__)

# Load the trained model
model = pickle.load(open('model.pkl', 'rb'))

@app.route('/')
def home():
    return "Iris Classifier API"

@app.route('/predict', methods=['POST'])
def predict():
    data = request.get_json(force=True)
    features = [float(x) for x in data.values()]
    final_features = [np.array(features)]
    prediction = model.predict(final_features)
    return jsonify(prediction.tolist())

if __name__ == '__main__':
    app.run(debug=True)
