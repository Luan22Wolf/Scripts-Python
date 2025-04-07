import requests

url = "https://api-ssl.bitly.com/v4/shorten"

try:
    response = requests.post(url, data={})
    
    if response.status_code == 200:
        print("A API está disponível.")
    else:
        print(f"A API não está disponível. Código de status: {response.status_code}")
except Exception as e:
    print("Ocorreu um erro ao tentar acessar a API:", e)
