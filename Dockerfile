FROM ruby:2.6.5-stretch

COPY . /PhotoSuite
# Change to the application's directory
WORKDIR /PhotoSuite

#RUN apt-get update -qq && apt-get install -y nodejs
#RUN apt-get install npm
# update
RUN apt-get update
# install curl
RUN apt-get install curl
# get install script and pass it to execute:
RUN curl -sL https://deb.nodesource.com/setup_10.x | bash
# and install node
RUN apt-get install nodejs
# confirm that it was successful
RUN node -v
# npm installs automatically
RUN npm -v
#COPY Gemfile /PhotoSuite/Gemfile
#COPY Gemfile.lock /PhotoSuite/Gemfile.lock
RUN bundle install
# Install gems
#RUN bundle install --deployment --without development test \
#    && curl -sL https://deb.nodesource.com/setup_10.x | bash - \
#    && apt install -y nodejs
#RUN  curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add - echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list

RUN npm install yarn -g


RUN yarn --version

RUN yarn install --check-files
EXPOSE 3000
# Start the application server
#ENTRYPOINT ./entrypoint.sh
CMD ["rails", "server", "-b", "0.0.0.0"]
