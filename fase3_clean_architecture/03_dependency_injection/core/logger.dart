// lib/core/logger.dart
import 'package:injectable/injectable.dart';

@lazySingleton
class Logger {
  void log(String message) {
    print('[LOG] $message');
  }
}
