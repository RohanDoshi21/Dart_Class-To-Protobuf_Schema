## Generate Protocol Buffer Schema from a Dart Class
Protocol Buffers (Protobuf) is a free and open-source cross-platform data format used to serialize structured data.

1. Dependencies (pubspec.yaml):
```yaml
    dependencies:
        protobuf: ^2.1.0
        proto_generator: ^4.0.0-dev.12    # Use this version specifically
        proto_annotations: ^3.0.0-dev.3   # Use this version specifically


    dev_dependencies:
        build_runner: ^2.3.3

```


2. Dart Class Definition:
```dart
    import 'package:proto_annotations/proto_annotations.dart';

    // Required as a import for 'person.g.dart';
    import 'src/grpc/model.pb.dart';

    //! Don't forget to add the following line in your dart file, it is essential for the code generation to work.
    part 'person.g.dart';

    @proto
    enum Gender {
        male,
        female
    }

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
```


3. Generate Protocol Buffer Schema:
```bash
    dart run build_runner build

    mkdir -p lib/src/grpc

    protoc --dart_out=grpc:lib/src/grpc -Ilib/proto ./lib/proto/model.proto
```

### Outputs: (Generated Files)
-> lib/proto/model.proto
```proto
    syntax = "proto3";

    message GPerson
    {

    string name = 2;
    int32 age = 3;
    repeated string hobbies = 4;
    GGender gender = 5;

    }

    enum GGender {
    G_GENDER_MALE = 0;
    G_GENDER_FEMALE = 1;
    }
```

-> lib/src/grpc/*.dart

### Now use the generated proto class to serialize and deserialize data.
```dart

  Person obj = Person(
    name: "Rohan",
    age: 20,
    hobbies: ["Badminton", "Table-Tennis"],
    gender: Gender.male,
  );

  // Convert UI class to protoModel
  final protoModel = obj.toProto();

  // Generating Byte Array from protoModel
  var byteArr = protoModel.writeToBuffer();

  // Generating protoModel from Byte Array
  var newProtoModel = GPerson.fromBuffer(byteArr);

  // Converting protoModel to UI class
  var newObj = newProtoModel.toPerson();

  print(newObj.name);
  print(newObj.age);
  print(byteArr);
```
