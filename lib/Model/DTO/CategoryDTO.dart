const defaultImg =
    "https://firebasestorage.googleapis.com/v0/b/unidelivery-fad6f.appspot.com/o/images%2Ficons8-rice-bowl-48.png?alt=media&token=5a66159a-0bc1-4527-857d-7fc2801026f4";

class CategoryDTO {
  int? id;
  String? categoryName;
  int? position;
  String? picUrl;
  bool? showOnHome;
  int? type;

  CategoryDTO(
      {this.id,
      this.categoryName,
      this.position,
      this.picUrl,
      this.showOnHome,
      this.type});

  CategoryDTO.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    categoryName = json['category_name'];
    position = json['position'];
    picUrl = json['pic_url'];
    showOnHome = json['show_on_home'];
    type = json['type'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['category_name'] = this.categoryName;
    data['position'] = this.position;
    data['pic_url'] = this.picUrl;
    data['show_on_home'] = this.showOnHome;
    data['type'] = this.type;
    return data;
  }
}
