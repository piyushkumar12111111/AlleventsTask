
class CategroyModel {
  String? category;
  String? data;

  CategroyModel({this.category, this.data});

  CategroyModel.fromJson(Map<String, dynamic> json) {
    if(json["category"] is String) {
      category = json["category"];
    }
    if(json["data"] is String) {
      data = json["data"];
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["category"] = category;
    _data["data"] = data;
    return _data;
  }
}