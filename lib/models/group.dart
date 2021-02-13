import 'package:flutter/foundation.dart';

class Group {
  final String id;
  final String name;
  final String time;
  final String totalMember;
  final List imageUrls;

  Group(
      {@required this.id,
      @required this.name,
      @required this.time,
      @required this.totalMember,
      @required this.imageUrls});
}
