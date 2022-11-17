import qrcode
from PIL import Image

Logo_link = input('Ingrese la ruta a la imagen que desea utilizar:')

logo = Image.open(Logo_link)
basewidth = int(input('Ingrese el ancho deseado [Default = 75]: ')
                or '75')
wpercent = basewidth / float(logo.size[0])
hsize = int(float(logo.size[1]) * float(wpercent))
logo = logo.resize((basewidth, hsize), Image.Resampling.LANCZOS)
qr_big = \
    qrcode.QRCode(error_correction=qrcode.constants.ERROR_CORRECT_H)
url = input('Ingrese el link a la pagina que desea direccionar: ')
qr_big.add_data(url)
qr_big.make()
qr_color = \
    input('Ingrese el color que desea utilizar para el QR [Default = Black]: '
          )
img_qr_big = qr_big.make_image(fill_color=qr_color or 'Black',
                               back_color='white').convert('RGB')
pos = ((img_qr_big.size[0] - logo.size[0]) // 2, (img_qr_big.size[1]
       - logo.size[1]) // 2)
img_qr_big.paste(logo, pos)
save_path = input('Ingrese el nombre de su archivo de salida: ')
img_qr_big.save(save_path + '.png')