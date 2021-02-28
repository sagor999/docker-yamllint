FROM python:3.9-alpine
ENV PYTHON_UNBUFFERED 1
ARG VERSION
RUN pip install yamllint==$VERSION
WORKDIR /workdir
ENTRYPOINT ["yamllint"]
LABEL yamllint.version=$VERSION