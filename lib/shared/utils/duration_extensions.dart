extension DurationExtensions on Duration {
  String toFormattedString() {
    return '${inHours}h ${inMinutes.remainder(60)}m ${(inSeconds.remainder(60))}s';
  }
}
