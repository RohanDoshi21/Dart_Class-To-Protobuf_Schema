import 'person.dart';
import './src/grpc/model.pb.dart';

void main() {
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
}
