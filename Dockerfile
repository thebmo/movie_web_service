FROM ruby:2.3
# VOLUME /Users/bmo/Desktop/rest_api:/usr/src/app

RUN apt-get update \
    && apt-get install -y --no-install-recommends \
        postgresql-client nodejs \
    && rm -rf /var/lib/apt/lists/*

WORKDIR /usr/src/app
COPY Gemfile* ./
RUN bundle install
COPY . .

RUN cd webapp && bundle install

EXPOSE 3000
CMD ["rails", "server", "-b", "0.0.0.0"]

# docker run -it --rm -v /Users/bmo/Desktop/rest_api/:/usr/src/app -p 3000:3000 rails bash
