FROM ruby:2.7.4

WORKDIR /myapp
COPY ./Gemfile /myapp/Gemfile
COPY ./Gemfile.lock /myapp/Gemfile.lock

# We usually run this every time we add a new dependency
RUN gem install bundler -v 2.4.22
RUN gem install jekyll -v 3.9.3
RUN bundle install

COPY . /myapp

EXPOSE 4000

CMD bundle exec jekyll s --host 0.0.0.0 --safe
