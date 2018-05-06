#!/bin/bash

sudo apt-get install -y pkg-config zip g++ zlib1g-dev unzip python

curl -OL https://github.com/bazelbuild/bazel/releases/download/0.13.0/bazel-0.13.0-installer-linux-x86_64.sh

chmod +x bazel-0.13.0-installer-linux-x86_64.sh

./bazel-0.13.0-installer-linux-x86_64.sh

