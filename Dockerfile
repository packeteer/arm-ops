FROM amazon/aws-cli
LABEL Admin tools container for ARM

RUN amazon-linux-extras enable epel && yum upgrade -y && \
  yum install -y unzip zsh openssh rsync tmux git ansible2 neovim httpie && \
  yum clean all

RUN git clone git://github.com/robbyrussell/oh-my-zsh.git ~/.oh-my-zsh
RUN curl https://releases.hashicorp.com/terraform/0.15.4/terraform_0.15.4_linux_arm64.zip --output terraform.zip && \
    unzip terraform.zip -d /usr/local/bin && \
    rm terraform.zip

COPY ./config/* /root/
ENV SHELL=/bin/zsh
ENV LC_ALL=en_US.UTF-8

ENTRYPOINT ["zsh"]
