class PortfolioModel {
  Contact? contact;
  String? sId;
  String? name;
  String? githubUrl;
  String? linkedinUrl;
  List<Projects>? projects;
  String? about;
  String? resumeLink;
  List<Blogs>? blogs;
  String? createdAt;

  PortfolioModel(
      {this.contact,
      this.sId,
      this.name,
      this.githubUrl,
      this.linkedinUrl,
      this.projects,
      this.about,
      this.resumeLink,
      this.blogs,
      this.createdAt});

  PortfolioModel.fromJson(Map<String, dynamic> json) {
    contact =
        json['contact'] != null ? Contact.fromJson(json['contact']) : null;
    sId = json['_id'];
    name = json['name'];
    githubUrl = json['github_url'];
    linkedinUrl = json['linkedin_url'];
    if (json['projects'] != null) {
      projects = <Projects>[];
      json['projects'].forEach((v) {
        projects!.add(Projects.fromJson(v));
      });
    }
    about = json['about'];
    resumeLink = json['resume_link'];
    if (json['blogs'] != null) {
      blogs = <Blogs>[];
      json['blogs'].forEach((v) {
        blogs!.add(Blogs.fromJson(v));
      });
    }
    createdAt = json['createdAt'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (contact != null) {
      data['contact'] = contact!.toJson();
    }
    data['_id'] = sId;
    data['name'] = name;
    data['github_url'] = githubUrl;
    data['linkedin_url'] = linkedinUrl;
    if (projects != null) {
      data['projects'] = projects!.map((v) => v.toJson()).toList();
    }
    data['about'] = about;
    data['resume_link'] = resumeLink;
    if (blogs != null) {
      data['blogs'] = blogs!.map((v) => v.toJson()).toList();
    }
    data['createdAt'] = createdAt;
    return data;
  }
}

class Contact {
  String? name;
  String? email;
  String? message;
  String? number;

  Contact({this.name, this.email, this.message, this.number});

  Contact.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    email = json['email'];
    message = json['message'];
    number = json['number'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['name'] = name;
    data['email'] = email;
    data['message'] = message;
    data['number'] = number;
    return data;
  }
}

class Projects {
  String? sId;
  String? title;
  String? description;
  String? visitUrl;
  String? githubUrl;
  String? createdAt;

  Projects(
      {this.sId,
      this.title,
      this.description,
      this.visitUrl,
      this.githubUrl,
      this.createdAt});

  Projects.fromJson(Map<String, dynamic> json) {
    sId = json['_id'];
    title = json['title'];
    description = json['description'];
    visitUrl = json['visit_url'];
    githubUrl = json['github_url'];
    createdAt = json['createdAt'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['_id'] = sId;
    data['title'] = title;
    data['description'] = description;
    data['visit_url'] = visitUrl;
    data['github_url'] = githubUrl;
    data['createdAt'] = createdAt;
    return data;
  }
}

class Blogs {
  String? sId;
  String? title;
  String? description;
  String? visitUrl;
  String? createdAt;

  Blogs(
      {this.sId, this.title, this.description, this.visitUrl, this.createdAt});

  Blogs.fromJson(Map<String, dynamic> json) {
    sId = json['_id'];
    title = json['title'];
    description = json['description'];
    visitUrl = json['visit_url'];
    createdAt = json['createdAt'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['_id'] = sId;
    data['title'] = title;
    data['description'] = description;
    data['visit_url'] = visitUrl;
    data['createdAt'] = createdAt;
    return data;
  }
}
