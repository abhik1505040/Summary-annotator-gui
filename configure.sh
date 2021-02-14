#!/bin/bash

# install modified label-studio
# pip uninstall label_studio -y
# pip install -r requirements.txt
# python setup.py install

# # download data from drive
# gdrive_id=""
out_name="bbc_japanese.json"
# wget --load-cookies /tmp/cookies.txt "https://docs.google.com/uc?export=download&confirm=$(wget --quiet --save-cookies /tmp/cookies.txt --keep-session-cookies --no-check-certificate 'https://docs.google.com/uc?export=download&id=' -O- | sed -rn 's/.*confirm=([0-9A-Za-z_]+).*/\1\n/p')&id=${gdrive_id}" -O ${out_name} && rm -rf /tmp/cookies.txt
# npm install -g localtunnel

# set up project
label-studio init "summary_annotation_japanese" -b \
             --label-config "summary_annotator_design.xml" --input-path ${out_name} \
             --host "localhost" --port 8080 --protocol "http://"

