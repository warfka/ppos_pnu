class ApiEndPoints {
  static final String baseUrl = 'http://localhost:8082/api/v1/';
  //static final String baseUrl = 'http://10.0.2.2:8082/api/v1/';
  static _AuthEndPoints authEndpoints = _AuthEndPoints();
  static _UserEndPoints userEndPoints = _UserEndPoints();
}
class _AuthEndPoints {
  final String registerEmail = 'auth/register';
  final String loginEmail = 'auth/login';
}

class _UserEndPoints {
  final String showSelfUser = 'users/me';
}