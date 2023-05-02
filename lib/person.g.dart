// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'person.dart';

// **************************************************************************
// ProtoMapperGenerator
// **************************************************************************

class $PersonProtoMapper implements ProtoMapper<Person, GPerson> {
  const $PersonProtoMapper();

  @override
  Person fromProto(GPerson proto) => _$PersonFromProto(proto);

  @override
  GPerson toProto(Person entity) => _$PersonToProto(entity);

  GPerson toFieldsOfProto(Person entity) => _$PersonToProto(entity);

  Person fromJson(String json) => _$PersonFromProto(GPerson.fromJson(json));
  String toJson(Person entity) => _$PersonToProto(entity).writeToJson();

  String toBase64Proto(Person entity) =>
      base64Encode(utf8.encode(entity.toProto().writeToJson()));

  Person fromBase64Proto(String base64Proto) =>
      GPerson.fromJson(utf8.decode(base64Decode(base64Proto))).toPerson();
}

GPerson _$PersonToProto(Person instance) {
  var proto = GPerson();

  proto.name = instance.name;
  proto.age = instance.age;
  proto.hobbies.addAll(instance.hobbies);

  proto.gender = GGender.valueOf(instance.gender.index)!;

  return proto;
}

Person _$PersonFromProto(GPerson proto) {
  return Person(
    name: proto.name,
    age: proto.age,
    hobbies: List<String>.unmodifiable(proto.hobbies.map((e) => e)),
    gender: Gender.values[proto.gender.value],
  );
}

extension $PersonProtoExtension on Person {
  GPerson toProto() => _$PersonToProto(this);
  String toJson() => _$PersonToProto(this).writeToJson();

  static Person fromProto(GPerson proto) => _$PersonFromProto(proto);
  static Person fromJson(String json) =>
      _$PersonFromProto(GPerson.fromJson(json));
}

extension $GPersonProtoExtension on GPerson {
  Person toPerson() => _$PersonFromProto(this);
}

class $GenderProtoMapper implements ProtoMapper<Gender, GGender> {
  const $GenderProtoMapper();

  @override
  Gender fromProto(GGender proto) => Gender.values[proto.value];

  @override
  GGender toProto(Gender entity) => GGender.valueOf(entity.index)!;
}

extension $GGenderProtoExtension on GGender {
  Gender toGender() => const $GenderProtoMapper().fromProto(this);
}
