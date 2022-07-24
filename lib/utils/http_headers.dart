class HttpHeaders {
  static Future<Map<String, String>> headers({required String token}) async {
    return {
      'Content-Type': 'application/json',
      'Accept': 'application/json',
      'Connection': 'keep-alive',
      'Authorization': '${token != null && token.isNotEmpty ? 'Bearer $token'  : ''}',
    };
  }
}