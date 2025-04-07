import json

def extract_sql_from_json(json_file, output_file):
    # Abre o arquivo JSON
    with open(json_file, 'r', encoding='utf-8') as file:
        data = json.load(file)

    # Extrai todas as consultas SQL do campo "historyQueries"
    sql_statements = []
    for entry in data:
        if "historyQueries" in entry:
            for query in entry["historyQueries"]:
                if "statement" in query:
                    sql_statements.append(query["statement"])

    # Salva as consultas SQL em um arquivo .sql
    with open(output_file, 'w', encoding='utf-8') as file:
        for statement in sql_statements:
            file.write(statement + ";\n\n")

    print(f"Arquivo '{output_file}' gerado com sucesso!")

# Substitua pelo caminho correto do seu arquivo JSON
json_file = "dbaHE.json"  # Nome do arquivo JSON
output_file = "queries_extraidas.sql"  # Nome do arquivo de saída

# Executa a extração
extract_sql_from_json(json_file, output_file)