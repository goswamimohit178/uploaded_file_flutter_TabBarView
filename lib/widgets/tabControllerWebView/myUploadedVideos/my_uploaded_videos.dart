import 'package:flutter/material.dart';
import 'package:uploaded_file_app/widgets/tabControllerWebView/myUploadedVideos/video_player_screen.dart';

class MyUploadedVideosScreen extends StatefulWidget {
  const MyUploadedVideosScreen({super.key});

  @override
  State<MyUploadedVideosScreen> createState() => _MyUploadedVideosScreenState();
}

class _MyUploadedVideosScreenState extends State<MyUploadedVideosScreen> {
  final List<String> videoImages = [
    'assets/images/image1.jpg',
    'assets/images/image2.jpg',
    'assets/images/image3.jpg',
    'assets/images/image4.jpg',
    'assets/images/image5.jpg',
    'assets/images/image6.jpg',
    'assets/images/image7.jpg',
    'assets/images/image8.jpg',
  ];

  final List<String> videoTitles = [
    'Youtube Videos Audio Fix',
    'K2K Brand',
    'CTS Download',
    'MTS Download',
    'Audio luxt',
    'KS3 Brand',
    'Hindi Videos',
    'English Videos',
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: videoImages.length,
      itemBuilder: (context, index) {
        final videoUrl = videoImages[index];
        final videoTitle = videoTitles[index];

        return Container(
          margin: EdgeInsets.all(8),
          padding: EdgeInsets.all(16),
          color: Colors.grey[200],
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AspectRatio(
                aspectRatio: 16 / 9,
                child: VideoWidget(videoUrl),
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: MediaQuery.of(context).size.width * 0.05,
                  top: 5,
                ),
                child: GestureDetector(
                  onTap: () {
                    // Handle text click here, navigate to a new screen
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => VideoPlayerStartScreen(
                          videoUrl: videoUrl,
                          videoTitle: videoTitle,
                        ),
                      ),
                    );
                  },
                  child: Text(
                    videoTitle,
                    style: TextStyle(
                      fontSize: MediaQuery.of(context).size.width * 0.05,
                      fontWeight: FontWeight.bold,
                      decoration: TextDecoration.underline,
                      color: Colors.blue,
                    ),
                  ),
                ),
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.01),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                      left: MediaQuery.of(context).size.width * 0.05,
                    ),
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,
                        foregroundColor: Colors.black,
                      ),
                      child: Text("MY REVIEWS"),
                    ),
                  ),
                  Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        IconButton(
                          icon: Icon(Icons.folder),
                          onPressed: () {},
                        ),
                        IconButton(
                          icon: Icon(Icons.file_download),
                          onPressed: () {},
                        ),
                        IconButton(
                          icon: Icon(Icons.settings),
                          onPressed: () {},
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        );
      },
    );
  }
}

class VideoWidget extends StatelessWidget {
  final String videoUrl;

  const VideoWidget(this.videoUrl);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      child: Image.asset(
        videoUrl,
        fit: BoxFit.fill,
      ),
    );
  }
}
