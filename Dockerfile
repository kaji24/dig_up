FROM ruby:2.5
RUN apt-get update && apt-get install -y \
		build-essential \
		libpq-dev \
		nodejs \
		postgresql-client \
		yarn

WORKDIR /dig_up
COPY Gemfile Gemfile.lock /dig_up/
RUN bundle install		
