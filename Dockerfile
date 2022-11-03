FROM swift:latest as builder

ENV VERSION="swift-5.7.1-RELEASE"
ENV TEST_BIN=".build/debug/SwiftCoursesPackageTests.xctest"

RUN apt-get update -y && apt-get install -y git vim

# Install Swift-Format
RUN git clone https://github.com/apple/swift-format.git /var/local/swift-format

WORKDIR /var/local/swift-format

RUN git checkout $VERSION
RUN swift build -c release


# Install courses package
WORKDIR /root

COPY . .

# # Lint sources
# RUN swift-format lint  --recursive --strict --parallel .

# Build sources
RUN swift build  --build-tests


FROM swift:slim
WORKDIR /root

COPY --from=builder /root app/
COPY --from=builder /var/local/swift-format/.build/release/swift-format /usr/bin/swift-format

ADD entrypoint.sh .

RUN mv app/.build .

RUN cp .build/debug/SwiftCoursesPackageTests.xctest SwiftCoursesPackageTests

RUN chmod +x entrypoint.sh /usr/bin/swift-format SwiftCoursesPackageTests

# CMD ["/root/entrypoint.sh"]
