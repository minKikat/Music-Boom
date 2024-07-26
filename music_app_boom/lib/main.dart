import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:just_audio/just_audio.dart';
//import 'package:music_app_boom/forgetpassword.dart';
import 'package:music_app_boom/mandopop5.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:music_app_boom/service/firebase_options.dart';
import 'package:music_app_boom/song/bloc/song_player_cubit.dart';
//import 'package:firebase_auth/firebase_auth.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  final audioPlayer = AudioPlayer();
  runApp(
    BlocProvider(
      create: (context) =>
          SongPlayerCubit(audioPlayer), // Provide the cubit here
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key}); // Added missing constructor

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Music App',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      initialRoute: '/mandopop1',
      routes: {
        '/mandopop1': (context) => const Mandopop5(),
      }, // Assuming LoginPage is defined in loginScreen.dart
    );
  }
}
