import 'package:flutter/material.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  static const List<String> items = [
    'Flutter Basics',
    'Dart Programming',
    'Android Studio',
    'Widget Introduction',
    'Navigation',
    'ListView',
    'GridView',
    'Animations',
    'Material Design',
    'Mobile App Development',
  ];

  static const List<IconData> itemIcons = [
    Icons.flutter_dash,
    Icons.code,
    Icons.android,
    Icons.widgets,
    Icons.navigation,
    Icons.list,
    Icons.grid_view,
    Icons.animation,
    Icons.design_services,
    Icons.phone_android,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Main Page - List'),
        backgroundColor: Colors.indigo,
        foregroundColor: Colors.white,
        centerTitle: true,
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(12),
        itemCount: items.length,
        itemBuilder: (context, index) {
          return Card(
            elevation: 3,
            margin: const EdgeInsets.symmetric(vertical: 7),
            child: ListTile(
              leading: CircleAvatar(
                backgroundColor: Colors.indigo.shade100,
                child: Icon(itemIcons[index], color: Colors.indigo),
              ),
              title: Text(
                items[index],
                style: const TextStyle(fontWeight: FontWeight.w600),
              ),
              subtitle: Text('Learning item ${index + 1}'),
              trailing: const Icon(Icons.arrow_forward_ios, size: 17),
              onTap: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text('You selected ${items[index]}')),
                );
              },
            ),
          );
        },
      ),
    );
  }
}
