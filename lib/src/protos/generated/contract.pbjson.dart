///
//  Generated code. Do not modify.
//  source: contract.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields,deprecated_member_use_from_same_package

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use emptyDescriptor instead')
const Empty$json = const {
  '1': 'Empty',
};

/// Descriptor for `Empty`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List emptyDescriptor = $convert.base64Decode('CgVFbXB0eQ==');
@$core.Deprecated('Use coinDescriptor instead')
const Coin$json = const {
  '1': 'Coin',
  '2': const [
    const {'1': 'name', '3': 1, '4': 1, '5': 9, '10': 'name'},
    const {'1': 'simbol', '3': 2, '4': 1, '5': 9, '10': 'simbol'},
    const {'1': 'icon', '3': 3, '4': 1, '5': 11, '6': '.Icon', '10': 'icon'},
  ],
};

/// Descriptor for `Coin`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List coinDescriptor = $convert.base64Decode('CgRDb2luEhIKBG5hbWUYASABKAlSBG5hbWUSFgoGc2ltYm9sGAIgASgJUgZzaW1ib2wSGQoEaWNvbhgDIAEoCzIFLkljb25SBGljb24=');
@$core.Deprecated('Use coinsDescriptor instead')
const Coins$json = const {
  '1': 'Coins',
  '2': const [
    const {'1': 'coins', '3': 1, '4': 3, '5': 11, '6': '.Coin', '10': 'coins'},
  ],
};

/// Descriptor for `Coins`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List coinsDescriptor = $convert.base64Decode('CgVDb2lucxIbCgVjb2lucxgBIAMoCzIFLkNvaW5SBWNvaW5z');
@$core.Deprecated('Use searchQueryDescriptor instead')
const SearchQuery$json = const {
  '1': 'SearchQuery',
  '2': const [
    const {'1': 'value', '3': 1, '4': 1, '5': 9, '10': 'value'},
  ],
};

/// Descriptor for `SearchQuery`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List searchQueryDescriptor = $convert.base64Decode('CgtTZWFyY2hRdWVyeRIUCgV2YWx1ZRgBIAEoCVIFdmFsdWU=');
@$core.Deprecated('Use iconDescriptor instead')
const Icon$json = const {
  '1': 'Icon',
  '2': const [
    const {'1': 'iconurl', '3': 1, '4': 1, '5': 9, '10': 'iconurl'},
  ],
};

/// Descriptor for `Icon`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List iconDescriptor = $convert.base64Decode('CgRJY29uEhgKB2ljb251cmwYASABKAlSB2ljb251cmw=');
