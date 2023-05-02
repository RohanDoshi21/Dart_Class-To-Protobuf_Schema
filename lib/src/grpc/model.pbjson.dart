///
//  Generated code. Do not modify.
//  source: model.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,deprecated_member_use_from_same_package,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use gGenderDescriptor instead')
const GGender$json = const {
  '1': 'GGender',
  '2': const [
    const {'1': 'G_GENDER_MALE', '2': 0},
    const {'1': 'G_GENDER_FEMALE', '2': 1},
  ],
};

/// Descriptor for `GGender`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List gGenderDescriptor = $convert.base64Decode('CgdHR2VuZGVyEhEKDUdfR0VOREVSX01BTEUQABITCg9HX0dFTkRFUl9GRU1BTEUQAQ==');
@$core.Deprecated('Use gPersonDescriptor instead')
const GPerson$json = const {
  '1': 'GPerson',
  '2': const [
    const {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
    const {'1': 'age', '3': 3, '4': 1, '5': 5, '10': 'age'},
    const {'1': 'hobbies', '3': 4, '4': 3, '5': 9, '10': 'hobbies'},
    const {'1': 'gender', '3': 5, '4': 1, '5': 14, '6': '.GGender', '10': 'gender'},
  ],
};

/// Descriptor for `GPerson`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List gPersonDescriptor = $convert.base64Decode('CgdHUGVyc29uEhIKBG5hbWUYAiABKAlSBG5hbWUSEAoDYWdlGAMgASgFUgNhZ2USGAoHaG9iYmllcxgEIAMoCVIHaG9iYmllcxIgCgZnZW5kZXIYBSABKA4yCC5HR2VuZGVyUgZnZW5kZXI=');
