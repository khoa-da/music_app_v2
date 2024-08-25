class Song {
  String id;
  String title;
  String album;
  String artist;
  String source;
  String image;
  int duration;

  Song(
      {required this.id,
      required this.title,
      required this.album,
      required this.artist,
      required this.source,
      required this.image,
      required this.duration});

  factory Song.fromJson(Map<String, dynamic> json) {
    return Song(
        id: json['id'],
        title: json['title'],
        album: json['album'],
        artist: json['artist'],
        source: json['source'],
        image: json['image'],
        duration: json['duration']);
  }
}
