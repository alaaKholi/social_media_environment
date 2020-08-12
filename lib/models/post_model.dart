import 'package:social_media_app/models/user_model.dart';

class Post {
  final String imageUrl;
  final User author;
  final String location;
  final String title;
  final int likes;
  final int comments;

  Post(
      {this.imageUrl,
      this.author,
      this.location,
      this.title,
      this.likes,
      this.comments});
}
