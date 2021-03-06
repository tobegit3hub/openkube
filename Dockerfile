FROM ubuntu:18.04

# Install kubectl
#ADD ./kubectl /usr/local/bin/kubectl
ADD https://storage.googleapis.com/kubernetes-release/release/v1.6.4/bin/linux/amd64/kubectl /usr/local/bin/kubectl

RUN chmod +x /usr/local/bin/kubectl
RUN ln -s /usr/local/bin/kubectl /usr/local/bin/k

RUN mkdir /root/.kube/

# CMD ["/usr/local/bin/kubectl"]
CMD ["/bin/bash"]
