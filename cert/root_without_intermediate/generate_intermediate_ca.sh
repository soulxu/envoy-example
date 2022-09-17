pushd intermediate/development
cfssl genkey -initca ./intermediate.json | cfssljson -bare development
cfssl sign -ca ../../ca.pem -ca-key ../../ca-key.pem --config ../config.json -profile development  development.csr | cfssljson -bare development 
popd

pushd intermediate/cluster
cfssl genkey -initca ./intermediate.json | cfssljson -bare cluster
cfssl sign -ca ../../ca.pem -ca-key ../../ca-key.pem --config ../config.json -profile cluster cluster.csr | cfssljson -bare cluster 
popd
