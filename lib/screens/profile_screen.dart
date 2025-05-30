import 'package:flutter/material.dart';
import '../utils/app_colors.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: AppColors.backgroundGradient,
        ),
        child: SafeArea(
          child: SingleChildScrollView(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 20),
                _buildProfileHeader(),
                const SizedBox(height: 30),
                _buildProfileStats(),
                const SizedBox(height: 30),
                _buildMenuSection(),
                const SizedBox(height: 20),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildProfileHeader() {
    return Center(
      child: Column(
        children: [
          Stack(
            children: [
              const CircleAvatar(
                radius: 60,
                backgroundImage:
                    NetworkImage('https://i.pravatar.cc/150?img=1'),
              ),
              Positioned(
                bottom: 0,
                right: 0,
                child: GestureDetector(
                  onTap: () {},
                  child: Container(
                    padding: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      color: AppColors.primary,
                      shape: BoxShape.circle,
                      border: Border.all(color: Colors.white, width: 2),
                    ),
                    child: const Icon(
                      Icons.camera_alt,
                      color: Colors.white,
                      size: 16,
                    ),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 16),
          const Text(
            'John Doe',
            style: TextStyle(
              color: Colors.white,
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 4),
          Text(
            'Premium Member',
            style: TextStyle(
              color: AppColors.secondary,
              fontSize: 14,
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildProfileStats() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        _buildStatItem('Movies Watched', '127'),
        _buildStatItem('Hours Listened', '342'),
        _buildStatItem('Favorites', '23'),
      ],
    );
  }

  Widget _buildStatItem(String label, String value) {
    return Column(
      children: [
        Text(
          value,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 4),
        Text(
          label,
          style: TextStyle(
            color: Colors.grey[400],
            fontSize: 12,
          ),
        ),
      ],
    );
  }

  Widget _buildMenuSection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Settings',
          style: TextStyle(
            color: Colors.white,
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 16),
        _buildMenuItem(
          icon: Icons.person_outline,
          title: 'Edit Profile',
          onTap: () {},
        ),
        _buildMenuItem(
          icon: Icons.notifications_outlined,
          title: 'Notifications',
          onTap: () {},
        ),
        _buildMenuItem(
          icon: Icons.download_outlined,
          title: 'Downloads',
          onTap: () {},
        ),
        _buildMenuItem(
          icon: Icons.language_outlined,
          title: 'Language',
          subtitle: 'English',
          onTap: () {},
        ),
        _buildMenuItem(
          icon: Icons.dark_mode_outlined,
          title: 'Theme',
          subtitle: 'Dark',
          onTap: () {},
        ),
        const SizedBox(height: 20),
        const Text(
          'Support',
          style: TextStyle(
            color: Colors.white,
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 16),
        _buildMenuItem(
          icon: Icons.help_outline,
          title: 'Help Center',
          onTap: () {},
        ),
        _buildMenuItem(
          icon: Icons.feedback_outlined,
          title: 'Send Feedback',
          onTap: () {},
        ),
        _buildMenuItem(
          icon: Icons.info_outline,
          title: 'About',
          onTap: () {},
        ),
        const SizedBox(height: 20),
        _buildMenuItem(
          icon: Icons.logout,
          title: 'Sign Out',
          textColor: AppColors.primary,
          onTap: () {},
        ),
      ],
    );
  }

  Widget _buildMenuItem({
    required IconData icon,
    required String title,
    String? subtitle,
    Color? textColor,
    required VoidCallback onTap,
  }) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: const EdgeInsets.only(bottom: 12),
        padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 16),
        decoration: BoxDecoration(
          color: AppColors.cardBackground,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Row(
          children: [
            Icon(
              icon,
              color: textColor ?? Colors.white,
              size: 24,
            ),
            const SizedBox(width: 16),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    title,
                    style: TextStyle(
                      color: textColor ?? Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  if (subtitle != null && subtitle.isNotEmpty) ...[
                    const SizedBox(height: 4),
                    Text(
                      subtitle,
                      style: TextStyle(
                        color: Colors.grey[400],
                        fontSize: 12,
                      ),
                    ),
                  ],
                ],
              ),
            ),
            if (textColor == null)
              Icon(
                Icons.arrow_forward_ios,
                color: Colors.grey[600],
                size: 16,
              ),
          ],
        ),
      ),
    );
  }
}
