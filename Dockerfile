FROM alpine:3.7

# Pull in a font to get font configuration working (fontconfig alone didn't work)
RUN apk add --update \
      openjdk8 \
      ttf-dejavu \
    && rm -rf /var/cache/apk/*

ARG IDEA_VERSION
RUN apk add --update \
      curl \
      tar && \
    curl --location https://download.jetbrains.com/idea/ideaIC-${IDEA_VERSION}.tar.gz \
    | tar --extract --gzip --directory=/opt && \
    mv /opt/idea-* /opt/idea && \
    apk del --purge \
      curl \
      tar

ENV _JAVA_AWT_WM_NONREPARENTING=1

ENTRYPOINT ["/opt/idea/bin/idea.sh"]
