FROM ttrahan/sample_node_ayeaye:preinstalled

WORKDIR /app
ADD . /app
EXPOSE 80
ENTRYPOINT ["/nodejs/bin/npm", "start"]
