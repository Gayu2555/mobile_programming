import '../models/content_models.dart';

class MockData {
  static List<Category> getCategories() {
    return [
      Category(
        id: '1',
        name: 'Trending Movies',
        content: _getTrendingMovies(),
      ),
      Category(
        id: '2',
        name: 'New Music',
        content: _getNewMusic(),
      ),
      Category(
        id: '3',
        name: 'Top Series',
        content: _getTopSeries(),
      ),
      Category(
        id: '4',
        name: 'Podcasts',
        content: _getPodcasts(),
      ),
      Category(
        id: '5',
        name: 'Action Movies',
        content: _getActionMovies(),
      ),
    ];
  }

  static VideoContent getFeaturedContent() {
    return VideoContent(
      id: 'featured_1',
      title: 'Stranger Things',
      description:
          'When a young boy vanishes, a small town uncovers a mystery involving secret experiments, terrifying supernatural forces, and one strange little girl.',
      thumbnailUrl: 'https://picsum.photos/800/450?random=1',
      videoUrl: 'https://example.com/stranger-things',
      duration: '51 min',
      genre: 'Sci-Fi',
      rating: 8.7,
      isNew: false,
      type: ContentType.series,
    );
  }

  static List<VideoContent> _getTrendingMovies() {
    return [
      VideoContent(
        id: 'movie_1',
        title: 'The Dark Knight',
        description: 'Batman faces the Joker in this epic crime thriller.',
        thumbnailUrl: 'https://picsum.photos/300/450?random=2',
        videoUrl: 'https://example.com/dark-knight',
        duration: '152 min',
        genre: 'Action',
        rating: 9.0,
        isNew: false,
        type: ContentType.movie,
      ),
      VideoContent(
        id: 'movie_2',
        title: 'Inception',
        description:
            'A thief who steals corporate secrets through dream-sharing technology.',
        thumbnailUrl: 'https://picsum.photos/300/450?random=3',
        videoUrl: 'https://example.com/inception',
        duration: '148 min',
        genre: 'Sci-Fi',
        rating: 8.8,
        isNew: false,
        type: ContentType.movie,
      ),
      VideoContent(
        id: 'movie_3',
        title: 'Avatar: The Way of Water',
        description:
            'Jake Sully lives with his newfound family formed on the extrasolar moon Pandora.',
        thumbnailUrl: 'https://picsum.photos/300/450?random=4',
        videoUrl: 'https://example.com/avatar-2',
        duration: '192 min',
        genre: 'Adventure',
        rating: 7.6,
        isNew: true,
        type: ContentType.movie,
      ),
      VideoContent(
        id: 'movie_4',
        title: 'Top Gun: Maverick',
        description:
            'After thirty years, Maverick is still pushing the envelope as a top naval aviator.',
        thumbnailUrl: 'https://picsum.photos/300/450?random=5',
        videoUrl: 'https://example.com/top-gun-maverick',
        duration: '130 min',
        genre: 'Action',
        rating: 8.3,
        isNew: true,
        type: ContentType.movie,
      ),
    ];
  }

  static List<AudioContent> _getNewMusic() {
    return [
      AudioContent(
        id: 'music_1',
        title: 'As It Was',
        artist: 'Harry Styles',
        album: 'Harry\'s House',
        thumbnailUrl: 'https://picsum.photos/300/300?random=6',
        audioUrl: 'https://example.com/as-it-was',
        duration: '2:47',
        genre: 'Pop',
        isExplicit: false,
      ),
      AudioContent(
        id: 'music_2',
        title: 'Anti-Hero',
        artist: 'Taylor Swift',
        album: 'Midnights',
        thumbnailUrl: 'https://picsum.photos/300/300?random=7',
        audioUrl: 'https://example.com/anti-hero',
        duration: '3:20',
        genre: 'Pop',
        isExplicit: false,
      ),
      AudioContent(
        id: 'music_3',
        title: 'Flowers',
        artist: 'Miley Cyrus',
        album: 'Endless Summer Vacation',
        thumbnailUrl: 'https://picsum.photos/300/300?random=8',
        audioUrl: 'https://example.com/flowers',
        duration: '3:20',
        genre: 'Pop',
        isExplicit: false,
      ),
      AudioContent(
        id: 'music_4',
        title: 'Unholy',
        artist: 'Sam Smith ft. Kim Petras',
        album: 'Gloria',
        thumbnailUrl: 'https://picsum.photos/300/300?random=9',
        audioUrl: 'https://example.com/unholy',
        duration: '2:36',
        genre: 'Pop',
        isExplicit: true,
      ),
    ];
  }

  static List<VideoContent> _getTopSeries() {
    return [
      VideoContent(
        id: 'series_1',
        title: 'Breaking Bad',
        description:
            'A high school chemistry teacher turned methamphetamine manufacturer.',
        thumbnailUrl: 'https://picsum.photos/300/450?random=10',
        videoUrl: 'https://example.com/breaking-bad',
        duration: '5 Seasons',
        genre: 'Crime',
        rating: 9.5,
        isNew: false,
        type: ContentType.series,
      ),
      VideoContent(
        id: 'series_2',
        title: 'The Crown',
        description:
            'The political rivalries and romance of Queen Elizabeth II\'s reign.',
        thumbnailUrl: 'https://picsum.photos/300/450?random=11',
        videoUrl: 'https://example.com/the-crown',
        duration: '6 Seasons',
        genre: 'Drama',
        rating: 8.7,
        isNew: false,
        type: ContentType.series,
      ),
      VideoContent(
        id: 'series_3',
        title: 'Wednesday',
        description:
            'A coming-of-age supernatural mystery comedy horror series.',
        thumbnailUrl: 'https://picsum.photos/300/450?random=12',
        videoUrl: 'https://example.com/wednesday',
        duration: '1 Season',
        genre: 'Horror',
        rating: 8.1,
        isNew: true,
        type: ContentType.series,
      ),
    ];
  }

  static List<AudioContent> _getPodcasts() {
    return [
      AudioContent(
        id: 'podcast_1',
        title: 'The Joe Rogan Experience',
        artist: 'Joe Rogan',
        album: 'Podcast',
        thumbnailUrl: 'https://picsum.photos/300/300?random=13',
        audioUrl: 'https://example.com/joe-rogan',
        duration: '2:30:00',
        genre: 'Comedy',
        isExplicit: true,
      ),
      AudioContent(
        id: 'podcast_2',
        title: 'Serial',
        artist: 'Sarah Koenig',
        album: 'Podcast',
        thumbnailUrl: 'https://picsum.photos/300/300?random=14',
        audioUrl: 'https://example.com/serial',
        duration: '45:00',
        genre: 'True Crime',
        isExplicit: false,
      ),
      AudioContent(
        id: 'podcast_3',
        title: 'TED Talks Daily',
        artist: 'TED',
        album: 'Podcast',
        thumbnailUrl: 'https://picsum.photos/300/300?random=15',
        audioUrl: 'https://example.com/ted-talks',
        duration: '20:00',
        genre: 'Education',
        isExplicit: false,
      ),
    ];
  }

  static List<VideoContent> _getActionMovies() {
    return [
      VideoContent(
        id: 'action_1',
        title: 'John Wick',
        description:
            'An ex-hitman comes out of retirement to track down the gangsters.',
        thumbnailUrl: 'https://picsum.photos/300/450?random=16',
        videoUrl: 'https://example.com/john-wick',
        duration: '101 min',
        genre: 'Action',
        rating: 7.4,
        isNew: false,
        type: ContentType.movie,
      ),
      VideoContent(
        id: 'action_2',
        title: 'Mad Max: Fury Road',
        description:
            'In a post-apocalyptic wasteland, Max teams up with Furiosa.',
        thumbnailUrl: 'https://picsum.photos/300/450?random=17',
        videoUrl: 'https://example.com/mad-max',
        duration: '120 min',
        genre: 'Action',
        rating: 8.1,
        isNew: false,
        type: ContentType.movie,
      ),
      VideoContent(
        id: 'action_3',
        title: 'Mission: Impossible',
        description: 'Ethan Hunt and his team race against time.',
        thumbnailUrl: 'https://picsum.photos/300/450?random=18',
        videoUrl: 'https://example.com/mission-impossible',
        duration: '163 min',
        genre: 'Action',
        rating: 7.7,
        isNew: true,
        type: ContentType.movie,
      ),
    ];
  }
}
