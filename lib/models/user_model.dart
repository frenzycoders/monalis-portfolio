class User {
  String name;
  String status;
  String img;
  bool isMale;
  String work;
  String number;
  String email;
  String country;
  String location;
  String github;
  String linkedin;
  String twitter;
  String youtube;
  String instagram;
  String facebook;

  User({
     this.name="N/A",
     this.status="N/A",
     this.img="N/A",
     this.isMale=true,
     this.work="N/A",
     this.number="N/A",
     this.email="N/A",
     this.country="N/A",
     this.location="N/A",
     this.github="N/A",
     this.linkedin="N/A",
     this.twitter="N/A",
     this.youtube="N/A",
     this.facebook="N/A",
     this.instagram="N/A",
  });

  User.fromJSON(Map<String, dynamic> json)
      : name = json['name'],
        status = json['status'],
        img = json['img'],
        isMale = json['isMale'],
        work = json['work'],
        number = json['number'],
        email = json['email'],
        country = json['country'],
        location = json['location'],
        github = json['github'],
        linkedin = json['linkedin'],
        twitter = json['twitter'],
        youtube = json['youtube'],
        facebook = json['facebook'],
        instagram = json['instagram'];
}
