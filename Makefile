swift=~/Library/Developer/Toolchains/swift-wasm-5.10-SNAPSHOT-2023-12-16-a.xctoolchain/usr/bin/swift

wasm-debug:
	$(swift) build \
	-c debug \
	--product swift-syntax-highlighter \
	--triple wasm32-unknown-wasi