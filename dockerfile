FROM python:3.8.5-alpine3.12
ENV PYTHON_UNBUFFERED 1
ARG VERSION
RUN pip install yamllint==$VERSION
WORKDIR /workdir
ENTRYPOINT ["yamllint"]
LABEL yamllint.version=$VERSION