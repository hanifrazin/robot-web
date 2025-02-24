import requests
import json
from robot.api.deco import keyword

# baseURL = 'https://testapi.kelasotomesyen.com'

# Cara ke 1
# token = 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJmcmVzaCI6ZmFsc2UsImlhdCI6MTc0MDI5NTIyOCwianRpIjoiMDhjMGU1YmUtNjhhZi00MTExLTkzNTUtZmU0N2EyMzY1NGZjIiwidHlwZSI6ImFjY2VzcyIsInN1YiI6ImFkbWluIiwibmJmIjoxNzQwMjk1MjI4LCJleHAiOjE3NDAyOTg4Mjh9.Pptmjlp4gJfFq7feIrM5k4UkI42OTTea0drdpYX_K14'
# auth = {'Authorization': f'Bearer {token}'}
# response = requests.get(f"{baseURL}/items",headers={'Authorization':f'Bearer {token}'})
# response = requests.get(f'{baseURL}',headers=auth)

# print(response.status_code)
# print(response.text)

# json_resp = json.loads(response.text)
# print(json_resp)
# print(type(json_resp))
baseURL = 'https://testapi.kelasotomesyen.com'
file_token = open('/Users/user/Desktop/robot-web/libs/token.json')
token = json.loads(file_token.read())
auth_token = {'Authorization':f'Bearer {token}'}

@keyword("GET List Items using API")
def api_get_list_items():
    response = requests.get(f'{baseURL}/items',headers=auth_token)
    
    print(response.status_code)
    json_resp = json.loads(response.text)
    print(json_resp)
    return json_resp

@keyword("Create an Item using API")
def api_create_item(data):
    response = requests.post(f'{baseURL}/items',headers=auth_token,json=data)
    
    print(response.status_code)
    json_resp = json.loads(response.text)
    print(json_resp)
    return json_resp['id']

@keyword("GET Specific Item using API")
def api_get_items(id):
    response = requests.get(f'{baseURL}/items/{id}',headers=auth_token)
    
    print(response.status_code)
    json_resp = json.loads(response.text)
    print(json_resp)
    return json_resp

@keyword("Update All Items using API")
def api_update_all(id,data):
    response = requests.put(f'{baseURL}/items/{id}',headers=auth_token,json=data)
    
    print(response.status_code)
    json_resp = json.loads(response.text)
    print(json_resp)
    return json_resp

@keyword('Patch Single Items using API')
def api_single_update(id,data):
    response = requests.patch(f'{baseURL}/items/{id}',headers=auth_token,json=data)
    
    print(response.status_code)
    json_resp = json.loads(response.text)
    print(json_resp)
    return json_resp
    
@keyword('Delete Data with API')
def api_delete(id):
    response = requests.delete(f'{baseURL}/items/{id}',headers=auth_token)
    
    print(response.status_code)
    
    json_resp = json.loads(response.text)
    print(json_resp)
    return json_resp
    

    