FROM docker:dind
RUN apk add py3-pip && pip3 install docker && apk add ansible
RUN adduser -u 1000 jenkins jenkins -D
USER jenkins
ENTRYPOINT []
CMD ["sh"]