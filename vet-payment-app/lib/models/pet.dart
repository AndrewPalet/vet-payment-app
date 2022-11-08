class Pet {
  final int id;
  final String name;
  final String profileUrl;

  Pet(this.id, this.name, this.profileUrl);

  Pet.fromJson(Map<String, dynamic> json)
      : id = json['id'],
        name = json['name'],
        profileUrl = json['profileUrl'];

  Map<String, dynamic> toJson() =>
      {'id': id, 'name': name, 'profileUrl': profileUrl};
}
