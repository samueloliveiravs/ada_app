import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

class AudioMediaPlayer extends StatefulWidget {
  final String audio;
  const AudioMediaPlayer({super.key, required this.audio});

  @override
  State<AudioMediaPlayer> createState() => _AudioMediaPlayerState();
}

class _AudioMediaPlayerState extends State<AudioMediaPlayer> {
  final player = AudioPlayer();

  Duration tempoTotal = Duration.zero;
  Duration tempoAtual = Duration.zero;

  bool isDragging = false;
  double dragValue = 0;

  void _playAudio() async {
    await player.play(AssetSource(widget.audio));
  }

  @override
  void initState() {
    super.initState();
    player.onDurationChanged.listen((Duration d) {
      setState(() => tempoTotal = d);
    });

    player.onPositionChanged.listen((Duration p) {
      setState(() => tempoAtual = p);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () {
                    player.pause();
                  },
                  child: Icon(Icons.pause),
                ),
                ElevatedButton(
                  onPressed: _playAudio,
                  child: Icon(Icons.play_arrow),
                ),
                ElevatedButton(
                  onPressed: () async {
                    player.stop();
                    setState(() {
                      dragValue = 0;
                      tempoAtual = Duration.zero;
                    });
                    await player.seek(Duration.zero);
                  },
                  child: Icon(Icons.stop),
                ),
              ],
            ),
            Slider(
              min: 0,
              max: tempoTotal.inSeconds > 0
                  ? tempoTotal.inSeconds.toDouble()
                  : 1,

              value: isDragging
                  ? dragValue
                  : tempoAtual.inSeconds.toDouble().clamp(
                      0,
                      tempoTotal.inSeconds.toDouble() > 0
                          ? tempoTotal.inSeconds.toDouble()
                          : 1,
                    ),

              onChangeStart: (value) {
                isDragging = true;
              },

              onChanged: (value) {
                setState(() {
                  dragValue = value;
                });
              },

              onChangeEnd: (value) async {
                isDragging = false;
                await player.seek(Duration(seconds: value.toInt()));
              },
            ),
          ],
        ),
      ),
    );
  }
}
