class CertificationModel {
  String certificationName;
  String obtainedAt;
  String obtainedFrom;
  String visitLink;

  CertificationModel({
    required this.certificationName,
    required this.obtainedAt,
    required this.obtainedFrom,
    required this.visitLink,
  });

  CertificationModel.formJSON(Map<String, dynamic> json)
      : certificationName = json['certificationName'],
        obtainedAt = json['obtainedAt'],
        obtainedFrom = json['obtainedFrom'],
        visitLink = json['visitLink'];
}
