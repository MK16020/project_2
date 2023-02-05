import 'package:faker/faker.dart';

class PostModel {
  final String title, info, imageUrl;
  final int userID, categoryID;
  final int id;
  static List<PostModel> favoriteList = [];

  PostModel({
    required this.id,
    required this.title,
    required this.userID,
    required this.categoryID,
    required this.info,
    required this.imageUrl,
  });
}

final List<PostModel> posts = [
  PostModel(
    id: 0,
    title: 'How to Keep Mice Out of Your Camper',
    userID: 1,
    categoryID: 2,
    info: '${faker.lorem.sentences(20)}',
    imageUrl: 'assets/images/post1.png',
  ),
  PostModel(
    id: 1,
    title: 'Paddleboard vs. Kayak: Is One Better Than the Other?',
    userID: 1,
    categoryID: 2,
    info: '${faker.lorem.sentences(20)}',
    imageUrl: 'assets/images/post2.png',
  ),
  PostModel(
    id: 2,
    title: 'How Long Is the Golden Gate Bridge?',
    userID: 2,
    categoryID: 1,
    info: '${faker.lorem.sentences(20)}',
    imageUrl: 'assets/images/post3.png',
  ),
  PostModel(
    id: 3,
    title: '9 Blog Title Formulas That Get Clicks',
    userID: 3,
    categoryID: 1,
    info: '${faker.lorem.sentences(20)}',
    imageUrl: 'assets/images/post4.png',
  ),
  PostModel(
    id: 4,
    title: 'Judo vs. Jiu Titus: What\'s the Difference?',
    userID: 1,
    categoryID: 3,
    info: '${faker.lorem.sentences(20)}',
    imageUrl: 'assets/images/post5.png',
  ),
  PostModel(
    id: 5,
    title: 'value of SEO',
    userID: 3,
    categoryID: 3,
    info: '${faker.lorem.sentences(20)}',
    imageUrl: 'assets/images/post6.png',
  ),
  PostModel(
    id: 6,
    title: 'This High-Fat Diet Is Actually Healthy & Great for Weight Loss',
    userID: 0,
    categoryID: 4,
    info: '${faker.lorem.sentences(20)}',
    imageUrl: 'assets/images/post7.png',
  ),
];
