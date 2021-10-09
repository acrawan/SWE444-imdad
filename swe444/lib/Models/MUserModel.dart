class UserModel {
  String? uid;
  String? email;
  String? mosque_name;
  String? mosque_location = "default";
  int? mosque_phone;
  String? mosque_code;
  String? role;

  UserModel(
      {this.uid,
      this.email,
      this.mosque_name,
      this.mosque_phone,
      this.mosque_location,
      this.mosque_code,
      this.role});

  set uID(String? value) {
    if (value != null) {
      uid = value;
    }
  }

  set emailSet(String? value) {
    if (value != null) {
      email = value;
    }
  }

  set mosqueName(String? value) {
    if (value != null) {
      mosque_name = value;
    }
  }

  set mosquePhone(int? value) {
    if (value != null) {
      mosque_phone = value;
    }
  }

  set mosqueCode(String? value) {
    if (value != null) {
      mosque_code = value;
    }
  }

  set userRole(String? value) {
    if (value != null) {
      role = value;
    }
  }

  // receiving data from server
  factory UserModel.fromMap(map) {
    return UserModel(
      uid: map['uid'],
      email: map['email'],
      mosque_name: map['mosque_name'],
      mosque_phone: map['mosque_phone'],
      mosque_location: map['mosque_location'],
      mosque_code: map['mosque_code'],
      role: map['role'],
    );
  }

  // sending data to our server
  Map<String, dynamic> toMap() {
    return {
      'uid': uid,
      'email': email,
      'mosque_name': mosque_name,
      'phone_number': mosque_phone,
      'location': mosque_location,
      'mosque_code': mosque_code,
      'role': role,
    };
  }
}