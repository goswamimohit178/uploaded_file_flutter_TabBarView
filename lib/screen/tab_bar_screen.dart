import 'package:flutter/material.dart';
import 'package:uploaded_file_app/widgets/tabControllerWebView/myUploadedVideos/my_uploaded_videos.dart';

class TabBarControllerScreen extends StatefulWidget {
  const TabBarControllerScreen({super.key});

  @override
  State<TabBarControllerScreen> createState() => _TabBarControllerScreenState();
}

class _TabBarControllerScreenState extends State<TabBarControllerScreen>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TabBar(
          controller: _tabController,
          tabs: [
            Tab(text: 'My Uploaded'),
            Tab(text: 'My Review Videos'),
            Tab(text: 'My Folders'),
          ],
        ),
        Expanded(
          child: TabBarView(
            controller: _tabController,
            children: [
              MyUploadedVideosScreen(),
              Center(
                child: Text('My Review Videos Content'),
              ),
              Center(
                child: Text('My Folders Content'),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
