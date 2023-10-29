.PHONY: codegen
codegen:
	buf generate ./proto --template ./proto/buf.gen.yaml
