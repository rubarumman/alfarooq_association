class UpdateInfoModel {
  Data? data;
  int? status;
  String? message;

  UpdateInfoModel({this.data, this.status, this.message});

  UpdateInfoModel.fromJson(Map<String, dynamic> json) {
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
  String? username;
  String? job;
  String? email;
  String? phone;
  String? address;
  String? password;
  String? createdAt;

  Data(
      {this.id,
      this.username,
      this.job,
      this.email,
      this.phone,
      this.address,
      this.password,
      this.createdAt});

  Data.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    username = json['username'];
    job = json['job'];
    email = json['email'];
    phone = json['phone'];
    address = json['address'];
    password = json['password'];
    createdAt = json['created_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['username'] = this.username;
    data['job'] = this.job;
    data['email'] = this.email;
    data['phone'] = this.phone;
    data['address'] = this.address;
    data['password'] = this.password;
    data['created_at'] = this.createdAt;
    return data;
  }
}
