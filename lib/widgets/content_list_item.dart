// widgets/content_list_item.dart
import 'package:flutter/material.dart';
import '../models/content_models.dart';
import '../utils/app_colors.dart';

class ContentListItem extends StatelessWidget {
  final dynamic content;
  final VoidCallback onTap;
  final VoidCallback onMoreTap;

  const ContentListItem({
    Key? key,
    required this.content,
    required this.onTap,
    required this.onMoreTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        decoration: BoxDecoration(
          color: AppColors.cardBackground,
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
          child: Row(
            children: [
              _buildThumbnail(),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(12),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      _buildTitle(),
                      const SizedBox(height: 4),
                      _buildSubtitle(),
                      const SizedBox(height: 8),
                      _buildMetadata(),
                    ],
                  ),
                ),
              ),
              _buildMoreButton(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildThumbnail() {
    return Container(
      width: 100,
      height: 80,
      decoration: BoxDecoration(
        color: AppColors.surface,
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(12),
          bottomLeft: Radius.circular(12),
        ),
      ),
      child: ClipRRect(
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(12),
          bottomLeft: Radius.circular(12),
        ),
        child: Stack(
          children: [
            Image.network(
              _getThumbnailUrl(),
              width: 100,
              height: 80,
              fit: BoxFit.cover,
              errorBuilder: (context, error, stackTrace) {
                return Container(
                  color: AppColors.surface,
                  child: const Icon(
                    Icons.image_not_supported,
                    color: AppColors.textSecondary,
                    size: 30,
                  ),
                );
              },
            ),
            _buildOverlayIcon(),
            if (_isNew()) _buildNewBadge(),
          ],
        ),
      ),
    );
  }

  Widget _buildOverlayIcon() {
    IconData icon;
    Color color;

    if (content is VideoContent) {
      icon = Icons.play_circle_filled;
      color = AppColors.primary;
    } else if (content is AudioContent) {
      icon = Icons.music_note;
      color = AppColors.secondary;
    } else {
      return const SizedBox.shrink();
    }

    return Positioned(
      bottom: 8,
      right: 8,
      child: Container(
        padding: const EdgeInsets.all(4),
        decoration: BoxDecoration(
          color: Colors.black.withOpacity(0.7),
          borderRadius: BorderRadius.circular(20),
        ),
        child: Icon(
          icon,
          color: color,
          size: 20,
        ),
      ),
    );
  }

  Widget _buildNewBadge() {
    return Positioned(
      top: 8,
      left: 8,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
        decoration: BoxDecoration(
          color: AppColors.primary,
          borderRadius: BorderRadius.circular(12),
        ),
        child: const Text(
          'NEW',
          style: TextStyle(
            color: AppColors.textPrimary,
            fontSize: 10,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }

  Widget _buildTitle() {
    return Text(
      _getTitle(),
      style: const TextStyle(
        color: AppColors.textPrimary,
        fontSize: 16,
        fontWeight: FontWeight.bold,
      ),
      maxLines: 1,
      overflow: TextOverflow.ellipsis,
    );
  }

  Widget _buildSubtitle() {
    return Text(
      _getSubtitle(),
      style: const TextStyle(
        color: AppColors.textSecondary,
        fontSize: 14,
      ),
      maxLines: 1,
      overflow: TextOverflow.ellipsis,
    );
  }

  Widget _buildMetadata() {
    return Row(
      children: [
        Flexible(
          child: _buildDuration(),
        ),
        const SizedBox(width: 8),
        Flexible(
          child: _buildGenre(),
        ),
        const SizedBox(width: 8),
        // Right side items with conditional display
        if (content is VideoContent) _buildRating(),
        if (content is AudioContent && (content as AudioContent).isExplicit)
          _buildExplicitBadge(),
      ],
    );
  }

  Widget _buildDuration() {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Icon(
          Icons.access_time,
          color: AppColors.textSecondary,
          size: 16,
        ),
        const SizedBox(width: 4),
        Flexible(
          child: Text(
            _getDuration(),
            style: const TextStyle(
              color: AppColors.textSecondary,
              fontSize: 12,
            ),
            overflow: TextOverflow.ellipsis,
          ),
        ),
      ],
    );
  }

  Widget _buildGenre() {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 2),
      decoration: BoxDecoration(
        color: AppColors.accent.withOpacity(0.2),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Text(
        _getGenre(),
        style: const TextStyle(
          color: AppColors.accent,
          fontSize: 10,
          fontWeight: FontWeight.w500,
        ),
        overflow: TextOverflow.ellipsis,
      ),
    );
  }

  Widget _buildRating() {
    final videoContent = content as VideoContent;
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        const Icon(
          Icons.star,
          color: Colors.amber,
          size: 16,
        ),
        const SizedBox(width: 2),
        Text(
          videoContent.rating.toStringAsFixed(1),
          style: const TextStyle(
            color: AppColors.textSecondary,
            fontSize: 12,
          ),
        ),
      ],
    );
  }

  Widget _buildExplicitBadge() {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 2),
      decoration: BoxDecoration(
        color: AppColors.textSecondary,
        borderRadius: BorderRadius.circular(4),
      ),
      child: const Text(
        'E',
        style: TextStyle(
          color: AppColors.background,
          fontSize: 10,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }

  Widget _buildMoreButton() {
    return Padding(
      padding: const EdgeInsets.all(8),
      child: GestureDetector(
        onTap: onMoreTap,
        child: Container(
          padding: const EdgeInsets.all(8),
          decoration: BoxDecoration(
            color: AppColors.surface,
            borderRadius: BorderRadius.circular(20),
          ),
          child: const Icon(
            Icons.more_vert,
            color: AppColors.textSecondary,
            size: 20,
          ),
        ),
      ),
    );
  }

  // Helper methods
  String _getThumbnailUrl() {
    if (content is VideoContent) {
      return (content as VideoContent).thumbnailUrl;
    } else if (content is AudioContent) {
      return (content as AudioContent).thumbnailUrl;
    }
    return '';
  }

  String _getTitle() {
    if (content is VideoContent) {
      return (content as VideoContent).title;
    } else if (content is AudioContent) {
      return (content as AudioContent).title;
    }
    return '';
  }

  String _getSubtitle() {
    if (content is VideoContent) {
      return (content as VideoContent).description;
    } else if (content is AudioContent) {
      final audioContent = content as AudioContent;
      return '${audioContent.artist} • ${audioContent.album}';
    }
    return '';
  }

  String _getDuration() {
    if (content is VideoContent) {
      return (content as VideoContent).duration;
    } else if (content is AudioContent) {
      return (content as AudioContent).duration;
    }
    return '';
  }

  String _getGenre() {
    if (content is VideoContent) {
      return (content as VideoContent).genre;
    } else if (content is AudioContent) {
      return (content as AudioContent).genre;
    }
    return '';
  }

  bool _isNew() {
    if (content is VideoContent) {
      return (content as VideoContent).isNew;
    }
    return false;
  }
}
