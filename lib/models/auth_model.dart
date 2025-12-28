class AuthModel {
  final bool status;
  final String message;
  String? userName;

  AuthModel({required this.status, required this.message, this.userName});

  factory AuthModel.fromJson(Map<String, dynamic> json) {
    return AuthModel(
      status: json['statusCode'] ?? ' ',
      message: json['message'] ?? ' ',
      userName: json['user']['name'] ?? ' ',
    );
  }
}