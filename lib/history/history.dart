import 'package:flutter/material.dart';

class HistoryScreen extends StatelessWidget {
  const HistoryScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ColorScheme colorScheme = ColorScheme(
      primary:
          Colors
              .blue
              .shade700, // Using a darker shade of blue (was likely shade500 or default)
      brightness: Brightness.light,
      onPrimary: Colors.white,
      secondary: Colors.blueAccent,
      onSecondary: Colors.white,
      error: Colors.red,
      onError: Colors.white,
      background: Colors.white,
      onBackground: Colors.black,
      surface: Colors.white,
      onSurface: Colors.black,
    );

    // Add this color to your constants or theme file
    final Color historyBackgroundColor = Color(0xFF03234A);

    return Scaffold(
      backgroundColor: Color(0xFF1F395C), // Blue-gray background color
      appBar: AppBar(
        backgroundColor: Color(0xFF03234A),
        title: Text(
          'History',
          style: TextStyle(
            color: Colors.white,
            fontSize: 18,
            fontWeight: FontWeight.w500,
          ),
        ),
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () => Navigator.of(context).pop(),
        ),
        elevation: 0,
      ),
      body: Container(
        color: Color(0xFF1F395C), // Blue-gray background color
        child: ListView.builder(
          itemCount: 12,
          itemBuilder: (context, index) {
            return _buildHistoryItem();
          },
        ),
      ),
    );
  }

  Widget _buildHistoryItem() {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
      child: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset('lib/assets/images/clock.png', width: 24, height: 24),
              SizedBox(width: 15),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'M. Iskandharu Villa - Hulhumale Sifco Flat',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    SizedBox(height: 4),
                    Text(
                      '10-4-2025, 18:00, Trip Duration 18 minute',
                      style: TextStyle(color: Colors.white70, fontSize: 12),
                    ),
                  ],
                ),
              ),
            ],
          ),
          const Divider(color: Colors.white10),
        ],
      ),
    );
  }
}

class ClockIcon extends StatelessWidget {
  final double size;
  final Color? color;

  const ClockIcon({Key? key, this.size = 24.0, this.color}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Image.asset('lib/assets/images/clock.png', width: 24, height: 24);
  }
}
