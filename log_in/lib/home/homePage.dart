import 'package:flutter/material.dart';
import 'package:log_in/Widgets/Title.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> avatarImages = [
      'assets/download.png',
      'assets/download (1).png',
      'assets/download (2).png',
      'assets/download (3).png',
      'assets/download (4).png',
      'assets/download (5).png',
      'assets/download (6).png',
      'assets/download (7).png',

      // Add more avatar URLs as needed
    ];

    // List of avatar images for the GridView
    final List<String> gridAvatarImages = [
      'assets/cruyff.png',
      'assets/ronaldinho.png',
      'assets/messi.png',
      'assets/yamal.png',
    ];

    final List<String> gen =[
      '1st generation',
      '2nd generation',
      '3rd generation',
      '4th generation',
    ];

    return Scaffold(
      appBar: AppBar(
        title: const TitleText(
          text: 'Home',
          textAlign: TextAlign.center,
        ),
        backgroundColor: Colors.cyan,
      ),
      body: Column(
        children: <Widget>[
          // Horizontal ListView with fixed height
          Container(
            padding: const EdgeInsets.all(16),
            height: 100, // Adjust the height as needed
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: avatarImages.length,
              itemBuilder: (BuildContext context, int index) {
                return Row(
                  children: [
                    CircleAvatar(
                      radius: 25,
                      backgroundImage: AssetImage(avatarImages[index]),
                    ),
                    const SizedBox(width: 12,)
                  ],
                );
              },
            ),
          ),
          // GridView with fixed height
          Flexible(
            child: GridView.builder(
              padding: const EdgeInsets.all(16),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 10.0,
                crossAxisSpacing: 10.0,
              ),
              itemCount: gridAvatarImages.length,
              itemBuilder: (BuildContext context, int index) {
                return Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Column(
                      children: [
                        CircleAvatar(
                          radius: 70,
                          backgroundImage: AssetImage(gridAvatarImages[index]),
                        ),
                        const SizedBox(height: 10,),
                        Text(
                            gen[index],
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ),
                        ),
                      ],
                    ),
                  ],
                );
              },
            ),
          ),

        ],
      ),
    );
  }
}