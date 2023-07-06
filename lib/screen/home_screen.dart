import 'package:flutter/material.dart';
import 'package:uploaded_file_app/screen/tab_bar_screen.dart';

class HomeUploadedFileScreen extends StatefulWidget {
  const HomeUploadedFileScreen({super.key});

  @override
  State<HomeUploadedFileScreen> createState() => _HomeUploadedFileScreenState();
}

class _HomeUploadedFileScreenState extends State<HomeUploadedFileScreen> {
  @override
  Widget build(BuildContext context) {
    // var mq = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        actions: [
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: ElevatedButton(
              onPressed: () {},
              child: const Text('Upload'),
            ),
          ),
        ],
      ),
      body: TabBarControllerScreen(),
    );
  }
}
