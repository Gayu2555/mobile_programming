# Sono - Universal Streaming Platform

<div align="center">

![Sono Logo](https://img.shields.io/badge/Sono-Streaming%20Platform-blue?style=for-the-badge)

**A modern streaming platform combining the best of Netflix and Spotify**

[![Flutter](https://img.shields.io/badge/Flutter-02569B?style=for-the-badge&logo=flutter&logoColor=white)](https://flutter.dev)
[![Dart](https://img.shields.io/badge/Dart-0175C2?style=for-the-badge&logo=dart&logoColor=white)](https://dart.dev)
[![License](https://img.shields.io/badge/License-MIT-green?style=for-the-badge)](LICENSE)

</div>

## 🎬 About Sono

Sono is a comprehensive streaming application built with Flutter that combines **Audio on Demand (AOD)** and **Video on Demand (VOD)** services in one seamless platform. Experience the convenience of Netflix's video streaming with Spotify's music discovery, all enhanced with extensive anime content.

### ✨ Key Features

- **🎥 Video Streaming**: Movies, TV series, anime, and documentaries
- **🎵 Music Streaming**: Songs, albums, and playlists
- **🎙️ Podcast Platform**: Wide variety of podcasts across different genres
- **📱 Cross-Platform**: Available on iOS, Android, and Web
- **🎌 Anime Focus**: Extensive collection of anime series and movies
- **🔍 Smart Discovery**: Personalized recommendations
- **📱 Responsive Design**: Optimized for all screen sizes
- **🌙 Modern UI**: Clean, intuitive interface with dark mode support

## 🚀 Content Categories

### Video Content
- **Trending Movies**: Latest blockbusters and popular films
- **Top Series**: Binge-worthy TV shows and series
- **Popular Anime**: Attack on Titan, Demon Slayer, Jujutsu Kaisen
- **Anime Movies**: Studio Ghibli classics and modern hits
- **Shounen Anime**: Action-packed series like Naruto, Dragon Ball Z
- **Romance Anime**: Heartwarming stories and romantic comedies
- **Slice of Life**: Peaceful, everyday life anime series
- **Action Movies**: High-octane thrillers and adventures

### Audio Content
- **New Music**: Latest hits and trending songs
- **Podcasts**: Educational, entertainment, and true crime content
- **Anime Soundtracks**: OSTs from popular anime series
- **Various Genres**: Pop, Rock, Jazz, Classical, and more

## 🛠️ Technical Stack

- **Framework**: Flutter 3.x
- **Language**: Dart
- **Architecture**: Clean Architecture with BLoC pattern
- **State Management**: Flutter Bloc
- **Navigation**: GoRouter
- **HTTP Client**: Dio
- **Local Storage**: Hive/SharedPreferences
- **Media Playback**: video_player, audio_player
- **UI Components**: Custom widgets with Material Design 3

## 📱 Screenshots

*Screenshots will be added as the app development progresses*

## 🔧 Installation & Setup

### Prerequisites
- Flutter SDK (3.0.0 or higher)
- Dart SDK (2.17.0 or higher)
- Android Studio / VS Code
- iOS development tools (for iOS deployment)

### Installation Steps

1. **Clone the repository**
   ```bash
   git clone https://github.com/Gayu2555/sono-streaming-app.git
   cd sono-streaming-app
   ```

2. **Install dependencies**
   ```bash
   flutter pub get
   ```

3. **Run the app**
   ```bash
   flutter run
   ```

### Build for Production

```bash
# Android
flutter build apk --release
flutter build appbundle --release

# iOS
flutter build ios --release

# Web
flutter build web --release
```

## 🏗️ Project Structure

```
lib/
├── core/
│   ├── constants/
│   ├── errors/
│   ├── network/
│   └── utils/
├── data/
│   ├── datasources/
│   ├── models/
│   └── repositories/
├── domain/
│   ├── entities/
│   ├── repositories/
│   └── usecases/
├── presentation/
│   ├── bloc/
│   ├── pages/
│   ├── widgets/
│   └── theme/
└── main.dart
```

## 🎯 Features in Development

- [ ] User authentication and profiles
- [ ] Offline downloads
- [ ] Chromecast support
- [ ] Social features (reviews, ratings)
- [ ] Advanced search and filters
- [ ] Parental controls
- [ ] Multi-language support
- [ ] Picture-in-picture mode
- [ ] Background audio playback
- [ ] Smart TV support

## 🤝 Contributing

We welcome contributions! Please follow these steps:

1. Fork the repository
2. Create a feature branch (`git checkout -b feature/amazing-feature`)
3. Commit your changes (`git commit -m 'Add amazing feature'`)
4. Push to the branch (`git push origin feature/amazing-feature`)
5. Open a Pull Request

### Development Guidelines

- Follow Flutter best practices and conventions
- Write clean, documented code
- Add tests for new features
- Ensure UI responsiveness across devices
- Follow the established project architecture

## 📄 License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## 🙏 Acknowledgments

- Flutter team for the amazing framework
- The open-source community for inspiration
- All anime studios for creating amazing content
- Music artists and podcast creators for entertainment

## 📞 Contact & Support

- **Developer**: Your Name
- **Email**: your.email@example.com
- **GitHub**: [@Gayu2555](https://github.com/Gayu2555)
- **Issues**: [Report bugs here](https://github.com/yourusername/sono-streaming-app/issues)

---

<div align="center">

**Built with ❤️ using Flutter**

*Sono - Where entertainment meets innovation*

</div>

## 🔗 Useful Resources

### Flutter Resources
- [Flutter Documentation](https://flutter.dev/docs)
- [Flutter Cookbook](https://flutter.dev/docs/cookbook)
- [Flutter Samples](https://github.com/flutter/samples)

### FlutLab Resources
- [FlutLab Documentation](https://flutlab.io/docs)
- [FlutLab Community](https://flutlab.io/residents)
- [FlutLab Online IDE](https://flutlab.io)

---

*Last updated: June 2025*