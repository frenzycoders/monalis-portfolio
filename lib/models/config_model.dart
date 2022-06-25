class PortfolioConfig {
  bool hideSocial;
  bool isBlogs;
  bool isActivity;
  bool isAbout;
  bool isOverview;
  bool isEducation;
  bool isProjects;
  bool isCertifications;

  PortfolioConfig({
    this.hideSocial = false,
    this.isBlogs = false,
    this.isActivity = false,
    this.isAbout = false,
    this.isCertifications = false,
    this.isEducation = false,
    this.isOverview = false,
    this.isProjects = false,
  });

  PortfolioConfig.fromJSON(Map<String, dynamic> json)
      : hideSocial = json['hideSocial'],
        isBlogs = json['isBlogs'],
        isActivity = json['isActivity'],
        isAbout = json['isAbout'],
        isOverview = json['isOverview'],
        isEducation = json['isEducation'],
        isProjects = json['isProjects'],
        isCertifications = json['isCertifications'];
}
