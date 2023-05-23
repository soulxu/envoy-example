pushd cert
cfssl gencert -ca=../ca.pem -ca-key=../ca-key.pem -config=config.json -profile=client client.json | cfssljson -bare client
cfssl gencert -ca=../ca.pem -ca-key=../ca-key.pem -config=config.json -profile=peer peer.json | cfssljson -bare peer
cfssl gencert -ca=../ca.pem -ca-key=../ca-key.pem -config=config.json -profile=server server.json | cfssljson -bare server
popd
