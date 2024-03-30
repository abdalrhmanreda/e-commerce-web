import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_state.freezed.dart';

@Freezed()
class AuthState<T> with _$AuthState {
  const factory AuthState.initial() = Initial<T>;
  const factory AuthState.loading() = Loading<T>;
  const factory AuthState.success(T user) = Success<T>;
  const factory AuthState.error(String message) = Error<T>;
}
