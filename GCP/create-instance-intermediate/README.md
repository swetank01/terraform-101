# Create GCP Instance (Intermediate)

- Add metascript 
- Add ssh key option 
- tf output 
- Added Firewall Rule for port 5000

## Can ssh using tf 
$USER="swetank01"
ssh $USER@`terraform output ip`

### sample Code for python App

` vi app.py `

paste code given below

```
from flask import Flask
app = Flask(__name__)

@app.route('/')
def hello_cloud():
   return 'Hello Cloud!'

app.run(host='0.0.0.0')
```

#### Run the python app on vm 
ssh $USER@`terraform output ip`
python app.py

### Test using Curl 

```
curl http://0.0.0.0:5000
```