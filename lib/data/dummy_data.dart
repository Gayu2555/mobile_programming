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
      Category(
        id: '6',
        name: 'Popular Anime',
        content: _getPopularAnime(),
      ),
      Category(
        id: '7',
        name: 'Anime Movies',
        content: _getAnimeMovies(),
      ),
      Category(
        id: '8',
        name: 'Shounen Anime',
        content: _getShounenAnime(),
      ),
      Category(
        id: '9',
        name: 'Romance Anime',
        content: _getRomanceAnime(),
      ),
      Category(
        id: '10',
        name: 'Slice of Life Anime',
        content: _getSliceOfLifeAnime(),
      ),
    ];
  }

  static VideoContent getFeaturedContent() {
    return VideoContent(
      id: 'featured_1',
      title: 'Attack on Titan',
      description:
          'Humanity fights for survival against giant humanoid Titans. Eren Yeager joins the fight to reclaim the world and uncover the truth behind the Titans.',
      thumbnailUrl:
          'https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/ac94a777-d256-47df-b08e-29a03ca02ec6/dg83zic-c95aaa32-d370-44a6-ad28-5eef8587efbd.png/v1/fill/w_774,h_1032,q_70,strp/poster___attack_on_titan_by_staku1_dg83zic-pre.jpg?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7ImhlaWdodCI6Ijw9MTcwNyIsInBhdGgiOiJcL2ZcL2FjOTRhNzc3LWQyNTYtNDdkZi1iMDhlLTI5YTAzY2EwMmVjNlwvZGc4M3ppYy1jOTVhYWEzMi1kMzcwLTQ0YTYtYWQyOC01ZWVmODU4N2VmYmQucG5nIiwid2lkdGgiOiI8PTEyODAifV1dLCJhdWQiOlsidXJuOnNlcnZpY2U6aW1hZ2Uub3BlcmF0aW9ucyJdfQ.6cu7xVSRjlBNz538PpwBIxvTifYENK1Oycj8epjWiWU',
      videoUrl: 'https://example.com/attack-on-titan',
      duration: '24 min per episode',
      genre: 'Action',
      rating: 9.0,
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
      VideoContent(
        id: 'movie_5',
        title: 'Dune',
        description:
            'Paul Atreides leads nomadic tribes in a revolt against the galactic emperor.',
        thumbnailUrl: 'https://picsum.photos/300/450?random=50',
        videoUrl: 'https://example.com/dune',
        duration: '155 min',
        genre: 'Sci-Fi',
        rating: 8.0,
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
      AudioContent(
        id: 'music_5',
        title: 'Cruel Summer',
        artist: 'Taylor Swift',
        album: 'Lover',
        thumbnailUrl: 'https://picsum.photos/300/300?random=51',
        audioUrl: 'https://example.com/cruel-summer',
        duration: '2:58',
        genre: 'Pop',
        isExplicit: false,
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
      VideoContent(
        id: 'series_4',
        title: 'House of the Dragon',
        description:
            'An internal succession war within House Targaryen at the height of its power.',
        thumbnailUrl: 'https://picsum.photos/300/450?random=52',
        videoUrl: 'https://example.com/house-of-dragon',
        duration: '2 Seasons',
        genre: 'Fantasy',
        rating: 8.4,
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
      AudioContent(
        id: 'podcast_4',
        title: 'Crime Junkie',
        artist: 'Ashley Flowers',
        album: 'Podcast',
        thumbnailUrl: 'https://picsum.photos/300/300?random=53',
        audioUrl: 'https://example.com/crime-junkie',
        duration: '1:15:00',
        genre: 'True Crime',
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
      VideoContent(
        id: 'action_4',
        title: 'Fast X',
        description: 'Dom and his family face their most lethal opponent.',
        thumbnailUrl: 'https://picsum.photos/300/450?random=54',
        videoUrl: 'https://example.com/fast-x',
        duration: '141 min',
        genre: 'Action',
        rating: 5.8,
        isNew: true,
        type: ContentType.movie,
      ),
    ];
  }

  static List<VideoContent> _getPopularAnime() {
    return [
      VideoContent(
        id: 'anime_1',
        title: 'Attack on Titan',
        description:
            'Humanity fights for survival against giant humanoid Titans in this dark fantasy series.',
        thumbnailUrl: 'https://picsum.photos/300/450?random=19',
        videoUrl: 'https://example.com/attack-on-titan',
        duration: '4 Seasons',
        genre: 'Action',
        rating: 9.0,
        isNew: false,
        type: ContentType.series,
      ),
      VideoContent(
        id: 'anime_2',
        title: 'Demon Slayer',
        description:
            'Tanjiro becomes a demon slayer to save his sister and avenge his family.',
        thumbnailUrl: 'https://picsum.photos/300/450?random=20',
        videoUrl: 'https://example.com/demon-slayer',
        duration: '3 Seasons',
        genre: 'Action',
        rating: 8.7,
        isNew: true,
        type: ContentType.series,
      ),
      VideoContent(
        id: 'anime_3',
        title: 'Jujutsu Kaisen',
        description:
            'Students at Tokyo Jujutsu High School fight against cursed spirits.',
        thumbnailUrl: 'https://picsum.photos/300/450?random=21',
        videoUrl: 'https://example.com/jujutsu-kaisen',
        duration: '2 Seasons',
        genre: 'Supernatural',
        rating: 8.6,
        isNew: true,
        type: ContentType.series,
      ),
      VideoContent(
        id: 'anime_4',
        title: 'One Piece',
        description:
            'Monkey D. Luffy explores the Grand Line to find the legendary treasure One Piece.',
        thumbnailUrl: 'https://picsum.photos/300/450?random=22',
        videoUrl: 'https://example.com/one-piece',
        duration: '1000+ Episodes',
        genre: 'Adventure',
        rating: 9.1,
        isNew: false,
        type: ContentType.series,
      ),
      VideoContent(
        id: 'anime_5',
        title: 'My Hero Academia',
        description:
            'In a world where superpowers are common, Izuku dreams of becoming a hero.',
        thumbnailUrl: 'https://picsum.photos/300/450?random=23',
        videoUrl: 'https://example.com/my-hero-academia',
        duration: '6 Seasons',
        genre: 'Superhero',
        rating: 8.5,
        isNew: false,
        type: ContentType.series,
      ),
      VideoContent(
        id: 'anime_6',
        title: 'Chainsaw Man',
        description:
            'Denji becomes the Chainsaw Man and hunts devils for the Public Safety Division.',
        thumbnailUrl: 'https://picsum.photos/300/450?random=24',
        videoUrl: 'https://example.com/chainsaw-man',
        duration: '1 Season',
        genre: 'Horror',
        rating: 8.8,
        isNew: true,
        type: ContentType.series,
      ),
    ];
  }

  static List<VideoContent> _getAnimeMovies() {
    return [
      VideoContent(
        id: 'anime_movie_1',
        title: 'Spirited Away',
        description:
            'A girl enters a magical world and must work to free her parents from a curse.',
        thumbnailUrl: 'https://picsum.photos/300/450?random=25',
        videoUrl: 'https://example.com/spirited-away',
        duration: '125 min',
        genre: 'Fantasy',
        rating: 9.3,
        isNew: false,
        type: ContentType.movie,
      ),
      VideoContent(
        id: 'anime_movie_2',
        title: 'Your Name',
        description:
            'Two teenagers share a profound, magical connection upon discovering they are swapping bodies.',
        thumbnailUrl: 'https://picsum.photos/300/450?random=26',
        videoUrl: 'https://example.com/your-name',
        duration: '106 min',
        genre: 'Romance',
        rating: 8.4,
        isNew: false,
        type: ContentType.movie,
      ),
      VideoContent(
        id: 'anime_movie_3',
        title: 'Princess Mononoke',
        description:
            'A prince becomes involved in a struggle between forest gods and humans.',
        thumbnailUrl: 'https://picsum.photos/300/450?random=27',
        videoUrl: 'https://example.com/princess-mononoke',
        duration: '134 min',
        genre: 'Adventure',
        rating: 8.4,
        isNew: false,
        type: ContentType.movie,
      ),
      VideoContent(
        id: 'anime_movie_4',
        title: 'Akira',
        description:
            'In Neo-Tokyo, Kaneda tries to save his friend Tetsuo from a secret government project.',
        thumbnailUrl: 'https://picsum.photos/300/450?random=28',
        videoUrl: 'https://example.com/akira',
        duration: '124 min',
        genre: 'Sci-Fi',
        rating: 8.0,
        isNew: false,
        type: ContentType.movie,
      ),
      VideoContent(
        id: 'anime_movie_5',
        title: 'Weathering with You',
        description:
            'A high school boy who has run away to Tokyo befriends a girl who can manipulate weather.',
        thumbnailUrl: 'https://picsum.photos/300/450?random=29',
        videoUrl: 'https://example.com/weathering-with-you',
        duration: '112 min',
        genre: 'Romance',
        rating: 7.5,
        isNew: false,
        type: ContentType.movie,
      ),
      VideoContent(
        id: 'anime_movie_6',
        title: 'Suzume',
        description:
            'A girl must close doors that are releasing disasters upon Japan.',
        thumbnailUrl: 'https://picsum.photos/300/450?random=30',
        videoUrl: 'https://example.com/suzume',
        duration: '122 min',
        genre: 'Adventure',
        rating: 8.2,
        isNew: true,
        type: ContentType.movie,
      ),
    ];
  }

  static List<VideoContent> _getShounenAnime() {
    return [
      VideoContent(
        id: 'shounen_1',
        title: 'Naruto',
        description:
            'A young ninja seeks recognition and dreams of becoming the Hokage.',
        thumbnailUrl: 'https://wallpapercave.com/wp/wp8840621.jpg',
        videoUrl: 'https://example.com/naruto',
        duration: '720 Episodes',
        genre: 'Action',
        rating: 8.4,
        isNew: false,
        type: ContentType.series,
      ),
      VideoContent(
        id: 'shounen_2',
        title: 'Dragon Ball Z',
        description: 'Goku and friends defend Earth against powerful enemies.',
        thumbnailUrl:
            'https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/0d31f134-d1e5-44f8-9004-78090d59f973/dcg184v-e2250adc-e2e9-4bdd-baa1-e7bf94bebaf1.jpg/v1/fill/w_900,h_1350,q_75,strp/dragon_ball_z_posters_by_myyctz_dcg184v-fullview.jpg?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7InBhdGgiOiJcL2ZcLzBkMzFmMTM0LWQxZTUtNDRmOC05MDA0LTc4MDkwZDU5Zjk3M1wvZGNnMTg0di1lMjI1MGFkYy1lMmU5LTRiZGQtYmFhMS1lN2JmOTRiZWJhZjEuanBnIiwiaGVpZ2h0IjoiPD0xMzUwIiwid2lkdGgiOiI8PTkwMCJ9XV0sImF1ZCI6WyJ1cm46c2VydmljZTppbWFnZS53YXRlcm1hcmsiXSwid21rIjp7InBhdGgiOiJcL3dtXC8wZDMxZjEzNC1kMWU1LTQ0ZjgtOTAwNC03ODA5MGQ1OWY5NzNcL215eWN0ei00LnBuZyIsIm9wYWNpdHkiOjk1LCJwcm9wb3J0aW9ucyI6MC40NSwiZ3Jhdml0eSI6ImNlbnRlciJ9fQ.Yt5ZQ_sDgi_iqvZUhHWzMI-ku1A6idZRSBDdjNJQUj0',
        videoUrl: 'https://example.com/dragon-ball-z',
        duration: '291 Episodes',
        genre: 'Action',
        rating: 8.8,
        isNew: false,
        type: ContentType.series,
      ),
      VideoContent(
        id: 'shounen_3',
        title: 'Bleach',
        description:
            'Ichigo Kurosaki gains Soul Reaper powers and protects humans from evil spirits.',
        thumbnailUrl: 'https://picfiles.alphacoders.com/186/186584.jpg',
        videoUrl: 'https://example.com/bleach',
        duration: '4 Seasons',
        genre: 'Supernatural',
        rating: 8.2,
        isNew: true,
        type: ContentType.series,
      ),
      VideoContent(
        id: 'shounen_4',
        title: 'Hunter x Hunter',
        description:
            'Gon Freecss discovers his father is a legendary Hunter and decides to follow his path.',
        thumbnailUrl:
            'https://i.pinimg.com/originals/c5/d1/a9/c5d1a932c851ed6217098a7d97a4fb9f.jpg',
        videoUrl: 'https://example.com/hunter-x-hunter',
        duration: '148 Episodes',
        genre: 'Adventure',
        rating: 9.0,
        isNew: false,
        type: ContentType.series,
      ),
      VideoContent(
        id: 'shounen_5',
        title: 'Black Clover',
        description:
            'Asta, born without magic, aims to become the Wizard King in a world full of magic.',
        thumbnailUrl: 'https://wallpapercave.com/wp/wp9648761.png',
        videoUrl: 'https://example.com/black-clover',
        duration: '170 Episodes',
        genre: 'Magic',
        rating: 8.3,
        isNew: false,
        type: ContentType.series,
      ),
    ];
  }

  static List<VideoContent> _getRomanceAnime() {
    return [
      VideoContent(
        id: 'romance_1',
        title: 'Kaguya-sama: Love is War',
        description:
            'Two prideful students engage in psychological warfare to make the other confess their love.',
        thumbnailUrl:
            'https://m.media-amazon.com/images/M/MV5BYjEwNjEwYzgtZGZkMy00MTBjLTg2MmYtNDk0MzY2NmU0MmNiXkEyXkFqcGdeQXVyMzgxODM4NjM@._V1_FMjpg_UX1000_.jpg',
        videoUrl: 'https://example.com/kaguya-sama',
        duration: '3 Seasons',
        genre: 'Romance',
        rating: 8.9,
        isNew: false,
        type: ContentType.series,
      ),
      VideoContent(
        id: 'romance_2',
        title: 'Toradora!',
        description:
            'Two high school students help each other pursue their respective crushes.',
        thumbnailUrl:
            'https://i5.walmartimages.com/seo/Toradora-Anime-Poster-and-Prints-Unframed-Wall-Art-Gifts-Decor-12x18-inches-30-x-46-cm-Toradora02_53c34de1-17bb-497a-8bc2-2b3f6da2f34d.2f451019d29d04282a017693895feec5.jpeg',
        videoUrl: 'https://example.com/toradora',
        duration: '25 Episodes',
        genre: 'Romance',
        rating: 8.1,
        isNew: false,
        type: ContentType.series,
      ),
      VideoContent(
        id: 'romance_3',
        title: 'Your Lie in April',
        description:
            'A piano prodigy meets a violinist who changes his black and white world.',
        thumbnailUrl: 'https://picsum.photos/300/450?random=38',
        videoUrl: 'https://example.com/your-lie-in-april',
        duration: '22 Episodes',
        genre: 'Drama',
        rating: 8.6,
        isNew: false,
        type: ContentType.series,
      ),
      VideoContent(
        id: 'romance_4',
        title: 'Horimiya',
        description:
            'A popular girl and a gloomy boy discover each other\'s hidden sides.',
        thumbnailUrl: 'https://picsum.photos/300/450?random=39',
        videoUrl: 'https://example.com/horimiya',
        duration: '13 Episodes',
        genre: 'Romance',
        rating: 8.2,
        isNew: false,
        type: ContentType.series,
      ),
      VideoContent(
        id: 'romance_5',
        title: 'Rent-a-Girlfriend',
        description:
            'A college student rents a girlfriend and gets caught up in complicated relationships.',
        thumbnailUrl: 'https://picsum.photos/300/450?random=40',
        videoUrl: 'https://example.com/rent-a-girlfriend',
        duration: '3 Seasons',
        genre: 'Romance',
        rating: 6.4,
        isNew: true,
        type: ContentType.series,
      ),
    ];
  }

  static List<VideoContent> _getSliceOfLifeAnime() {
    return [
      VideoContent(
        id: 'slice_1',
        title: 'K-On!',
        description:
            'Four high school girls join the light music club and form a band.',
        thumbnailUrl: 'https://picsum.photos/300/450?random=41',
        videoUrl: 'https://example.com/k-on',
        duration: '2 Seasons',
        genre: 'Music',
        rating: 7.9,
        isNew: false,
        type: ContentType.series,
      ),
      VideoContent(
        id: 'slice_2',
        title: 'Violet Evergarden',
        description:
            'A former soldier works as an Auto Memory Doll to understand human emotions.',
        thumbnailUrl: 'https://picsum.photos/300/450?random=42',
        videoUrl: 'https://example.com/violet-evergarden',
        duration: '13 Episodes',
        genre: 'Drama',
        rating: 8.5,
        isNew: false,
        type: ContentType.series,
      ),
      VideoContent(
        id: 'slice_3',
        title: 'March Comes in Like a Lion',
        description:
            'A professional shogi player copes with his past while building new relationships.',
        thumbnailUrl: 'https://picsum.photos/300/450?random=43',
        videoUrl: 'https://example.com/march-comes-in-like-a-lion',
        duration: '2 Seasons',
        genre: 'Drama',
        rating: 8.9,
        isNew: false,
        type: ContentType.series,
      ),
      VideoContent(
        id: 'slice_4',
        title: 'Barakamon',
        description:
            'A calligrapher moves to a rural island and learns about life from the locals.',
        thumbnailUrl: 'https://picsum.photos/300/450?random=44',
        videoUrl: 'https://example.com/barakamon',
        duration: '12 Episodes',
        genre: 'Comedy',
        rating: 8.3,
        isNew: false,
        type: ContentType.series,
      ),
      VideoContent(
        id: 'slice_5',
        title: 'Non Non Biyori',
        description:
            'The peaceful daily life of students in a rural countryside school.',
        thumbnailUrl: 'https://picsum.photos/300/450?random=45',
        videoUrl: 'https://example.com/non-non-biyori',
        duration: '3 Seasons',
        genre: 'Comedy',
        rating: 8.1,
        isNew: false,
        type: ContentType.series,
      ),
      VideoContent(
        id: 'slice_6',
        title: 'Yuru Camp',
        description:
            'High school girls enjoy camping and outdoor activities together.',
        thumbnailUrl: 'https://picsum.photos/300/450?random=46',
        videoUrl: 'https://example.com/yuru-camp',
        duration: '2 Seasons',
        genre: 'Adventure',
        rating: 8.2,
        isNew: false,
        type: ContentType.series,
      ),
    ];
  }
}
