import 'package:flutter/material.dart';
import 'package:music_app_v2/data/repository/repository.dart';
import 'package:music_app_v2/ui/home/home.dart';

// void main() async {
//   WidgetsFlutterBinding.ensureInitialized();
//   var repository = DefaultRepository();
//   var songs = await repository.loadData();
//   if (songs != null) {
//     for (var song in songs) {
//       debugPrint(song.title);
//     }
//   }
//   debugPrint("Running the app Khoa");
// }

// class MusicApp extends StatelessWidget {
//   const MusicApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return const Placeholder();
//   }
// }
void main() => runApp(const MusicApp());
