import 'package:faker/faker.dart';

class Post {
  final String title, info, imageUrl;
  final int userID, categoryID;

  final int id;

  Post({
    required this.id,
    required this.title,
    required this.userID,
    required this.categoryID,
    required this.info,
    required this.imageUrl,
  });
}

List<Post> posts = [
  Post(
    id: 1,
    title: '${faker.lorem.words(4)}',
    userID: 1,
    categoryID: 2,
    info: '${faker.lorem.sentences(20)}',
    imageUrl: 'assets/images/post1.png',
  ),
  Post(
    id: 2,
    title: '${faker.lorem.words(4)}',
    userID: 1,
    categoryID: 2,
    info: '${faker.lorem.sentences(20)}',
    imageUrl: 'assets/images/post2.png',
  ),
  Post(
    id: 3,
    title: '${faker.lorem.words(4)}',
    userID: 2,
    categoryID: 1,
    info: '${faker.lorem.sentences(20)}',
    imageUrl: 'assets/images/post3.png',
  ),
  Post(
    id: 4,
    title: '${faker.lorem.words(4)}',
    userID: 3,
    categoryID: 1,
    info: '${faker.lorem.sentences(20)}',
    imageUrl: 'assets/images/post4.png',
  ),
  Post(
    id: 5,
    title: '${faker.lorem.words(4)}',
    userID: 1,
    categoryID: 3,
    info: '${faker.lorem.sentences(20)}',
    imageUrl: 'assets/images/post5.png',
  ),
  Post(
    id: 6,
    title: '${faker.lorem.words(4)}',
    userID: 3,
    categoryID: 3,
    info: '${faker.lorem.sentences(20)}',
    imageUrl: 'assets/images/post6.png',
  ),
];
