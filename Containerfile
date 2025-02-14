# SPDX-License-Identifier: BSD-3-Clause
# Copyright (c) 2025 Christophe Fontaine

FROM registry.access.redhat.com/ubi9/ubi:latest
RUN dnf -y install --nodocs --setopt=install_weak_deps=0 https://github.com/DPDK/grout/releases/download/edge/grout.x86_64.rpm
RUN dnf -y --enablerepo='*' clean all
RUN rm -f /tmp/grout*.rpm
CMD ["/usr/bin/grout"]
