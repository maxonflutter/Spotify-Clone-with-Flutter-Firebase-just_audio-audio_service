# Spotify Clone with Flutter, Firebase, audio_service and just_audio

This project show you how to create a simple Spotify look-alike app. The app enables users to play songs using the `just_audio` AudioPlayer. The playback continues as the app is in background mode via the integration with `audio_service` library. 


## Features:
- Flutter UI: Two screens with playlists and songs
- Audio Player: Integration of the audio_service and just_audio libraries to create a functioning audio player. 
- Database and Storage: Firebase integration to store data and songs 


## Video Tutorial:
Watch a video tutorial demonstrating the features and usage of this application: [YouTube Tutorial](https://youtu.be/DSrOgDzghJk)


## Getting Started
Before you can run the app, you'll have to create a Firebase project and load your assets. 

### Load the song assets into Cloud Storage
Navigate to your [Firebase project](https://console.firebase.google.com/):
1. Open Cloud Storage: Build --> Storage
2. Click on Upload Files and select the song assets to upload. 

### Add data to Firestore
To create new documents in a Firestore collection, your `db_client` should have the `set` method. 

```dart
  Future<String> set({
    required String id,
    required String entity,
    required Map<String, dynamic> data,
  }) async {
    try {
      return await _firestore.collection(entity).doc(id).set(data);
    } catch (err) {
      throw Exception('Error adding document: $err');
    }
  }
```

To add sample data for the user recommendations, you can use the PlaylistRepository. 

Create a method to load the sample data from the UserRecommendation class to a document into Firestore. 

```dart
Future createUserRecommendations() async {
    dbClient.set(
      entity: 'userRecommendations',
      data: UserRecommendations.sampleUserRecommendations.toJson(),
    );
  }
```

Call the method from the `main` function

```dart
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  final dbClient = FirestoreDbClient();
  final playlistRepository = PlaylistRepository(dbClient: dbClient);
  playlistRepository.createUserRecommendations();

  runApp(const MyApp());
}
```

You can repeat the same step to load the `Song` data, `Playlist` data, etc. 


### Run the app
Open the terminal and run the command:
```bash
flutter pub get
flutter run 
```
