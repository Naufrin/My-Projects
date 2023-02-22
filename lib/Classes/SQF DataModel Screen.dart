class DataModel {
  int? id;
  late String title;
  late String subtitle;
  DataModel({this.id, required this.title, required this.subtitle});
  factory DataModel.fromMap(Map<String, dynamic> json) => DataModel(
      id: json["id"], title: json["title"], subtitle: json["subtitle"]);
  Map<String, dynamic> toMap() =>
      {"id": id, "titile": title, "subtitle": subtitle};
}
