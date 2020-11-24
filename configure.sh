#!/bin/bash

# install modified label-studio
# pip3 install --upgrade ./

# download data from drive
# gdrive_id="1DXqd45SKV-jP4nou0CMOJPwSO3w-0UFl"
out_name="bbc_data.json"
# wget --load-cookies /tmp/cookies.txt "https://docs.google.com/uc?export=download&confirm=$(wget --quiet --save-cookies /tmp/cookies.txt --keep-session-cookies --no-check-certificate 'https://docs.google.com/uc?export=download&id=1HlzTR1-YVoBPlXo0gMFJ_xY4ogMnfzDi' -O- | sed -rn 's/.*confirm=([0-9A-Za-z_]+).*/\1\n/p')&id=${gdrive_id}" -O ${out_name} && rm -rf /tmp/cookies.txt

# set up project
label-studio init "summary_annotation" -b \
             --label-config "summary_annotator_design.xml" --input-path ${out_name} \
             --host "localhost" --port 8080 --protocol "http://"


