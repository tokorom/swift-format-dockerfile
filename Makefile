SHELL=/bin/zsh

build:
	@read SWIFT_VERSION\?'Swift Version> '; docker build -t tokorom/swift-format:$${SWIFT_VERSION} . 
deploy:
	@read SWIFT_VERSION\?'Swift Version> '; docker push tokorom/swift-format:$${SWIFT_VERSION}
