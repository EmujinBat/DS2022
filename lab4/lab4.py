#!/Users/emujinbatzorig/miniconda3/bin/python3

import urllib.request
import boto3

IMG_URL = 'https://www.planetware.com/wpimages/2020/02/france-in-pictures-beautiful-places-to-photograph-eiffel-tower.jpg'
LOCAL_FILE_NAME = 'paris.jpg'
BUCKET_NAME = 'ds2022-kfm8nz'
EXPIRES_IN = 604800
OBJECT_NAME = 'paris.jpg'

urllib.request.urlretrieve(IMG_URL, LOCAL_FILE_NAME)

s3_client = boto3.client('s3', region_name='us-east-1')

resp = s3_client.put_object(
	Body = LOCAL_FILE_NAME, 
	Bucket = BUCKET_NAME, 
	Key = LOCAL_FILE_NAME, 
	ACL = 'public-read'
	)


s3_client.upload_file(LOCAL_FILE_NAME, BUCKET_NAME, OBJECT_NAME)

#Generate a presigned URL
response = s3_client.generate_presigned_url(
	'get_object',
    Params={'Bucket': BUCKET_NAME, 'Key': LOCAL_FILE_NAME},
    ExpiresIn=EXPIRES_IN
)

print(f"Presigned URL: {response}")


# This is the URL that was generated: https://ds2022-kfm8nz.s3.amazonaws.com/paris.jpg?AWSAccessKeyId=AKIA4IM3HUO5JQCBLTKU&Signature=6XCDoiHGTfI0vshW7jcOLjNA4Tw%3D&Expires=1728257965
