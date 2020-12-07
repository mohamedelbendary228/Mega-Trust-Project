class ServerException implements Exception {
  String message;
  int statusCode;

  ServerException({this.statusCode = -1, this.message});
}

class CacheException implements Exception {}