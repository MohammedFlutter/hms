import 'package:medica/core/exceptions/network_exceptions.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'api_result.freezed.dart';

@freezed
class ApiResult<T> with _$ApiResult<T?> {
  const factory ApiResult.success({T? data}) = Success<T>;

  const factory ApiResult.failure(NetworkExceptions exceptions) = Failure<T>;


}
