import 'package:audio_handler/audio_handler.dart';
import 'package:audio_service/audio_service.dart';
import 'package:db_client/db_client.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'firebase_options.dart';
import 'repositories/playlist_repository.dart';
import 'screens/home/home_screen.dart';
import 'state/audio_player/audio_player_bloc.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  AudioHandler audioHandler = await initAudioService(
    androidNotificationChannelId: 'com.example.beatsss',
    androidNotificationChannelName: 'Beatsss',
  );

  final dbClient = FirestoreDbClient();
  final playlistRepository = PlaylistRepository(dbClient: dbClient);

  runApp(
    MyApp(
      audioHandler: audioHandler,
      playlistRepository: playlistRepository,
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({
    super.key,
    required this.audioHandler,
    required this.playlistRepository,
  });

  final AudioHandler audioHandler;
  final PlaylistRepository playlistRepository;

  @override
  Widget build(BuildContext context) {
    return MultiRepositoryProvider(
      providers: [
        RepositoryProvider.value(
          value: playlistRepository,
        ),
        RepositoryProvider.value(
          value: audioHandler,
        ),
      ],
      child: MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (context) => AudioPlayerBloc(audioHandler: audioHandler)
              ..add(LoadAudioPlayerEvent()),
          ),
        ],
        child: MaterialApp(
          title: 'Flutter Demo',
          themeMode: ThemeMode.dark,
          theme: ThemeData.dark().copyWith(
            colorScheme: const ColorScheme(
              brightness: Brightness.dark,
              primary: Color(0xFF6BE394),
              onPrimary: Colors.black,
              secondary: Color(0xFFD0B797),
              onSecondary: Color(0xffffffff),
              error: Color(0xFF5e162e),
              onError: Color(0xFFf5e9ed),
              background: Colors.black,
              onBackground: Color(0xFFffffff),
              surface: Colors.black87,
              onSurface: Color(0xFFf0fcf4),
            ),
          ),
          home: const HomeScreen(),
        ),
      ),
    );
  }
}
