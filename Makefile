SHELL := /bin/zsh
PRODUCT_NAME := namae_dogs

.PHONY: l10n
l10n:
	flutter gen-l10n

.PHONY: watch
watch:
	flutter pub run build_runner watch --delete-conflicting-outputs