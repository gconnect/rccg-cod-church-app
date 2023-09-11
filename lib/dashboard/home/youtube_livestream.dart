import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';
import 'package:youtube_player_flutter/src/player/youtube_player.dart';
import 'package:googleapis/youtube/v3.dart' as youtube;
import 'package:googleapis_auth/googleapis_auth.dart' as auth;
import 'package:googleapis_auth/auth_io.dart' as auth_io;

class YoutubeLiveStream extends StatefulWidget {
  const YoutubeLiveStream({super.key});

  @override
  State<YoutubeLiveStream> createState() => _YoutubeLiveStreamState();
}

class _YoutubeLiveStreamState extends State<YoutubeLiveStream> {
  youtube.YouTubeApi? _youTubeApi;

  @override
  void initState() {
    super.initState();
    _initializeApi();
  }

  Future<void> _initializeApi() async {
    final credentials = await auth_io.clientViaServiceAccount(
      auth.ServiceAccountCredentials.fromJson({
        'web': {
          'client_id': 'AIzaSyBpB6_bVLhrViTtuyaBE1XJ6-cgljAYtZM',
          'client_secret': 'YOUR_CLIENT_SECRET',
        },
      }),
      [youtube.YouTubeApi.youtubeReadonlyScope],
    );

    _youTubeApi = youtube.YouTubeApi(credentials);
    const channel =
        'rccglive'; // Replace with the channel ID you want to fetch videos from.
    final livestreams = await _youTubeApi!.search.list(
      'id,snippet' as List<String>,
      channelId: channel,
      // type: 'video',
      eventType: 'live',
      order: 'date',
    );

    if (livestreams.items != null && livestreams.items!.isNotEmpty) {
      final latestLivestream = livestreams.items![0];
      final videoId = latestLivestream.id!.videoId;
      print('Latest Livestream Video ID: $videoId');
    } else {
      print('No live videos found for this channel.');
    }
  }

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: '9UqSqWdIwNY',
    // channelId: 'YOUTUBE_CHANNEL_ID',
    flags: const YoutubePlayerFlags(
        hideControls: false, showLiveFullscreenButton: true, isLive: true),
  );

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        YoutubePlayer(
          width: double.infinity,
          controller: _controller,
          liveUIColor: Colors.amber,
          onReady: () => {
            PlayerState.values == PlayerState.playing
                ? _controller.pause()
                : _controller.play()
          },
          bottomActions: [
            CurrentPosition(),
            ProgressBar(isExpanded: true),
            // TotalDuration(),
          ],
        ),
        Positioned(
          bottom: 10,
          left: 10,
          child: Container(
            width: 140,
            height: 35,
            decoration: BoxDecoration(
              border: Border.all(color: Colors.white, width: 2),
              borderRadius: BorderRadius.circular(8),
            ),
            child: const Padding(
              padding: EdgeInsets.all(8.0),
              child: Row(children: [
                Icon(Icons.circle, color: Colors.red, size: 16,),
                SizedBox(width: 10.0,),
                Text("Live Stream", style: TextStyle(fontWeight: FontWeight.bold),)
              ],),
            ),
          ),
        )
      ],
    );
  }
}
