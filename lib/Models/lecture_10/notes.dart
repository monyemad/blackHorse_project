import 'package:hive/hive.dart';

part 'notes.g.dart';
@HiveType(typeId: 0)
class NoteItem extends HiveObject{
  @HiveField(0)
  String? title;
  @HiveField(1)
  String? subTitle;
  @HiveField(2)
  String? date;

  NoteItem({required this.title,required this.date, required this.subTitle});
}