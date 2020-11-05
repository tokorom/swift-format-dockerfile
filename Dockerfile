FROM swift:5.3

ARG SWIFT_FORMAT_REPOSITORY="https://github.com/apple/swift-format.git"
ARG SWIFT_FORMAT_BRANCH="swift-5.3-branch"

LABEL repository "https://github.com/tokorom/swift-format-dockerfile"
LABEL homepage "https://github.com/tokorom/swift-format-dockerfile"
LABEL maintainer "tokorom <tokorom@gmail.com>"

# Install swift-format
RUN git clone -b  $SWIFT_FORMAT_BRANCH $SWIFT_FORMAT_REPOSITORY _swift-format \
    && cd _swift-format \
    && swift build -c release \
    && ln .build/release/swift-format /usr/local/bin/swift-format \
    && cd
