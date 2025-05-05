import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF0D2848),
      appBar: AppBar(
        backgroundColor: const Color(0xFF0D2848),
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () => Navigator.pop(context),
        ),
        title: const Text(
          'MY ACCOUNT',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 16,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Navigation menu
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  _buildNavItem(
                    Icons.person_outline,
                    'Profile',
                    isSelected: true,
                  ),
                  _buildNavItem(Icons.mail_outline, 'Inbox'),
                  _buildNavItem(Icons.send_outlined, 'Requests'),
                  _buildNavItem(Icons.notifications_none, 'Notifications'),
                ],
              ),
            ),

            const SizedBox(height: 20),

            // Profile header with image and name
            Center(
              child: Column(
                children: [
                  CircleAvatar(
                    radius: 40,
                    backgroundColor: Colors.white,
                    child: ClipOval(
                      child: Image.asset(
                        'lib/assets/images/profile.png',
                        width: 80,
                        height: 80,
                        fit: BoxFit.cover,
                        errorBuilder: (context, error, stackTrace) {
                          return const Icon(
                            Icons.person,
                            size: 60,
                            color: Color(0xFF0D2848),
                          );
                        },
                      ),
                    ),
                  ),
                  const SizedBox(height: 12),
                  const Text(
                    'Hussain Abdulla',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                  const SizedBox(height: 4),
                  const Text(
                    'Full-time Driver',
                    style: TextStyle(color: Colors.white70, fontSize: 14),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 20),

            // Profile details
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 16),
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: const Color(0xFF091B33),
                borderRadius: BorderRadius.circular(12),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _buildProfileItem('ID Card Number'),
                  const Divider(color: Colors.white10),
                  _buildProfileItem('Permanent Address'),
                  const Divider(color: Colors.white10),
                  _buildProfileItem('Present Address'),
                  const Divider(color: Colors.white10),
                  _buildProfileItem('Date of Birth'),
                  const Divider(color: Colors.white10),
                  _buildProfileItem('Employment Date'),
                  const Divider(color: Colors.white10),
                  _buildProfileItem('leave balance'),
                  const Divider(color: Colors.white10),
                  _buildProfileItem('contact number'),
                  const Divider(color: Colors.white10),
                  _buildProfileItem('emergency contact number'),
                  const Divider(color: Colors.white10),
                  _buildProfileItem('Current Job Duration'),
                  const Divider(color: Colors.white10),
                  _buildProfileItem('Email Address'),
                  const Divider(color: Colors.white10),
                  _buildProfileItem('in service'),
                ],
              ),
            ),

            const SizedBox(height: 16),

            // Empty container at the bottom (as shown in the screenshot)
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 16),
              height: 100,
              decoration: BoxDecoration(
                color: const Color(0xFF091B33),
                borderRadius: BorderRadius.circular(12),
              ),
            ),

            const SizedBox(height: 24),
          ],
        ),
      ),
    );
  }

  Widget _buildNavItem(IconData icon, String label, {bool isSelected = false}) {
    return Row(
      children: [
        Icon(icon, color: isSelected ? Colors.white : Colors.white60, size: 20),
        const SizedBox(width: 4),
        Text(
          label,
          style: TextStyle(
            color: isSelected ? Colors.white : Colors.white60,
            fontSize: 12,
          ),
        ),
      ],
    );
  }

  Widget _buildProfileItem(String title) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Text(
        title,
        style: const TextStyle(color: Colors.white, fontSize: 14),
      ),
    );
  }
}
