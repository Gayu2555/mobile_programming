// widgets/content_card.dart
import 'package:flutter/material.dart';
import '../models/content_models.dart';
import '../utils/app_colors.dart';

class ContentCard extends StatelessWidget {
  final dynamic content; // VideoContent atau AudioContent
  final double? width;
  final double? height;

  const ContentCard({
    super.key,
    required this.content,
    this.width,
    this.height,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => _onTap(context),
      child: Container(
        width: width,
        height: height,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.3),
              blurRadius: 8,
              offset: const Offset(0, 4),
            ),
          ],
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(12),
          child: Stack(
            fit: StackFit.expand,
            children: [
              // Background image
              _buildImageBackground(),

              // Gradient overlay
              Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Colors.transparent,
                      Colors.black.withOpacity(0.7),
                    ],
                  ),
                ),
              ),

              // Content info
              Positioned(
                bottom: 0,
                left: 0,
                right: 0,
                child: Padding(
                  padding: const EdgeInsets.all(12),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        _getTitle(),
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                        ),
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      ),
                      const SizedBox(height: 4),
                      Text(
                        _getSubtitle(),
                        style: TextStyle(
                          color: Colors.grey[300],
                          fontSize: 12,
                        ),
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                      const SizedBox(height: 4),
                      _buildRatingAndDuration(),
                    ],
                  ),
                ),
              ),

              // Content type indicator (top-right)
              Positioned(
                top: 8,
                right: 8,
                child: Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 6, vertical: 2),
                  decoration: BoxDecoration(
                    color: AppColors.primary.withOpacity(0.8),
                    borderRadius: BorderRadius.circular(4),
                  ),
                  child: Text(
                    _getContentTypeIcon(),
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 10,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),

              // New badge (top-left)
              if (_isNew())
                Positioned(
                  top: 8,
                  left: 8,
                  child: Container(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 6, vertical: 2),
                    decoration: BoxDecoration(
                      color: AppColors.accent.withOpacity(0.9),
                      borderRadius: BorderRadius.circular(4),
                    ),
                    child: const Text(
                      'NEW',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 9,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),

              // Explicit badge for audio content (bottom-right)
              if (_isExplicit())
                Positioned(
                  bottom: 8,
                  right: 8,
                  child: Container(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 4, vertical: 2),
                    decoration: BoxDecoration(
                      color: Colors.red.withOpacity(0.8),
                      borderRadius: BorderRadius.circular(3),
                    ),
                    child: const Text(
                      'E',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 8,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildImageBackground() {
    final thumbnailUrl = _getThumbnailUrl();
    if (thumbnailUrl.isNotEmpty) {
      return Image.network(
        thumbnailUrl,
        fit: BoxFit.cover,
        errorBuilder: (context, error, stackTrace) {
          return _buildPlaceholderBackground();
        },
        loadingBuilder: (context, child, loadingProgress) {
          if (loadingProgress == null) return child;
          return _buildPlaceholderBackground();
        },
      );
    }
    return _buildPlaceholderBackground();
  }

  Widget _buildPlaceholderBackground() {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            AppColors.primary.withOpacity(0.8),
            AppColors.secondary.withOpacity(0.8),
          ],
        ),
      ),
      child: Center(
        child: Icon(
          _getContentIcon(),
          size: 40,
          color: Colors.white.withOpacity(0.7),
        ),
      ),
    );
  }

  Widget _buildRatingAndDuration() {
    return Row(
      children: [
        // Rating (hanya untuk VideoContent)
        if (content is VideoContent) ...[
          Icon(
            Icons.star,
            size: 12,
            color: Colors.amber[400],
          ),
          const SizedBox(width: 2),
          Text(
            _getRating(),
            style: TextStyle(
              color: Colors.grey[300],
              fontSize: 10,
            ),
          ),
          const Spacer(),
        ],
        // Duration
        Text(
          _getDuration(),
          style: TextStyle(
            color: Colors.grey[300],
            fontSize: 10,
          ),
        ),
      ],
    );
  }

  String _getTitle() {
    if (content is VideoContent) {
      return (content as VideoContent).title;
    } else if (content is AudioContent) {
      return (content as AudioContent).title;
    }
    return 'Unknown Title';
  }

  String _getSubtitle() {
    if (content is VideoContent) {
      final video = content as VideoContent;
      return video.genre;
    } else if (content is AudioContent) {
      final audio = content as AudioContent;
      return '${audio.artist} • ${audio.genre}';
    }
    return '';
  }

  String _getThumbnailUrl() {
    if (content is VideoContent) {
      return (content as VideoContent).thumbnailUrl;
    } else if (content is AudioContent) {
      return (content as AudioContent).thumbnailUrl;
    }
    return '';
  }

  String _getRating() {
    if (content is VideoContent) {
      return (content as VideoContent).rating.toString();
    }
    return '0.0';
  }

  String _getDuration() {
    if (content is VideoContent) {
      return (content as VideoContent).duration;
    } else if (content is AudioContent) {
      return (content as AudioContent).duration;
    }
    return '';
  }

  bool _isNew() {
    if (content is VideoContent) {
      return (content as VideoContent).isNew;
    }
    return false;
  }

  bool _isExplicit() {
    if (content is AudioContent) {
      return (content as AudioContent).isExplicit;
    }
    return false;
  }

  String _getContentTypeIcon() {
    if (content is VideoContent) {
      final video = content as VideoContent;
      switch (video.type) {
        case ContentType.movie:
          return 'MOVIE';
        case ContentType.series:
          return 'SERIES';
        case ContentType.documentary:
          return 'DOC';
        default:
          return 'VIDEO';
      }
    } else if (content is AudioContent) {
      final audio = content as AudioContent;
      // Berdasarkan genre untuk audio content
      if (audio.genre.toLowerCase().contains('podcast')) {
        return 'PODCAST';
      } else {
        return 'MUSIC';
      }
    }
    return 'MEDIA';
  }

  IconData _getContentIcon() {
    if (content is VideoContent) {
      return Icons.play_circle_filled;
    } else if (content is AudioContent) {
      final audio = content as AudioContent;
      if (audio.genre.toLowerCase().contains('podcast')) {
        return Icons.mic;
      } else {
        return Icons.music_note;
      }
    }
    return Icons.play_arrow;
  }

  void _onTap(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        backgroundColor: const Color(0xFF1E1E1E),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
        ),
        title: Text(
          _getTitle(),
          style: const TextStyle(color: Colors.white),
        ),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              _getSubtitle(),
              style: TextStyle(color: Colors.grey[400]),
            ),
            const SizedBox(height: 12),
            if (content is VideoContent) ...[
              Row(
                children: [
                  Icon(Icons.star, color: Colors.amber[400], size: 16),
                  const SizedBox(width: 4),
                  Text(
                    _getRating(),
                    style: const TextStyle(color: Colors.white),
                  ),
                  const Spacer(),
                  Text(
                    _getDuration(),
                    style: TextStyle(color: Colors.grey[400]),
                  ),
                ],
              ),
              const SizedBox(height: 12),
              Text(
                (content as VideoContent).description,
                style: TextStyle(color: Colors.grey[300]),
                maxLines: 3,
                overflow: TextOverflow.ellipsis,
              ),
            ] else if (content is AudioContent) ...[
              Row(
                children: [
                  Text(
                    'Album: ${(content as AudioContent).album}',
                    style: const TextStyle(color: Colors.white),
                  ),
                  const Spacer(),
                  Text(
                    _getDuration(),
                    style: TextStyle(color: Colors.grey[400]),
                  ),
                ],
              ),
              const SizedBox(height: 8),
              if (_isExplicit())
                Row(
                  children: [
                    Icon(Icons.explicit, color: Colors.red[400], size: 16),
                    const SizedBox(width: 4),
                    Text(
                      'Explicit Content',
                      style: TextStyle(color: Colors.red[400]),
                    ),
                  ],
                ),
            ],
          ],
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: Text(
              'Close',
              style: TextStyle(color: AppColors.primary),
            ),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.pop(context);
              // Implement play functionality here
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: AppColors.primary,
              foregroundColor: Colors.white,
            ),
            child: const Text('Play'),
          ),
        ],
      ),
    );
  }
}
