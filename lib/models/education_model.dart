class EducationModel {
  String schoolName;
  String degree;
  String university;
  String startAt;
  String endAt;
  String obtainedMarks;
  String located;

  EducationModel({
    required this.schoolName,
    required this.degree,
    required this.university,
    required this.startAt,
    required this.endAt,
    required this.obtainedMarks,
    required this.located,
  });

  EducationModel.fromJSON(Map<String, dynamic> json)
      : schoolName = json['schoolName'],
        degree = json['degree'],
        startAt = json['startAt'],
        endAt = json['endAt'],
        university = json['university'],
        obtainedMarks = json['obtainedMarks'],
        located = json['located'];
}
