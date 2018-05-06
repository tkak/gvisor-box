#!/bin/bash -x

sudo apt-get install -y git

git clone https://gvisor.googlesource.com/gvisor gvisor

cd gvisor

bazel build runsc

sudo cp ./bazel-bin/runsc/linux_amd64_pure_stripped/runsc /usr/local/bin

cat << EOT > /etc/docker/daemon.json
{
    "runtimes": {
        "runsc": {
            "path": "/usr/local/bin/runsc"
        }
    }
}
EOT

sudo systemctl restart docker
