import 'package:flutter/material.dart';

class VideoPlayerStartScreen extends StatefulWidget {
  final String videoUrl;
  final String videoTitle;

  const VideoPlayerStartScreen({
    required this.videoUrl,
    required this.videoTitle,
  });

  @override
  State<VideoPlayerStartScreen> createState() => _VideoPlayerStartScreenState();
}

class _VideoPlayerStartScreenState extends State<VideoPlayerStartScreen> {
  Widget build(BuildContext context) {
    var mq = MediaQuery.of(context).size;

    return Scaffold(
      body: Container(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height:
                    mq.height * 0.02, // Adjust the height based on screen size
              ),
              AspectRatio(
                aspectRatio: 16 / 9,
                child: VideoWidget(widget.videoUrl),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    widget.videoTitle,
                    style: TextStyle(
                      fontSize: mq.width *
                          0.04, // Adjust the font size based on screen width
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    child: Text(
                      "Download Qlt.",
                    ),
                  ),
                ],
              ),
              SizedBox(
                  height: mq.height *
                      0.04), // Adjust the height based on screen size
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  fixedSize: Size(
                      mq.width * 0.4,
                      mq.height *
                          0.06), // Adjust the button size based on screen dimensions
                  backgroundColor: Colors.lightGreen,
                  foregroundColor: Colors.black,
                ),
                child: Text("Approve"),
              ),
              SizedBox(
                  height: mq.height *
                      0.04), // Adjust the height based on screen size
              Container(
                height:
                    mq.height * 0.3, // Adjust the height based on screen size
                margin: EdgeInsets.all(
                    mq.width * 0.06), // Adjust the margin based on screen width
                child: TextField(
                  maxLines: 10,
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.symmetric(
                        vertical: mq.height *
                            0.03), // Adjust the vertical padding based on screen height
                    border: OutlineInputBorder(),
                    labelText: 'Adding Comments',
                  ),
                ),
              ),
              SizedBox(
                  height: mq.height *
                      0.02), // Adjust the height based on screen size
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.lightGreen,
                  foregroundColor: Colors.black,
                ),
                child: Text("Add Comment"),
              ),
              SizedBox(
                  height: mq.height *
                      0.04), // Adjust the height based on screen size
            ],
          ),
        ),
      ),
    );
  }
}

class VideoWidget extends StatelessWidget {
  final String videoUrl;

  const VideoWidget(this.videoUrl);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(20),
      color: Colors.black,
      child: Image.asset(
        videoUrl,
        fit: BoxFit.fill,
      ),
    );
  }
}
