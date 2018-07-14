# Brings along Node 8 and Cypress's bundled headless electron runner
FROM cypress/base:8

RUN apt-get update

# Install Ruby 2.5.1
RUN apt-get install -y libssl-dev \
  && wget http://ftp.ruby-lang.org/pub/ruby/2.5/ruby-2.5.1.tar.gz \
  && tar -xzvf ruby-2.5.1.tar.gz \
  && cd ruby-2.5.1/ \
  && ./configure \
  && make -j4 \
  && make install \
  && ruby -v

# database clients
RUN apt-get -y install postgresql-client
RUN apt-get -y install mysql-client

# other utilities from CircleCI's base images
RUN perl -MCPAN -e 'install TAP::Parser'
RUN perl -MCPAN -e 'install XML::Generator'
RUN apt-get -y install lsb-release unzip

# Install bundler
RUN gem install bundler
