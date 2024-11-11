// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:hyan/core/Models/Result.dart';

class usermodel extends Result {

String device_id; 
String signIn_code;
  usermodel({
    required this.device_id,
    required this.signIn_code,
  });

  usermodel copyWith({
    String? device_id,
    String? signIn_code,
  }) {
    return usermodel(
      device_id: device_id ?? this.device_id,
      signIn_code: signIn_code ?? this.signIn_code,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'device_id': device_id,
      'signIn_code': signIn_code,
    };
  }

  factory usermodel.fromMap(Map<String, dynamic> map) {
    return usermodel(
      device_id: map['device_id'] as String,
      signIn_code: map['signIn_code'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory usermodel.fromJson(String source) => usermodel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() => 'usermodel(device_id: $device_id, signIn_code: $signIn_code)';

  @override
  bool operator ==(covariant usermodel other) {
    if (identical(this, other)) return true;
  
    return 
      other.device_id == device_id &&
      other.signIn_code == signIn_code;
  }

  @override
  int get hashCode => device_id.hashCode ^ signIn_code.hashCode;
}
