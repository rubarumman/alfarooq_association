class LoginModel {
  Data? data;
  int? status;
  String? message;

  LoginModel({this.data, this.status, this.message});

  LoginModel.fromJson(Map<String, dynamic> json) {
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
  String? email;
  String? phone;
  String? job;
  String? username;
  String? token;

  Data({this.id, this.email, this.phone, this.job, this.username, this.token});

  Data.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    email = json['email'];
    phone = json['phone'];
    job = json['job'];
    username = json['username'];
    token = json['token'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['email'] = this.email;
    data['phone'] = this.phone;
    data['job'] = this.job;
    data['username'] = this.username;
    data['token'] = this.token;
    return data;
  }
}
