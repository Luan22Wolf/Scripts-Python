import json #Importação já é implantada no python

# json de entrada
arquivo_json = "banco_de_dados.json"

# Saída da extração
arquivo_txt = 'dados.txt'

# Aqui acontece a leitura do arquivo json
with open(arquivo_json, 'r', encoding='utf-8') as f_json:
    dados = json.load(f_json)

# Escreve os dados no arquivo de texto
with open(arquivo_txt, 'w', encoding='utf-8') as f_txt:
    json.dump(dados, f_txt, ensure_ascii=False, indent=4)

print(f'Dados do arquivo {arquivo_json} foram escritos em {arquivo_txt}')