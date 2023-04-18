class HttpExceptions implements Exception {
  final String message;

  HttpExceptions(this.message);  // Pass your message in constructor.

  @override
  String toString() {
    return message;
  }
}