class StudentModel {
  String? name;
  int? age;
  String? department;
  String? phoneNumber;
  String? email;
  String? profilePath;

  StudentModel(
      {required this.name,
      required this.age,
      required this.department,
      required this.phoneNumber,
      required this.email,
      required this.profilePath});
  StudentModel.fromJson(Map<dynamic, dynamic> json) {
    name = json['name'];
    age = json['age'];
    department = json['department'];
    phoneNumber = json['phoneNumber'];
    email = json['email'];
    department = json['profilePath'];
  }
}
