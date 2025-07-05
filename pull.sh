docker pull registry.cn-hangzhou.aliyuncs.com/k3s-hb/busybox
docker tag registry.cn-hangzhou.aliyuncs.com/k3s-hb/busybox:latest busybox:latest
docker save -o busybox.tar busybox:latest

docker pull registry.cn-hangzhou.aliyuncs.com/k3s-hb/kubectl:v1.32.6
docker tag registry.cn-hangzhou.aliyuncs.com/k3s-hb/kubectl:v1.32.6 registry.k8s.io/kubectl:v1.32.6
docker save -o kubectl.tar registry.k8s.io/kubectl:v1.32.6

docker pull registry.cn-hangzhou.aliyuncs.com/k3s-hb/alertmanager:v0.28.1
docker tag registry.cn-hangzhou.aliyuncs.com/k3s-hb/alertmanager:v0.28.1 quay.io/prometheus/alertmanager:v0.28.1
docker save -o alertmanager.tar quay.io/prometheus/alertmanager:v0.28.1

docker pull registry.cn-hangzhou.aliyuncs.com/k3s-hb/admission-webhook:v0.83.0
docker tag registry.cn-hangzhou.aliyuncs.com/k3s-hb/admission-webhook:v0.83.0 quay.io/prometheus-operator/admission-webhook:v0.83.0
docker save -o admission-webhook.tar quay.io/prometheus-operator/admission-webhook:v0.83.0

docker pull registry.cn-hangzhou.aliyuncs.com/k3s-hb/kube-webhook-certgen:v1.6.0
docker tag registry.cn-hangzhou.aliyuncs.com/k3s-hb/kube-webhook-certgen:v1.6.0 registry.k8s.io/ingress-nginx/kube-webhook-certgen:v1.6.0
docker save -o kube-webhook-certgen.tar registry.k8s.io/ingress-nginx/kube-webhook-certgen:v1.6.0

docker pull registry.cn-hangzhou.aliyuncs.com/k3s-hb/prometheus-operator:v0.83.0
docker tag registry.cn-hangzhou.aliyuncs.com/k3s-hb/prometheus-operator:v0.83.0 quay.io/prometheus-operator/prometheus-operator:v0.83.0
docker save -o prometheus-operator.tar quay.io/prometheus-operator/prometheus-operator:v0.83.0

docker pull registry.cn-hangzhou.aliyuncs.com/k3s-hb/prometheus-config-reloader:v0.83.0
docker tag registry.cn-hangzhou.aliyuncs.com/k3s-hb/prometheus-config-reloader:v0.83.0 quay.io/prometheus-operator/prometheus-config-reloader:v0.83.0
docker save -o prometheus-config-reloader.tar quay.io/prometheus-operator/prometheus-config-reloader:v0.83.0

docker pull registry.cn-hangzhou.aliyuncs.com/k3s-hb/thanos:v0.39.1
docker tag registry.cn-hangzhou.aliyuncs.com/k3s-hb/thanos:v0.39.1 quay.io/thanos/thanos:v0.39.1
docker save -o thanos.tar quay.io/thanos/thanos:v0.39.1

docker pull registry.cn-hangzhou.aliyuncs.com/k3s-hb/prometheus:v3.4.2
docker tag registry.cn-hangzhou.aliyuncs.com/k3s-hb/prometheus:v3.4.2 quay.io/prometheus/prometheus:v3.4.2
docker save -o prometheus.tar quay.io/prometheus/prometheus:v3.4.2

----

ctr -n k8s.io images import busybox.tar
ctr -n k8s.io images import kubectl.tar
ctr -n k8s.io images import alertmanager.tar
ctr -n k8s.io images import admission-webhook.tar
ctr -n k8s.io images import kube-webhook-certgen.tar
ctr -n k8s.io images import prometheus-operator.tar
ctr -n k8s.io images import prometheus-config-reloader.tar
ctr -n k8s.io images import thanos.tar
ctr -n k8s.io images import prometheus.tar
