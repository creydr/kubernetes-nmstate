/*
Copyright The Kubernetes NMState Authors.


Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

    http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.
*/

package handler

import (
	. "github.com/onsi/ginkgo/v2"
	. "github.com/onsi/gomega"

	"k8s.io/apimachinery/pkg/types"
)

var _ = Describe("[nns] NNS Dependencies", func() {
	BeforeEach(func() {
		// Make sure NNSes are present
		for _, node := range nodes {
			key := types.NamespacedName{Name: node}
			_ = nodeNetworkState(key)
		}
	})

	It("should include versions of NNS dependencies", func() {
		for _, node := range nodes {
			key := types.NamespacedName{Name: node}
			status := nodeNetworkState(key).Status
			Expect(status.HostNetworkManagerVersion).ToNot(BeEmpty())
			Expect(status.HandlerNetworkManagerVersion).ToNot(BeEmpty())
			Expect(status.HandlerNmstateVersion).ToNot(BeEmpty())
		}
	})
})
