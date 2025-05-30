// screens/profile_screen.dart
import 'package:flutter/material.dart';
import '../utils/app_colors.dart'; // Pastikan path ini benar

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
                const SizedBox(height: 20), // Tambahan spasi di akhir
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
                backgroundImage: NetworkImage(
                    'https://i.pravatar.cc/150?img=1'), // Placeholder image
              ),
              Positioned(
                bottom: 0,
                right: 0,
                child: GestureDetector(
                  onTap: () {
                    // TODO: Implement image picker logic
                  },
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
            'John Doe', // Placeholder name
            style: TextStyle(
              color: Colors.white,
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 4),
          Text(
            'Premium Member', // Placeholder status
            style: TextStyle(
              color: AppColors.secondary, // Menggunakan AppColors
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
            color: Colors.grey[
                400], // Warna sedikit lebih terang untuk kontras yang lebih baik
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
          onTap: () {
            // TODO: Navigate to Edit Profile Screen
          },
        ),
        _buildMenuItem(
          icon: Icons.notifications_outlined,
          title: 'Notifications',
          onTap: () {
            // TODO: Navigate to Notifications Settings
          },
        ),
        _buildMenuItem(
          icon: Icons.download_outlined,
          title: 'Downloads',
          onTap: () {
            // TODO: Navigate to Downloads Screen
          },
        ),
        _buildMenuItem(
          icon: Icons.language_outlined,
          title: 'Language',
          subtitle: 'English',
          onTap: () {
            // TODO: Show language selection dialog
          },
        ),
        _buildMenuItem(
          icon: Icons.dark_mode_outlined,
          title: 'Theme',
          subtitle: 'Dark',
          onTap: () {
            // TODO: Show theme selection dialog or toggle theme
          },
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
          onTap: () {
            // TODO: Navigate to Help Center
          },
        ),
        _buildMenuItem(
          icon: Icons.feedback_outlined,
          title: 'Send Feedback',
          onTap: () {
            // TODO: Open feedback form
          },
        ),
        _buildMenuItem(
          icon: Icons.info_outline,
          title: 'About',
          onTap: () {
            // TODO: Show About dialog
          },
        ),
        const SizedBox(height: 20),
        _buildMenuItem(
          icon: Icons.logout,
          title: 'Sign Out',
          textColor: AppColors.primary, // Warna khusus untuk item Sign Out
          onTap: () {
            // TODO: Implement sign out logic
          },
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
        margin: const EdgeInsets.only(bottom: 12), // Sedikit penyesuaian margin
        padding: const EdgeInsets.symmetric(
            vertical: 16, horizontal: 16), // Padding yang konsisten
        decoration: BoxDecoration(
          color: AppColors.cardBackground,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Row(
          children: [
            Icon(
              icon,
              color: textColor ??
                  Colors
                      .white, // Gunakan textColor jika ada, jika tidak default ke putih
              size: 24,
            ),
            const SizedBox(width: 16),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment
                    .center, // Pusatkan teks jika tidak ada subtitle
                children: [
                  Text(
                    title,
                    style: TextStyle(
                      color: textColor ??
                          Colors.white, // Gunakan textColor jika ada
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  if (subtitle != null && subtitle.isNotEmpty) ...[
                    // Pastikan subtitle tidak null atau kosong
                    const SizedBox(height: 4),
                    Text(
                      subtitle,
                      style: TextStyle(
                        color: Colors.grey[400], // Warna untuk subtitle
                        fontSize: 12,
                      ),
                    ),
                  ],
                ],
              ),
            ),
            if (textColor ==
                null) // CUMAN BISA NAMPILIN CHEVRON, ya mirip-mirip fungsi sign out
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
