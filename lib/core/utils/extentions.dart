extension KmFormatter on double {
  //calculate the Km in between

  String formatKm() {
    return (this % 1 == 0) ? toString() : toStringAsFixed(1);
  }
}

extension MinFormatter on int {
  //calculate the time in between
  String formatDuration() {
    int hours = this ~/ 3600;
    int minutes = (this % 3600) ~/ 60;

    if (hours > 0) {
      if (minutes > 0) {
        return '$hours saat $minutes dakika';
      } else {
        return '$hours saat';
      }
    } else {
      return '$minutes dakika';
    }
  }
}
