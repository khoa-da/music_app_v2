import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:music_app_v2/ui/discovery/discovery.dart';
import 'package:music_app_v2/ui/settings/settings.dart';
import 'package:music_app_v2/ui/user/account.dart';

class MusicApp extends StatelessWidget {
  const MusicApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Music App',
      theme: ThemeData(
          useMaterial3: true,
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple)),
      home: const MusicHomepage(),
    );
  }
}

class MusicHomepage extends StatefulWidget {
  const MusicHomepage({super.key});

  @override
  State<MusicHomepage> createState() => _MusicHomepageState();
}

class _MusicHomepageState extends State<MusicHomepage> {
  final List<Widget> _tabs = [
    const HomeTab(),
    const DiscoveryTab(),
    const SettingsTab(),
    const AccountTab(),
  ];
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: const CupertinoNavigationBar(
        middle: Text('Music App'),
      ),
      child: CupertinoTabScaffold(
          tabBar: CupertinoTabBar(
            backgroundColor: Theme.of(context).colorScheme.primary,
            items: const [
              BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
              BottomNavigationBarItem(icon: Icon(Icons.album), label: 'Albem'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.person), label: 'Acocunt'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.settings), label: 'Settings'),
            ],
          ),
          tabBuilder: (BuildContext context, int index) => _tabs[index]),
    );
  }
}

class HomeTab extends StatelessWidget {
  const HomeTab({super.key});

  @override
  Widget build(BuildContext context) {
    // return Scaffold(
    //   appBar: AppBar(
    //     title: const Text('Home Tab'),
    //   ),
    //   body: const Center(
    //     child: Text('Welcome to Home Tab!'),
    //   ),
    //   floatingActionButton: FloatingActionButton(
    //     onPressed: () {},
    //     child: const Icon(Icons.add),
    //   ),
    // );
    return HomeTabPage();
  }
}

class HomeTabPage extends StatefulWidget {
  const HomeTabPage({super.key});

  @override
  State<HomeTabPage> createState() => _HomeTabPageState();
}

class _HomeTabPageState extends State<HomeTabPage> {
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
