class ApiResponse<T> {
  int code;
  String? message;
  T? data;

  ApiResponse({
    required this.code,
    required this.message,
    required this.data,
  });

  ApiResponse.fromJson({
    required Map<String, dynamic> json,
  })  : code = json['code'] ?? -1,
        message = json['message'] ?? '',
        data = json['data'];

  @override
  String toString() {
    return 'ApiResponse<$T> = {code: $code, message: $message, data: $data}';
  }
}
