#!/bin/bash

set -e # Exit immediately if a command exits with a non-zero status

# Build the project
dart run build_runner build

# Create the directory for the protobuf-generated code
mkdir -p lib/src/grpc

# Generate Dart code from the protobuf file
protoc --dart_out=grpc:lib/src/grpc -Ilib/proto ./lib/proto/model.proto
