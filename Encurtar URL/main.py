import requests

class URLShortener:

    def shorten_url(self, long_url):
        api_url = f"http://tinyurl.com/api-create.php?url={long_url}"
        response = requests.get(api_url)
        if response.status_code == 200:
            return response.text
        else:
            return None

shortener = URLShortener()

while True:
    user_long_url = input("Insira a URL que deseja encurtar: ")
    short_url = shortener.shorten_url(user_long_url)
    if short_url:
        print("URL original:\n", user_long_url)
        print("URL encurtada:", short_url)
    else:
        print("Não foi possível encurtar a URL. Verifique se a URL fornecida é válida.")
    
    continuar = input("Deseja encurtar outra URL? (S/N): ")
    if continuar.lower() != 's':
        break

