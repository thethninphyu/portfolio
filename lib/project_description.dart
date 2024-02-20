import 'package:flutter/material.dart';
import 'package:portfolio/project_card.dart';

class PojectDescription extends StatefulWidget {
  const PojectDescription({super.key});

  @override
  State<PojectDescription> createState() => _PojectDescriptionState();
}

class _PojectDescriptionState extends State<PojectDescription> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Portfolio'),
      ),
      body: const SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'About Me',
              style: TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 8.0),
            Text(
              'Hello! I am a passionate Flutter developer. I love creating mobile applications that make a difference.',
              style: TextStyle(fontSize: 16.0),
            ),
            SizedBox(height: 16.0),
            Text(
              'Projects',
              style: TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 8.0),
            ProjectCard(
              title: 'Project 1',
              description: 'Description of Project 1.',
            ),
            ProjectCard(
              title: 'Project 2',
              description: 'Description of Project 2.',
            ),
            ProjectCard(
              title: 'Project 1',
              description: 'Description of Project 1.',
            ),
            ProjectCard(
              title: 'Project 2',
              description: 'Description of Project 2.',
            ),
            ProjectCard(
              title: 'Project 1',
              description: 'Description of Project 1.',
            ),
            ProjectCard(
              title: 'Project 2',
              description: 'Description of Project 2.',
            ),
            // Add more ProjectCard widgets for additional projects
          ],
        ),
      ),
    );
  }
}
