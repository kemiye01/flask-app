from flask import Flask

app = Flask(__name__)

@app.route('/')
def index():
    return 'I am now a DevOps Engineer and ready to get into the job market'

if __name__ == '__main__':
    app.run(debug=True)
