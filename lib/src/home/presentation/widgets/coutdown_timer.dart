import 'dart:async';

class CountdownTimer {
  int hours;
  int minutes;
  int seconds;
  late Timer _timer;

  CountdownTimer(
      {required this.hours, required this.minutes, required this.seconds});

  // Hàm bắt đầu đếm ngược
  void start(Function onTick, Function onComplete) {
    int totalSeconds = hours * 3600 + minutes * 60 + seconds;

    _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      if (totalSeconds <= 0) {
        timer.cancel();
        onComplete(); // Gọi hàm khi đếm ngược hoàn thành
      } else {
        totalSeconds--;
        hours = totalSeconds ~/ 3600;
        minutes = (totalSeconds % 3600) ~/ 60;
        seconds = totalSeconds % 60;
        onTick(
            hours, minutes, seconds); // Cập nhật giờ, phút và giây mỗi lần đếm
      }
    });
  }

  // Hàm dừng đếm ngược
  void stop() {
    _timer.cancel();
  }
}
