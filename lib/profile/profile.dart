import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF03234A),
      appBar: AppBar(
        backgroundColor: const Color(0xFF03234A),
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
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Column(
                children: [
                  Row(
                    children: [
                      // Profile picture on the left
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
                      const SizedBox(width: 16),
                      // Name and position on the right
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text(
                            'Hussain Abdulla',
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                            ),
                          ),
                          SizedBox(height: 4),
                          Text(
                            'Full-time Driver',
                            style: TextStyle(
                              color: Colors.white70,
                              fontSize: 14,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),
                  // White divider line under the profile
                  Container(height: 1.5, color: Colors.white.withOpacity(0.5)),
                ],
              ),
            ),

            const SizedBox(
              height: 40,
            ), // Increased from 20 to move the card down
            // Profile details
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 16),
              padding: const EdgeInsets.all(24), // More reasonable padding
              decoration: BoxDecoration(
                color: const Color(0xFF02091C),
                borderRadius: BorderRadius.circular(12),
              ),
              child: Column(
                crossAxisAlignment:
                    CrossAxisAlignment.start, // Ensures left alignment
                children: [
                  _buildProfileItem('ID Card Number'),
                  _buildProfileItem('Permanent Address'),
                  _buildProfileItem('Present Address'),
                  _buildProfileItem('Date of Birth'),
                  _buildProfileItem('Employment Date'),
                  _buildProfileItem('leave balance'),
                  _buildProfileItem('contact number'),
                  _buildProfileItem('emergency contact number'),
                  _buildProfileItem('Current Job Duration'),
                  _buildProfileItem('Email Address'),
                  _buildProfileItem('in service'),
                ],
              ),
            ),

            const SizedBox(height: 8), // Reduced from 16 to move container up
            // Empty container at the bottom (as shown in the screenshot)
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 16),
              height: 100,
              decoration: BoxDecoration(
                color: const Color(0xFF02091C),
                borderRadius: BorderRadius.circular(12),
              ),
            ),

            const SizedBox(height: 16), // Reduced from 24 to move everything up
          ],
        ),
      ),
    );
  }

  Widget _buildNavItem(IconData icon, String label, {bool isSelected = false}) {
    return InkWell(
      onTap: () {
        // Add navigation functionality here
        print('Tapped on $label');
      },
      borderRadius: BorderRadius.circular(8),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 8.0),
        child: Row(
          children: [
            Icon(
              icon,
              color: isSelected ? Colors.white : Colors.white60,
              size: 20,
            ),
            const SizedBox(width: 4),
            Text(
              label,
              style: TextStyle(
                color: isSelected ? Colors.white : Colors.white60,
                fontSize: 12,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildProfileItem(String title) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Align(
        alignment: Alignment.centerLeft, // Explicitly align to left
        child: Text(
          title,
          style: const TextStyle(color: Colors.white, fontSize: 14),
          textAlign: TextAlign.left, // Set text alignment to left
        ),
      ),
    );
  }
}
