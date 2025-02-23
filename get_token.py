import requests
import json

baseURL = 'https://testapi.kelasotomesyen.com'
body = {"username": "admin", "password": "uHuY12#$"}

def api_get_token():
    response = requests.post(f'{baseURL}/login',json=body)
    
    print(response.status_code)
    json_resp = json.loads(response.text)
    token = json_resp['token']
    
    with open("/Users/user/Desktop/robot-web/libs/token.json","w") as outfile:
        json.dump(token, outfile)
        
api_get_token()