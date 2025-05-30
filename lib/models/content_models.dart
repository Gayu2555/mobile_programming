class VideoContent {
  final String id;
  final String title;
  final String description;
  final String thumbnailUrl;
  final String videoUrl;
  final String duration;
  final String genre;
  final double rating;
  final bool isNew;
  final ContentType type;

  VideoContent({
    required this.id,
    required this.title,
    required this.description,
    required this.thumbnailUrl,
    required this.videoUrl,
    required this.duration,
    required this.genre,
    required this.rating,
    this.isNew = false,
    required this.type,
  });
}

class AudioContent {
  final String id;
  final String title;
  final String artist;
  final String album;
  final String thumbnailUrl;
  final String audioUrl;
  final String duration;
  final String genre;
  final bool isExplicit;

  AudioContent({
    required this.id,
    required this.title,
    required this.artist,
    required this.album,
    required this.thumbnailUrl,
    required this.audioUrl,
    required this.duration,
    required this.genre,
    this.isExplicit = false,
  });
}

enum ContentType {
  movie,
  series,
  documentary,
  music,
  podcast,
}

class Category {
  final String id;
  final String name;
  final List<dynamic> content;

  Category({
    required this.id,
    required this.name,
    required this.content,
  });
}
