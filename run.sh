#!/bin/bash

# run the project
label-studio start "summary_annotation_japanese" --use-gevent -b --host "localhost" --port 8080 --protocol "http://"
