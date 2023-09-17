class ProjectDetailsModel {
  Data? data;
  int? status;
  String? message;

  ProjectDetailsModel({this.data, this.status, this.message});

  ProjectDetailsModel.fromJson(Map<String, dynamic> json) {
    data = json['data'] != null ? new Data.fromJson(json['data']) : null;
    status = json['status'];
    message = json['message'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.data != null) {
      data['data'] = this.data!.toJson();
    }
    data['status'] = this.status;
    data['message'] = this.message;
    return data;
  }
}

class Data {
  String? id;
  String? name;
  String? address;
  String? banner;
  int? count;
  String? type;
  String? percentage;

  Data(
      {this.id,
      this.name,
      this.address,
      this.banner,
      this.count,
      this.type,
      this.percentage});

  Data.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    address = json['address'];
    banner = json['banner'];
    count = json['count'];
    type = json['type'];
    percentage = json['percentage'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['address'] = this.address;
    data['banner'] = this.banner;
    data['count'] = this.count;
    data['type'] = this.type;
    data['percentage'] = this.percentage;
    return data;
  }
}
