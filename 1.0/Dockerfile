# Copyright 2016 The Kubernetes Authors.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

FROM gcr.io/google_containers/ubuntu-slim:0.6

# Ensure there are enough file descriptors for running Fluentd.
RUN ulimit -n 65536

# Disable prompts from apt.
ENV DEBIAN_FRONTEND noninteractive

# Copy the Fluentd configuration file.
COPY td-agent.conf /etc/td-agent/td-agent.conf

COPY build.sh /tmp/build.sh
RUN /tmp/build.sh

ENV LD_PRELOAD /opt/td-agent/embedded/lib/libjemalloc.so

# Run the Fluentd service.
ENTRYPOINT ["td-agent"]
