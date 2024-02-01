class Character {
  late int id;
  late String name;
  late String status;
  late String species;
  late String type;
  late String gender;
  Location? origin;
  Location? location;
  late String image;
  late List<String> episode;
  late String url;
  late DateTime created;

  Character({
    required this.id,
    required this.name,
    required this.status,
    required this.species,
    required this.type,
    required this.gender,
    required this.origin,
    required this.location,
    required this.image,
    required this.episode,
    required this.url,
    required this.created,
  });

  Character.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    status = json['status'];
    species = json['species'];
    type = json['type'];
    gender = json['gender'];
    origin = json['origin'] != null ? Location.fromJson(json['origin']) : null;
    location =
        json['location'] != null ? Location.fromJson(json['location']) : null;
    image = json['image'];
    episode = json['episode'].cast<String>();
    url = json['url'];
    created = DateTime.parse(json['created']);
  }
}

class Location {
  late String name;
  late String url;

  Location({
    required this.name,
    required this.url,
  });

  Location.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    url = json['url'];
  }
}

class Origin {
  late String name;
  late String url;

  Origin({
    required this.name,
    required this.url,
  });

  Origin.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    url = json['url'];
  }
}


/*

class Characters {
    Info info;
    List<Result> results;

    Characters({
        required this.info,
        required this.results,
    });

}

class Info {
    int count;
    int pages;
    String next;
    dynamic prev;

    Info({
        required this.count,
        required this.pages,
        required this.next,
        required this.prev,
    });

}

class Result {
    int id;
    String name;
    Status status;
    Species species;
    String type;
    Gender gender;
    Location origin;
    Location location;
    String image;
    List<String> episode;
    String url;
    DateTime created;

    Result({
        required this.id,
        required this.name,
        required this.status,
        required this.species,
        required this.type,
        required this.gender,
        required this.origin,
        required this.location,
        required this.image,
        required this.episode,
        required this.url,
        required this.created,
    });

}

enum Gender {
    FEMALE,
    MALE,
    UNKNOWN
}

class Location {
    String name;
    String url;

    Location({
        required this.name,
        required this.url,
    });

}

enum Species {
    ALIEN,
    HUMAN
}

enum Status {
    ALIVE,
    DEAD,
    UNKNOWN
}

*/