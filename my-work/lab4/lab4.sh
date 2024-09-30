#!/bin/bash

aws s3 cp rotunda.jpg s3://ds2022-kfm8nz/
aws s3 presign --expires-in 604800 s3://ds2022-kfm8nz/rotunda.jpg

https://ds2022-kfm8nz.s3.us-east-1.amazonaws.com/rotunda.jpg?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=AKIA4IM3HUO5JQCBLTKU%2F20240927%2Fus-east-1%2Fs3%2Faws4_request&X-Amz-Date=20240927T023008Z&X-Amz-Expires=604800&X-Amz-SignedHeaders=host&X-Amz-Signature=96cdfd405a4a6d2fe2b0d0b3dbfc6aa8e0b9baa4114ae09044c70bbb873939ba

