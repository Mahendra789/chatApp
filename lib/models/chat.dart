import 'package:flutter/foundation.dart';

class Chat {
  final String id;
  final String name;
  final String message;
  final String time;
  final String imageUrl;

  Chat(
      {@required this.id,
      @required this.name,
      @required this.message,
      @required this.time,
      @required this.imageUrl});
}
