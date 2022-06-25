class ProjectModel {
  String projectName;
  String startAt;
  String endAt;
  bool inWorking;
  String link;
  String sourceCode;
  ProjectModel({
    required this.projectName,
    required this.startAt,
    required this.endAt,
    required this.inWorking,
    required this.link,
    required this.sourceCode,
  });

  ProjectModel.fromJSON(Map<String, dynamic> json)
      : projectName = json['projectName'],
        startAt = json['startAt'],
        endAt = json['endAt'],
        inWorking = json['inWorking'],
        link = json['link'],
        sourceCode = json['sourceCode'];
}
