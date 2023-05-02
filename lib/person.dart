import 'package:proto_annotations/proto_annotations.dart';

import 'src/grpc/model.pb.dart';

//! Don't forget to add the following line in your dart file, it is essential for the code generation to work.
part 'person.g.dart';

@proto
enum Gender { male, female }

@proto
class Person {
  @ProtoField(2)
  String name;

  @ProtoField(3)
  int age;

  @ProtoField(4)
  List<String> hobbies;

  @ProtoField(5)
  Gender gender;

  Person({
    required this.name,
    required this.age,
    required this.hobbies,
    required this.gender,
  });
}
