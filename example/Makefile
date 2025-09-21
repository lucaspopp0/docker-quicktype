SHELL := bash -e

generate:
	rm -rf outputs/*
	make generate-ts 
	make generate-swift
	make generate-go
.PHONY: generate

# Generate TypeScript types from JSON schemas
generate-ts:
	mkdir -p outputs/ts
	npx quicktype inputs/jsonschema/*.json \
		-o outputs/ts/index.ts \
		--src-lang schema \
		--lang typescript
.PHONY: generate-ts

# Generate Swift models from JSON schemas
generate-swift:
	mkdir -p outputs/swift
	npx quicktype inputs/jsonschema/*.json \
		-o outputs/swift/Models.swift \
		--src-lang schema \
		--lang swift \
		--swift-5-support \
		--access-level public \
		--no-coding-keys
.PHONY: generate-swift

# Generate Go models from JSON schemas
generate-go:
	mkdir -p outputs/go
	npx quicktype inputs/jsonschema/*.json \
		-o outputs/go/model.go \
		--src-lang schema \
		--lang go \
		--package model \
		--field-tags json,dynamodbav
.PHONY: generate-go
