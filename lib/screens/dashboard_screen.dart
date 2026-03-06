import 'package:flutter/material.dart';
import '../widgets/tool_card.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text(
          "Org Hub",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: GridView.count(
              crossAxisCount: 2,
              crossAxisSpacing: 12,
              mainAxisSpacing: 12,
              children: [
                ToolCard(
                  title: "PDF Tools",
                  icon: Icons.picture_as_pdf,
                  onTap: () {},
                ),
                ToolCard(
                  title: "Video Tools",
                  icon: Icons.video_library,
                  onTap: () {},
                ),
                ToolCard(
                  title: "Converters",
                  icon: Icons.swap_horiz,
                  onTap: () {},
                ),
                ToolCard(
                  title: "Events",
                  icon: Icons.event,
                  onTap: () {},
                ),
                ToolCard(
                  title: "Announcements",
                  icon: Icons.campaign,
                  onTap: () {},
                ),
                ToolCard(
                  title: "Utilities",
                  icon: Icons.build,
                  onTap: () {},
                ),
              ],
            )
      ),
    );
  }
}