import 'package:hive/hive.dart';

part 'notes.g.dart';

@HiveType(typeId: 0)
class NoteItem extends HiveObject {
  @HiveField(0)
  String? title;
  @HiveField(1)
  String? subTitle;

  NoteItem({required this.title, required this.subTitle});
}
