.PHONY: setup fix build-runner run-ck run-html test

setup:
	asdf install
	flutter pub get

format:
	flutter format lib/

analyze:
	flutter analyze

build-runner:
	flutter pub run build_runner build --delete-conflicting-outputs

sort-import:
	flutter pub run import_sorter:main lib\/*

fix: format analyze sort-import

run-ck:
	flutter run -d chrome --web-renderer canvaskit

run-html:
	flutter run -d chrome --web-renderer html

test:
	flutter test --reporter expanded --web-renderer html
