import 'package:faker/faker.dart';

class User {
  final String name, bio, imageUrl;
  final int id;

  User({required this.id, required this.name, required this.bio, required this.imageUrl});
}

List<User> users = [
  User(id: 1, name: faker.person.firstName(), bio: faker.lorem.sentence(), imageUrl: 'assets/images/user1.png'),
  User(id: 2, name: faker.person.firstName(), bio: faker.lorem.sentence(), imageUrl: 'assets/images/user2.png'),
  User(id: 3, name: faker.person.firstName(), bio: faker.lorem.sentence(), imageUrl: 'assets/images/user3.png'),
  User(id: 4, name: faker.person.firstName(), bio: faker.lorem.sentence(), imageUrl: 'assets/images/user4.png'),
];
