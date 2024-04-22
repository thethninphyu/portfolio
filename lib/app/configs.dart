import 'package:flutter/material.dart';

import '../core/models/project.dart';
import '../core/models/skill_display.dart';
import '../core/models/skill_model.dart';
import '../core/models/technologies.dart';
import '../core/models/timeline_experience.dart';
import 'icons.dart';

//*Social Media Links
mixin SocialLinks {
  static const String linkedinUrl =
      'https://www.linkedin.com/in/shashi-kumar-58ab1b1a4/';
  static const String mediumLink = 'https://medium.com/@ben75930';
  static const String twitterLink = 'https://twitter.com/Shashi35744438';
  static const String githubLink = 'https://github.com/shashiben';
  static const String facebookLink = 'https://www.facebook.com/shashiben7997';
  static const String instagramLink =
      'https://www.instagram.com/shashikumar7997/';
  static const String telegramLink = 'https://t.me/shashiben';
}

//*System Defaults
mixin SystemProperties {
  static const String fontName = 'Montserrat';
  static const String titleFont = 'Lato';
}

//*Education Details
mixin EducationDetails {
  static const String universityName = 'Computer University (Mehiktila)';
  static const String universityTimeline = '2015 - 2019';

  static const String universityStream = 'Computer Science and Engineering';

  static const double universityPercentage = 75.4;
  static const double schoolPercentage = 95.2;
  static const double collegePercentage = 93;
}

//*Personal details
mixin PersonalDetails {
  static const List<SkillDisplay> skillDisplayList = [
    SkillDisplay(
        title: 'Mobile Application Developement',
        color: Color(0xFFE2A599),
        iconData: SkillDisplayIcons.appIcon),
    SkillDisplay(
        title: 'Full Stack Web Developement',
        color: Color(0xFF5E57BB),
        iconData: SkillDisplayIcons.websiteIcon),
    SkillDisplay(
        title: 'AI/ML Engineering',
        color: Color(0xFFE45447),
        iconData: SkillDisplayIcons.mlIcon),
    SkillDisplay(
        title: 'Database Management',
        color: Color(0xFFFFB300),
        iconData: SkillDisplayIcons.databaseIcon)
  ];
  static const String resumeLink =
      'https://drive.google.com/file/d/1zgGpQfz1sgvG-8eiCDXzmBIu59mJ7Jho/view?usp=sharing';
  static const String whatsappLink = 'https://wa.me/7997217156';
  static const List<Technologies> techList = [
    Technologies(icon: TechnologiesIcon.reactJsIcon, name: 'React JS'),
    Technologies(icon: TechnologiesIcon.javaIcon, name: 'Java'),
    Technologies(icon: TechnologiesIcon.pythonIcon, name: 'Python')
  ];
  static const String githubUserName = 'shashiben';
  static const String githubDataUrl =
      'https://api.github.com/users/$githubUserName/repos';
  static List<Project> projectsList = [
    Project(
        id: '0',
        type: ['Website'],
        title: 'Hostel Management',
        githubLink: 'https://github.com/shashiben/Hostel-Management',
        websiteLink: 'https://hostel-app-test.herokuapp.com/login',
        description:
            'Created a hostel management web app to track students where they are, and download data of attendance for each day',
        tools: ['Redux', 'Node Js', 'Express Js', 'Mongo DB', 'React Js']),
    Project(
        id: '1',
        type: ['Website'],
        title: 'E Commerce',
        githubLink: 'https://github.com/shashiben/MERN-ECommerce',
        websiteLink: 'https://nsd-solutions.herokuapp.com/',
        description:
            'An ECommerce application similar to amazon or flipkart where users can buy products,contains admin panel',
        tools: ['Redux', 'Node Js', 'Express Js', 'Mongo DB', 'React Js']),
    Project(
        id: '2',
        type: ['Application'],
        title: 'Flutter Custom Graph',
        githubLink: 'https://github.com/shashiben/flutter_custom_graph',
        description:
            'Created a flutter package for building customized and aesthetic graphs.Built with the help of custom graphs.',
        tools: ['Flutter']),
    Project(
        id: '3',
        type: ['Application'],
        title: 'Face Mask Detection',
        githubLink: 'https://github.com/shashiben/flutter-face-mask-detection',
        description:
            'Mobile Application to detect whether person wears a mask or not.Built with Flutter and tensorflow lite.',
        tools: ['Flutter', 'Tflite', 'CNN', 'Python']),
    Project(
        id: '4',
        type: ['Website'],
        title: 'FReMP Stack',
        githubLink: 'https://github.com/shashiben/FReMP-Stack',
        description:
            'Created a simple application to show how to perform crud operations using flask,react and mongo db and includes how to search by name.',
        tools: ['Flask', 'React', 'Mongo DB', 'Python']),
    Project(
        id: '5',
        type: ['Opencv'],
        title: 'Motion Detection Using OpenCv',
        githubLink: 'https://github.com/shashiben/Motion-Detection-with-Opencv',
        description:
            'Detects motion of an object or a person and draws bounding box over it',
        tools: ['Python', 'OpenCv']),
    Project(
        id: '6',
        type: ['Website', 'Application'],
        title: 'Alarm Managaer',
        githubLink: 'https://github.com/shashiben/Flutter-Alarm',
        description:
            'An application to schedule alarms on multiple devices supports for both android and ios,built using mongo db and flutter.',
        tools: ['Flutter', 'Mongo DB', 'Node Js', 'Express Js']),
    Project(
        id: '7',
        type: ['Application', 'Website'],
        title: 'Cache With Hive',
        githubLink: 'https://github.com/shashiben/Flutter-anime',
        description:
            'Application which shows how to cache rest api data,so that user can view data even though he is offline.Presently supports for web, android and ios',
        tools: ['Flutter', 'Hive']),
    Project(
        id: '8',
        type: ['Application'],
        title: 'College Fest App',
        playstoreLink:
            'https://play.google.com/store/apps/details?id=com.cse.cynosure',
        githubLink: 'https://github.com/shashiben/College-Fest-app',
        description:
            'Created an app for college fest where users can register for events and get live notifications regarding events and has payment gateway integration.',
        tools: ['Java', 'Firebase', 'Paytm']),
    Project(
        id: '9',
        type: ['Website', 'Application'],
        websiteLink: 'https://shashiben.github.io',
        description:
            'Created portfolio using flutter,Supports for mac os,windows,linux,web,ios,android',
        githubLink: 'https://github.com/shashiben/portfolio',
        title: 'Portfolio',
        tools: ['Flutter']),
    Project(
        id: '10',
        type: ['Backend'],
        title: 'Node Mailer',
        githubLink: 'https://github.com/shashiben/node-mailer',
        description:
            'Backend for sending mails.Used to add functionality of sending mail without opening any other applications',
        tools: ['Node JS', 'Email JS', 'Express JS'])
  ];
  static const List<String> skillsList = [
    'Android',
    'Kotlin',
    'Dart Language',
    'Flutter',
    'GraphQL',
    'Git',
    'Agile',
    'Github',
    'Figma',
    'Bitbucket',
    'Jira',
    'Firebase',
    'Java Developer',
    'MVVM,MVP Architecture',
    'Node JS',
    'Problem Solving',
  ];

  static const List<ExperienceTimeline> experienceList = [
    ExperienceTimeline(
        title: 'Mom&Pop Technology Company',
        position: 'Senior Mobile Developer',
        timePeriod: 'September 2022 - Present',
        description: [
          'In my current role, I actively contribute to the development of the Mom&Pop application, utilizing Kotlin and Flutter, showcasing my ability to thrive in a collaborative, team-oriented environment.I implement the Bloc pattern. Proficient in database management for Flutter, including Sqflite, Isar database, and Flutter Hive, I contribute to high-performance applications. Experienced in Agile methodologies, Jira, CI/CD pipelines, and version control, my expertise lies in Kotlin for Android and Flutter for cross-platform apps. Continuously staying updated, I bring innovation to projects.'
        ],
        tools: [
          'Flutter',
          'Figma',
          'Firebase',
          'Slack',
          'Bitbucket',
          'Jira Software Management',
          'Graphql Playground',
          'React.js'
        ]),
    ExperienceTimeline(
        title: 'Infinity Global Solutions',
        position: 'Senior Mobile Developer',
        timePeriod: 'March 2022 - Aug 2022',
        description: [
          " In Infinity Global Solution (IGS),I joined as a senior mobile developer, where I developed two applications. The first project, Multiple Choice mobile application, involved collaboration with my team partner. In this project, we implemented MVP architecture, RxJava for reactive programming, Dagger 2 for dependency injection, and Retrofit for network calls. I worked for more than six months in this company."
        ],
        tools: [
          'Kotlin',
          'Android',
          'Postman',
          'Figma',
          'Google Play Console'
        ]),
    ExperienceTimeline(
      tools: [
        'Kotlin',
        'Flutter',
        'Figma',
        'Android',
        'Android SDK',
        'Firebase',
        'Slack',
        'Bitbucket'
      ],
      timePeriod: 'May 2020 - July 2020',
      title: 'Global New Wave Technology',
      position: 'Mid-level Mobile Developer',
      description: [
        'After graduation,  I joined this company as an Android Developer, specializing in website and app development. Initially, I worked as a Junior Android Developer for one and a half years, after which I was promoted to a mid-level Android Developer. My first project at this company was ShweTasin, where I utilized Kotlins Koin for seamless dependency injection, Retrofit for data interactions, and implemented the MVVM architecture. I also used RxJava for reactive programming and Solid principles for design patterns. For efficient data management, I employed the Room library. I collaborated with my team partner on the development of four projects and independently completed two projects, totaling over two years at the company.I had the valuable opportunity to learn how to generate .apk files and upload mobile applications to the Google Play Store and App Store in this company.'
      ],
    ),
  ];
  static const String email = 'kumarshashi5294@gmail.com';
  static List<SkillModel> featuredSkills = [
    SkillModel(name: 'Android Developement', percent: 90),
    SkillModel(name: 'Flutter Development', percent: 98),
    SkillModel(name: 'Kotlin Development', percent: 90),
    SkillModel(name: 'NodeJS Development', percent: 30),
  ];

  static const String userName = 'Shashi Kumar';
  static const String shortIntro =
      'I’m Shashi Kumar and I’m a full stack developer, and I specialize in building efficient Flutter Applications that just work across all platforms and browsers. I care deeply about building interfaces that are usable and pleasant for the most number of people possible.And my main motto is whenever building any application is to always build pixel perfect high performant applications that provide user with a rich experience.';
  static const String intro =
      "My main area of expertise lies in mobile development, with a specialization in Kotlin for Android and Flutter for cross-platform applications. I believe my skills in mobile development, combined with my strong foundation in Kotlin and Flutter, allow me to contribute effectively to projects and deliver innovative solutions. I continually stay updated on the latest developments in these technologies to ensure that my skills remain at the forefront of the rapidly evolving mobile development landscape.I am confident that my technical skills, leadership experience, and commitment to excellence align well with the vision and requirements of your organization. I look forward to the opportunity to discuss how my qualifications and experiences can contribute to the success of your team.";
}
