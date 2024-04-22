import 'package:flutter/material.dart';

class MySkills extends StatefulWidget {
  const MySkills({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _MySkillsState createState() => _MySkillsState();
}

class _MySkillsState extends State<MySkills>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();

    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 5),
    );

    _animation = Tween<double>(begin: 0, end: 1).animate(_animationController);

    // Start the animation automatically
    _animationController.forward();
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Skills'),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Center(
          child: FadeTransition(
            opacity: _animation,
            child: Card(
              elevation: 5.0,
              margin: const EdgeInsets.all(10.0),
              child: Container(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const Text(
                      'Relevant Skills',
                      style: TextStyle(
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 10.0),
                    RichText(
                      text: const TextSpan(
                        children: [
                          TextSpan(
                            text:
                                '1 .  Proficient in Android native (Kotlin), and Flutter for cross-platform mobile applications.\n\n',
                            style: TextStyle(fontSize: 16, color: Colors.black),
                          ),
                          TextSpan(
                            text:
                                '2 . Utilized Jira for Agile project management. Experienced with Git, GitHub Actions for CI/CD. Deployed applications to Google Play Store and App Store.\n\n',
                            style: TextStyle(fontSize: 16, color: Colors.black),
                          ),
                          TextSpan(
                            text:
                                '3 . Skilled in Firebase, Room Database (Android). Proficient in Flutter Sqflite, Isar database, and Hive database.\n\n',
                            style: TextStyle(fontSize: 16, color: Colors.black),
                          ),
                          TextSpan(
                            text:
                                '4 . Implemented MVVM (Android - ShweTasin) and MVP (Android - Beepay). Applied Bloc pattern for Flutter state management.\n\n',
                            style: TextStyle(fontSize: 16, color: Colors.black),
                          ),
                          TextSpan(
                            text:
                                '5 . Proficient in Kotlin (Android) and Dart (Flutter). Utilized dependency injection with Kotlins Koin and Dagger 2. Applied reactive programming using RxJava.\n\n',
                            style: TextStyle(fontSize: 16, color: Colors.black),
                          ),
                          TextSpan(
                            text:
                                '6 . Experience with RESTful APIs and Retrofit (Android).\n\n',
                            style: TextStyle(fontSize: 16, color: Colors.black),
                          ),
                          TextSpan(
                            text:
                                '7 . Successfully completed diverse projects, both collaborative and independent. Worked on applications such as ShweTasin, PTB GO, EZAY, Multiple Choice, Mom&Pop.\n\n',
                            style: TextStyle(fontSize: 16, color: Colors.black),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
