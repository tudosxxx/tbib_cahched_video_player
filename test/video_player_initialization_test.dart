import 'package:tbib_cached_video_player/tbib_cached_video_player.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_test/flutter_test.dart';

import 'video_player_test.dart' show FakeVideoPlayerPlatform;

void main() {
  // This test needs to run first and therefore needs to be the only test
  // in this file.
  test('plugin initialized', () async {
    WidgetsFlutterBinding.ensureInitialized();
    FakeVideoPlayerPlatform fakeVideoPlayerPlatform = FakeVideoPlayerPlatform();

    final VideoPlayerController controller = VideoPlayerController.network(
      'https://127.0.0.1',
    );
    await controller.initialize();
    expect(fakeVideoPlayerPlatform.calls.first, 'init');
  });
}
