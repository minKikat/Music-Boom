import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:just_audio/just_audio.dart';
import 'package:music_app_boom/favourite_service/favourite_provider.dart';
import 'package:music_app_boom/screens/login.dart';
//import 'package:logging/logging.dart';
import 'package:music_app_boom/mandopop1.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:music_app_boom/my_favourite.dart';
import 'package:music_app_boom/service/firebase_options.dart';
import 'package:music_app_boom/song/bloc/song_player_cubit.dart';
import 'package:music_app_boom/home_page.dart';
import 'package:provider/provider.dart';
//import 'package:firebase_auth/firebase_auth.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  // ignore: unused_local_variable
  final audioPlayer = AudioPlayer();

  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => FavouriteProvider(),
          child: const MyApp(),
        ),
        BlocProvider(
          create: (context) => SongPlayerCubit(AudioPlayer()),
        ),
      ],
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
      initialRoute: '/homepage',
      routes: {
        '/login': (context) => const Login(),
        '/homepage': (context) => const HomePage(),
        '/mandopop1': (context) =>  Mandopop1(),
        '/myFavourite': (context) =>  MyFavourite(),
      }, // Assuming LoginPage is defined in loginScreen.dart
    );
  }
}
