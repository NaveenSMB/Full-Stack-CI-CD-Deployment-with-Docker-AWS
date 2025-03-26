from flask import Flask, jsonify  # Import Flask framework

app = Flask(__name__)  # Initialize Flask app

@app.route('/api')  # Define API endpoint
def api():
    return jsonify({"message": "Backend is running!"})  # Return JSON response

if __name__ == '__main__':
    app.run(host='0.0.0.0', port=5000)  # Run Flask server on port 5000

