// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:ibnhyanfinal/core/Models/Error.dart';

class offlineException extends ErrorModel {
  String errors;
  offlineException({
    required this.errors,
  }) : super(errors: "no internet error");



  offlineException copyWith({
    String? errors,
  }) {
    return offlineException(
      errors: errors ?? this.errors,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'errors': errors,
    };
  }

  factory offlineException.fromMap(Map<String, dynamic> map) {
    return offlineException(
      errors: map['errors'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory offlineException.fromJson(String source) => offlineException.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() => 'offlineException(errors: $errors)';

  @override
  bool operator ==(covariant offlineException other) {
    if (identical(this, other)) return true;
  
    return 
      other.errors == errors;
  }

  @override
  int get hashCode => errors.hashCode;
}
