import mysql.connector

config = {
    'host': '127.0.0.1',
    'user': 'root',
    'password': '',
    'database': 'hospital_esperanca'
}

conn = mysql.connector.connect(**config)
cursor = conn.cursor()

cursor.execute("SHOW TABLES")
tabelas = cursor.fetchall()

print(f"Banco de dados: {config['database']}")
print("Tabelas encontradas:\n")

for (tabela,) in tabelas:
    print(f"--- Tabela: {tabela} ---")
    
    cursor.execute(f"DESCRIBE {tabela}")
    colunas = cursor.fetchall()
    print("Colunas:")
    for coluna in colunas:
        print(f" - {coluna[0]} ({coluna[1]})")
    
    cursor.execute(f"SELECT * FROM {tabela}")
    linhas = cursor.fetchall()
    print("\nValores:")
    for linha in linhas:
        print(linha)
    
    print("\n" + "-"*50 + "\n")

cursor.close()
conn.close()