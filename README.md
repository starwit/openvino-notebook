# openvino-notebook

This is a sample project, that shall demonstrate how to run OpenVino with multiple models. 

## How to run
Here is a sample command: 

    podman run --rm -it -v ./models:/models  -p 9001:9001 -p 8001:8001 openvino/model_server:latest --config_path /models/config.json --port 9001 --rest_port 8001

This will start OpenVino as a container and gRPC interface will be available on http://localhost:9001 and REST interface on http://localhost:8001.

Docs for OpenVino can be found at:

gRPC: https://docs.openvino.ai/2022.1/ovms_docs_grpc_api.html 
REST: https://docs.openvino.ai/2022.1/ovms_docs_rest_api.html