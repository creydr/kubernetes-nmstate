module github.com/nmstate/kubernetes-nmstate

go 1.16

require (
	github.com/Microsoft/hcsshim v0.8.14 // indirect
	github.com/evanphx/json-patch v4.11.0+incompatible
	github.com/github-release/github-release v0.10.0
	github.com/go-logr/logr v0.4.0
	github.com/gofrs/flock v0.8.0
	github.com/gorilla/mux v1.7.4 // indirect
	github.com/hashicorp/go-multierror v1.1.0 // indirect
	github.com/kelseyhightower/envconfig v1.4.0
	github.com/onsi/ginkgo v1.16.4
	github.com/onsi/gomega v1.13.0
	github.com/opencontainers/runtime-spec v1.0.3-0.20200520003142-237cc4f519e2 // indirect
	github.com/openshift/cluster-network-operator v0.0.0-20200922032245-f47200e8dbc0
	github.com/operator-framework/operator-registry v1.17.0
	github.com/phoracek/networkmanager-go v0.1.0
	github.com/pkg/errors v0.9.1
	github.com/qinqon/kube-admission-webhook v0.17.0
	github.com/spf13/pflag v1.0.5
	github.com/tidwall/gjson v1.8.0
	github.com/tidwall/sjson v1.1.7
	go.uber.org/zap v1.17.0
	gopkg.in/yaml.v2 v2.4.0
	k8s.io/api v0.21.1
	k8s.io/apimachinery v0.21.1
	k8s.io/client-go v12.0.0+incompatible
	k8s.io/kubectl v0.21.1
	k8s.io/release v0.9.0
	kubevirt.io/qe-tools v0.1.7
	sigs.k8s.io/controller-runtime v0.9.0
	sigs.k8s.io/controller-tools v0.6.0
	sigs.k8s.io/yaml v1.2.0
)

replace (
	github.com/Azure/go-autorest => github.com/Azure/go-autorest v14.2.0+incompatible // Required by OLM
	// Using containerd 1.4.0+ resolves an issue with invalid error logging
	// from an init function in containerd. This replace can be removed when
	// one of our direct dependencies begins using containerd v1.4.0+
	github.com/containerd/containerd => github.com/containerd/containerd v1.4.3
	github.com/gogo/protobuf => github.com/gogo/protobuf v1.3.2
	github.com/mattn/go-sqlite3 => github.com/mattn/go-sqlite3 v1.10.0
	golang.org/x/text => golang.org/x/text v0.3.3 // Required to fix CVE-2020-14040
	k8s.io/client-go => k8s.io/client-go v0.21.1
)

exclude github.com/spf13/viper v1.3.2 // Required to fix CVE-2018-1098
