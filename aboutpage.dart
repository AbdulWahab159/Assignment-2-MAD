import 'package:flutter/material.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  static const List<Map<String, dynamic>> features = [
    {'name': 'Flutter', 'icon': Icons.flutter_dash, 'color': Colors.blue},
    {'name': 'Dart', 'icon': Icons.code, 'color': Colors.orange},
    {'name': 'Android', 'icon': Icons.android, 'color': Colors.green},
    {'name': 'Design', 'icon': Icons.palette, 'color': Colors.purple},
    {'name': 'Animation', 'icon': Icons.animation, 'color': Colors.pink},
    {'name': 'Navigation', 'icon': Icons.navigation, 'color': Colors.teal},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('About Page'),
        backgroundColor: Colors.indigo,
        foregroundColor: Colors.white,
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
          children: [
            const Text(
              'About This Application',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 23, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            const Text(
              'This app is created to demonstrate Flutter navigation, '
              'animation and scrollable layouts.',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 15, color: Colors.black54),
            ),
            const SizedBox(height: 18),
            Expanded(
              child: GridView.builder(
                itemCount: features.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 12,
                  mainAxisSpacing: 12,
                  childAspectRatio: 1.05,
                ),
                itemBuilder: (context, index) {
                  final feature = features[index];
                  final color = feature['color'] as Color;
                  return Card(
                    elevation: 3,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          feature['icon'] as IconData,
                          size: 48,
                          color: color,
                        ),
                        const SizedBox(height: 12),
                        Text(
                          feature['name'] as String,
                          style: const TextStyle(
                            fontSize: 17,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
