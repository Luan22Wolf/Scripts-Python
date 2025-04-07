import pyqrcode
import png 
import pprint

#Input para colar seu QRCode
qrcode = input(str("Cole o link que deseja criar um QRCode: "))

#qr_code_tring = "https://inscricao.prozeducacao.com.br/home-2024/?utm_source=google&utm_medium=cpc&utm_campaign=MG_Google_Search_Institucional_CPC&gad_source=1&gclid=EAIaIQobChMI7MvY1tHnhQMVClpIAB1jaQexEAAYASAAEgIx4_D_BwE#"

# Monta o QRCode
url = pyqrcode.create(qrcode)

# Salva o QRCode
url.png(r'qr.png', scale=8)