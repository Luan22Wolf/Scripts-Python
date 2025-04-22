import qrcode

meu_qrcode = qrcode.make("https://enferminas.prozeducacao.com.br/")
meu_qrcode.save("meu_qrcode.png")

#se quiser salvar em algum caminho especifico, exemplo usado aqui por min no telefone é ==>>
#meu_qrcode.save("/storage/emulated/0/Download/meu_qrcode.png")