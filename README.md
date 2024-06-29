## if you need storage: Install rook ceph (Need 3 Nodes At Least)
1) create poolblock
2) create storageclass https://rook.io/docs/rook/latest-release/Storage-Configuration/Block-Storage-RBD/block-storage/
3) create pvc
4) assign to pod

## To Have prometheus Operator Follow Step Below:
1) git clone https://github.com/prometheus-operator/kube-prometheus/tree/release-0.13
2) kubectl create  -f kube-prometheus/manifests/setup
3) kubectl create  -f kube-prometheus/manifests
4) kubectl apply  -f prometheus.yaml
