from imgurpython import ImgurClient
import os
client_id = 'f82015fbc20a9fb'
client_secret = '2588180f68c1bbba283776b064729bb53e051470'
access_token = 'bfecd33698bd54fcae3f43950d89b2311858f1d7'
refresh_token = '7b7d175c085f95f0a1c1a1f0cb62a072b4907d52'
client = ImgurClient(client_id, client_secret, access_token, refresh_token)

album = 'KLNGe8M'
image_path = f'{os.getcwd()}/app/assets/images/tmp.png'
config = {
    'album': album,
    'name':  'oof',
    'title': 'oof',
    'description': 'test pls work i cri'
}

print("Uploading image... ")
image = client.upload_from_path(image_path, config=config, anon=False)
link = image['link']

f = open('image_url.txt', 'w')
f.write(link)
f.close()