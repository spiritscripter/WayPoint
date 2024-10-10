import 'package:logger/logger.dart'; // A common logging package, customizable

class LoggingService {
  final Logger _logger;

  LoggingService._internal() : _logger = Logger();

  // Singleton pattern to ensure a single instance across the app
  static final LoggingService instance = LoggingService._internal();

  /// Logs a standard informational message.
  void logInfo(String message) {
    _logger.i(message);
  }

  /// Logs an error message with an optional exception and stack trace.
  void logError(String message,
      [Exception? exception, StackTrace? stackTrace]) {
    _logger.e(message, error: exception, stackTrace: stackTrace);
  }

  /// Logs a warning message.
  void logWarning(String message) {
    _logger.w(message);
  }

  /// Logs debug messages (for development purposes).
  void logDebug(String message) {
    _logger.d(message);
  }

  /// Logs verbose messages (detailed logs useful for debugging).
  void logVerbose(String message) {
    _logger.t(message);
  }
}
