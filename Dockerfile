FROM ruby:2.1-onbuild

MAINTAINER Oto Brglez <otobrglez@gmail.com>

EXPOSE 2345

CMD ["./server.rb"]

