FROM zardoz.podzone.org:11003/core/centos
MAINTAINER Brian Lalor <brian@autosportlabs.com>

RUN yum -y groupinstall "Development tools"
RUN yum -y install \
    ruby-devel \
    rubygems-devel \
    python-devel \
    python-setuptools \
    glibc-static \
    createrepo \
    s3cmd

RUN curl https://raw.github.com/pypa/pip/master/contrib/get-pip.py | python

RUN echo "gem: --no-rdoc --no-ri" >> /etc/gemrc
RUN gem install fpm --version 0.4.42
