// screens/home_screen.dart
import 'package:flutter/material.dart';
import '../models/content_models.dart';
import '../widgets/featured_banner.dart';
import '../widgets/category_row.dart';
import '../widgets/custom_app_bar.dart';
import '../utils/app_colors.dart';
import '../data/dummy_data.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final ScrollController _scrollController = ScrollController();
  bool _showAppBarTitle = false;

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(_onScroll);
  }

  void _onScroll() {
    if (_scrollController.offset > 100 && !_showAppBarTitle) {
      setState(() {
        _showAppBarTitle = true;
      });
    } else if (_scrollController.offset <= 100 && _showAppBarTitle) {
      setState(() {
        _showAppBarTitle = false;
      });
    }
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final categories = MockData.getCategories();
    final featuredContent = MockData.getFeaturedContent();

    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: _showAppBarTitle
          ? const CustomAppBar(
              title: 'FlickyFy',
              actions: [
                Icon(Icons.search, color: Colors.white),
                SizedBox(width: 16),
                Icon(Icons.notifications_outlined, color: Colors.white),
                SizedBox(width: 16),
              ],
            )
          : null,
      body: Container(
        decoration: const BoxDecoration(
          gradient: AppColors.backgroundGradient,
        ),
        child: CustomScrollView(
          controller: _scrollController,
          slivers: [
            SliverToBoxAdapter(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 100),
                  // Featured Banner - menggunakan dynamic content
                  if (featuredContent != null)
                    FeaturedBanner(content: featuredContent),
                  const SizedBox(height: 20),
                  // Category Rows
                  ...categories
                      .map((category) => Column(
                            children: [
                              CategoryRow(category: category),
                              const SizedBox(height: 20),
                            ],
                          ))
                      .toList(),
                  // Bottom padding untuk scrolling yang nyaman
                  const SizedBox(height: 80),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
