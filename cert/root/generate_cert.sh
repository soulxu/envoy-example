pushd cert
cfssl gencert -ca=../intermediate/cluster/cluster.pem -ca-key=../intermediate/cluster/cluster-key.pem -config=config.json -profile=client client.json | cfssljson -bare client
cfssl gencert -ca=../intermediate/cluster/cluster.pem -ca-key=../intermediate/cluster/cluster-key.pem -config=config.json -profile=peer peer.json | cfssljson -bare peer
cfssl gencert -ca=../intermediate/cluster/cluster.pem -ca-key=../intermediate/cluster/cluster-key.pem -config=config.json -profile=server server.json | cfssljson -bare server
popd
