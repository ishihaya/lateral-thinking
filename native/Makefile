
.PHONY: codegen
codegen:
	dart run build_runner build

.PHONY: run
run:
	flutter run -d $(DEVICE_ID) --dart-define-from-file=./dart_define_dev.json

.PHONY: check-device-id
check-device-id:
	flutter devices

lint:
	flutter analyze .

.PHONY: build-dev
build-dev:
	dart run flutter_launcher_icons -f launcher_icon-dev.yaml
	flutter build ipa --release --dart-define-from-file=./dart_define_dev.json

.PHONY: build-prd
build-prd:
	dart run flutter_launcher_icons -f launcher_icon-prd.yaml
	flutter build ipa --release  --dart-define-from-file=./dart_define_prd.json