#!/bin/sh

echo "Example podman call"

# runs OpenVino with shell, so you can ctrl-c to end. Use -d for deamon
podman run --rm -it -v ./models:/models  -p 9001:9001 -p 8001:8001 openvino/model_server:latest --config_path /models/config.json --port 9001 --rest_port 8001

# if you want to inspect mounted files
#podman run --rm -it -v ./models:/models -p 9001:9001 -p 8001:8001 --entrypoint bash  openvino/model_server:latest