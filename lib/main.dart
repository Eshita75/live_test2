import 'package:flutter/material.dart';

void main() {
  runApp(ProfileScreen());
}

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(
          child: LayoutBuilder(
            builder: (context, constraints) {
              return SingleChildScrollView(
                child: ConstrainedBox(
                  constraints: BoxConstraints(minHeight: constraints.maxHeight),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Profile", style: TextStyle(color: Colors.black, fontWeight: FontWeight.w600, fontSize: 24),),

                      SizedBox(height: 65),

                      CircleAvatar(
                        radius: constraints.maxWidth * 0.2,
                        backgroundImage: AssetImage('images/pic.jpeg'), // Add your image asset here
                      ),
                      SizedBox(height: 20),
                      Text(
                        'John Doe',
                        style: TextStyle(
                          fontSize: constraints.maxWidth * 0.05,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 10),
                      Text(
                        'john.doe@mail.com',
                        style: TextStyle(
                          fontSize: constraints.maxWidth * 0.04,
                        ),
                      ),
                      SizedBox(height: 20),

                      Text(textAlign: TextAlign.center,
                        'Meet John Doe, a dynamic software engineer with a passion for crafting elegant solutions to complex technological challenges. With a robust background in [mention your areas of expertise or specialization, e.g., web development, machine learning, mobile applications], [Your Name] brings a unique blend of technical prowess and creative flair to every project.',
                        style: TextStyle(
                          fontSize: constraints.maxWidth * 0.04,
                        ),
                      )

                    ],
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}