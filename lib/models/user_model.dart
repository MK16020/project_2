import 'package:faker/faker.dart';

class UserModel {
  final String name, bio, imageUrl;
  final int id;

  UserModel({required this.id, required this.name, required this.bio, required this.imageUrl});
}

final List<UserModel> users = [
  UserModel(id: 1, name: faker.person.firstName(), bio: faker.lorem.sentence(), imageUrl: 'assets/images/user1.png'),
  UserModel(id: 2, name: faker.person.firstName(), bio: faker.lorem.sentence(), imageUrl: 'assets/images/user2.png'),
  UserModel(id: 3, name: faker.person.firstName(), bio: faker.lorem.sentence(), imageUrl: 'assets/images/user3.png'),
  UserModel(id: 4, name: faker.person.firstName(), bio: faker.lorem.sentence(), imageUrl: 'assets/images/user4.png'),
];
