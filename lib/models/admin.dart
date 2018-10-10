class AdminStaff{
  int id;
  int userId;
  String name;
  String schoolName;
  String photoPath;
  
  AdminStaff({
    this.id,
    this.name,
     this.userId,
    this.schoolName,
    this.photoPath,
  
 
 });


 factory AdminStaff.fromJson(Map<String, dynamic> json) {
    return AdminStaff(
      id: json['id'] as int,
      name: json['name'] as String,
      userId: json['userId'] as int,
      schoolName: json['schoolName'] as String,
      photoPath: json['photoPath'] as String,

    );
  }
}
