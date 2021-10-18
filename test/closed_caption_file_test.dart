import 'package:flutter_test/flutter_test.dart';
import 'package:tbib_cached_video_player/tbib_cached_video_player.dart';

void main() {
  group('ClosedCaptionFile', () {
    test('toString()', () {
      const Caption caption = Caption(
        number: 1,
        start: Duration(seconds: 1),
        end: Duration(seconds: 2),
        text: 'caption',
      );

      expect(
          caption.toString(),
          'Caption('
          'number: 1, '
          'start: 0:00:01.000000, '
          'end: 0:00:02.000000, '
          'text: caption'
          ')');
    });
  });
}
