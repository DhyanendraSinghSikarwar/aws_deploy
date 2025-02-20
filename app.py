from flask import Flask, jsonify
import mysql.connector
from mysql.connector import Error
from dotenv import load_dotenv
import os
from datetime import datetime

# Load environment variables
load_dotenv()

app = Flask(__name__)

# Database configuration using environment variables
db_config = {
    'host': os.getenv('DB_HOST'),
    'user': os.getenv('DB_USER'),
    'password': os.getenv('DB_PASSWORD'),
    'database': os.getenv('DB_NAME')
}

@app.route("/")
def root():
    return "Ok, its working", 200

@app.route("/users", methods=['GET'])
def get_users():
    try:
        # Establish database connection
        connection = mysql.connector.connect(**db_config)
        cursor = connection.cursor(dictionary=True)
        
        # Execute query
        cursor.execute("SELECT * FROM users")
        users = cursor.fetchall()
        
        # Close connection
        cursor.close()
        connection.close()
        
        # Format the response
        response = {
            "status": "success",
            "count": len(users),
            "users": users
        }
        
        # Return with proper formatting
        return jsonify(response), 200
    
    except Error as e:
        return jsonify({
            "status": "error",
            "message": str(e),
            "timestamp": datetime.now().isoformat()
        }), 500

if __name__ == "__main__":
    app.run(port=5005)
