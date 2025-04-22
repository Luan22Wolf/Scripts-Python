import pyqrcode
import png
import pprint

qrcode = input(str("Cole o link que deseja criar um QRCode: "))

# Aqui é criado o qr code a partir do link informado no input
url = pyqrcode.create(qrcode)

# Salva o qr code como imagem PNG com a escala 8 (pra definir o tamanho dos blocos)
# O arquivo será salvo como 'qr.png' na mesma pasta do script
url.png(r'qr.png', scale=8)

#Ou pode escolher algum caminho para salvar o qr code, exemplo ==>> 
#url.png("/storage/emulated/0/Download/qr.png", scale=8)