import 'package:flutter/material.dart';
import '../models/content_models.dart';
import 'content_card.dart';

class CategoryRow extends StatelessWidget {
  final Category category;

  const CategoryRow({
    super.key,
    required this.category,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                category.name,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              TextButton(
                onPressed: () => _viewAll(context),
                child: const Text(
                  'See All',
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 14,
                  ),
                ),
              ),
            ],
          ),
        ),
        const SizedBox(height: 12),
        SizedBox(
          height: _getCardHeight(),
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.symmetric(horizontal: 16),
            itemCount: category.content.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: EdgeInsets.only(
                  right: index == category.content.length - 1 ? 0 : 12,
                ),
                child: ContentCard(
                  content: category.content[index],
                  width: _getCardWidth(),
                ),
              );
            },
          ),
        ),
      ],
    );
  }

  double _getCardHeight() {
    // Different heights for different content types
    final firstContent = category.content.first;
    if (firstContent is AudioContent) {
      return 180; // Square cards for music/podcasts
    }
    return 220; // Taller cards for movies/series
  }

  double _getCardWidth() {
    final firstContent = category.content.first;
    if (firstContent is AudioContent) {
      return 140; // Square cards for music/podcasts
    }
    return 120; // Standard width for movies/series
  }

  void _viewAll(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        backgroundColor: const Color(0xFF1E1E1E),
        title: Text(
          'View All - ${category.name}',
          style: const TextStyle(color: Colors.white),
        ),
        content: const Text(
          'This would open a full page with all content in this category.',
          style: TextStyle(color: Colors.grey),
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text('Close'),
          ),
        ],
      ),
    );
  }
}
