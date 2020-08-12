import 'package:social_media_app/models/post_model.dart';

class User {
  final String name;
  final String profileImageUrl;
  final String backgroundImageUrl;
  final int following;
  final int followers;
  final List<Post> posts;
  final List<Post> favorites;

  User({
    this.name,
    this.profileImageUrl,
    this.backgroundImageUrl,
    this.following,
    this.followers,
    this.posts,
    this.favorites,
  });
}
