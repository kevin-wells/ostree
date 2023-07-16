ARG IMAGE_NAME="${IMAGE_NAME:-sericea}"
ARG SOURCE_IMAGE="${SOURCE_IMAGE:-sericea}"
ARG BASE_IMAGE="quay.io/fedora-ostree-desktops/${SOURCE_IMAGE}"
ARG FEDORA_MAJOR_VERSION="${FEDORA_MAJOR_VERSION:-38}"

FROM quay.io/fedora-ostree-desktops/sericea:38
RUN rpm-ostree install vim && \
    rpm-ostree cleanup -m && \
    ostree container commit
