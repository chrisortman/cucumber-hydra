FROM chrisortman/rvm-base:latest
MAINTAINER Chris Ortman <chris-ortman@uiowa.edu>

USER root

ADD source /rails
ADD scripts/setup /setup
ADD scripts/start /start
ADD scripts/test /test

RUN chown -R appuser /rails

EXPOSE 3000

USER appuser

RUN /setup
CMD /test
