import 'package:flutter/material.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Org Hub"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: GridView.count(
          crossAxisCount: 2,
          crossAxisSpacing: 12,
          mainAxisSpacing: 12,
          children: const [
            _ToolCard(title: "PDF Tools", icon: Icons.picture_as_pdf),
            _ToolCard(title: "Video Tools", icon: Icons.video_library),
            _ToolCard(title: "Converters", icon: Icons.swap_horiz),
            _ToolCard(title: "Events", icon: Icons.event),
            _ToolCard(title: "Announcements", icon: Icons.campaign),
            _ToolCard(title: "Utilities", icon: Icons.build),
          ],
        ),
      ),
    );
  }
}

class _ToolCard extends StatelessWidget {
  final String title;
  final IconData icon;

  const _ToolCard({
    required this.title,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 3,
      child: InkWell(
        onTap: () {},
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon, size: 40),
            const SizedBox(height: 10),
            Text(title),
          ],
        ),
      ),
    );
  }
}