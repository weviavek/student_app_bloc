class StudentModel {
  final String key;
  final StudentData studentData;

  StudentModel({required this.key, required this.studentData});
}

class StudentData {
  String? name;
  int? age;
  String? department;
  String? phoneNumber;
  String? email;
  String? profilePath;

  StudentData(
      {required this.name,
      required this.age,
      required this.department,
      required this.phoneNumber,
      required this.email,
      required this.profilePath});
  StudentData.fromJson(Map<dynamic, dynamic> json) {
    name = json['name'];
    age = int.tryParse(json['age']);
    department = json['department'];
    phoneNumber = json['phoneNumber'];
    email = json['email'];
    profilePath = json['profilePath'];
  }
}
