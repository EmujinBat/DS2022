#!/Users/emujinbatzorig/miniconda3/bin/python3

import urllib.request
import boto3

GIF_URL = 'https://cdn-images-1.medium.com/fit/t/1600/480/1*AmI9wRbXrfIWGESx6eEiTw.gif'
LOCAL_FILE_NAME = 'minions.gif'
BUCKET_NAME = 'ds2022-kfm8nz'
EXPIRES_IN = 604800
OBJECT_NAME = 'minions.gif'

urllib.request.urlretrieve(GIF_URL, LOCAL_FILE_NAME)

s3 = boto3.client('s3', region_name='us-east-1')

resp = s3.put_object(
	Body = LOCAL_FILE_NAME, 
	Bucket = BUCKET_NAME, 
	Key = LOCAL_FILE_NAME, 
	ACL = 'public-read'
	)


s3_client.upload_file(LOCAL_FILE_NAME, BUCKET_NAME, OBJECT_NAME)

#Generate a presigned URL
response = s3.generate_presigned_url(
	'get_object',
    Params={'Bucket': BUCKET_NAME, 'Key': LOCAL_FILE_NAME},
    ExpiresIn=EXPIRES_IN
)

print(f"Presigned URL: {response}")



