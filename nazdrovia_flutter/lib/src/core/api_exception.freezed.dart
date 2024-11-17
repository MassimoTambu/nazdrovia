// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'api_exception.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ApiException _$ApiExceptionFromJson(Map<String, dynamic> json) {
  return _ApiException.fromJson(json);
}

/// @nodoc
mixin _$ApiException {
  String get status => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;

  /// Serializes this ApiException to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ApiException
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ApiExceptionCopyWith<ApiException> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ApiExceptionCopyWith<$Res> {
  factory $ApiExceptionCopyWith(
          ApiException value, $Res Function(ApiException) then) =
      _$ApiExceptionCopyWithImpl<$Res, ApiException>;
  @useResult
  $Res call({String status, String message});
}

/// @nodoc
class _$ApiExceptionCopyWithImpl<$Res, $Val extends ApiException>
    implements $ApiExceptionCopyWith<$Res> {
  _$ApiExceptionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ApiException
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? message = null,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ApiExceptionImplCopyWith<$Res>
    implements $ApiExceptionCopyWith<$Res> {
  factory _$$ApiExceptionImplCopyWith(
          _$ApiExceptionImpl value, $Res Function(_$ApiExceptionImpl) then) =
      __$$ApiExceptionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String status, String message});
}

/// @nodoc
class __$$ApiExceptionImplCopyWithImpl<$Res>
    extends _$ApiExceptionCopyWithImpl<$Res, _$ApiExceptionImpl>
    implements _$$ApiExceptionImplCopyWith<$Res> {
  __$$ApiExceptionImplCopyWithImpl(
      _$ApiExceptionImpl _value, $Res Function(_$ApiExceptionImpl) _then)
      : super(_value, _then);

  /// Create a copy of ApiException
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? message = null,
  }) {
    return _then(_$ApiExceptionImpl(
      null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ApiExceptionImpl implements _ApiException {
  _$ApiExceptionImpl(this.status, this.message);

  factory _$ApiExceptionImpl.fromJson(Map<String, dynamic> json) =>
      _$$ApiExceptionImplFromJson(json);

  @override
  final String status;
  @override
  final String message;

  @override
  String toString() {
    return 'ApiException(status: $status, message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ApiExceptionImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.message, message) || other.message == message));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, status, message);

  /// Create a copy of ApiException
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ApiExceptionImplCopyWith<_$ApiExceptionImpl> get copyWith =>
      __$$ApiExceptionImplCopyWithImpl<_$ApiExceptionImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ApiExceptionImplToJson(
      this,
    );
  }
}

abstract class _ApiException implements ApiException {
  factory _ApiException(final String status, final String message) =
      _$ApiExceptionImpl;

  factory _ApiException.fromJson(Map<String, dynamic> json) =
      _$ApiExceptionImpl.fromJson;

  @override
  String get status;
  @override
  String get message;

  /// Create a copy of ApiException
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ApiExceptionImplCopyWith<_$ApiExceptionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
