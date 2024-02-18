// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'coin_list_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CoinListResponse _$CoinListResponseFromJson(Map<String, dynamic> json) {
  return _CoinListResponse.fromJson(json);
}

/// @nodoc
mixin _$CoinListResponse {
  List<CoinResponse> get coins => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CoinListResponseCopyWith<CoinListResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CoinListResponseCopyWith<$Res> {
  factory $CoinListResponseCopyWith(
          CoinListResponse value, $Res Function(CoinListResponse) then) =
      _$CoinListResponseCopyWithImpl<$Res, CoinListResponse>;
  @useResult
  $Res call({List<CoinResponse> coins});
}

/// @nodoc
class _$CoinListResponseCopyWithImpl<$Res, $Val extends CoinListResponse>
    implements $CoinListResponseCopyWith<$Res> {
  _$CoinListResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? coins = null,
  }) {
    return _then(_value.copyWith(
      coins: null == coins
          ? _value.coins
          : coins // ignore: cast_nullable_to_non_nullable
              as List<CoinResponse>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CoinListResponseImplCopyWith<$Res>
    implements $CoinListResponseCopyWith<$Res> {
  factory _$$CoinListResponseImplCopyWith(_$CoinListResponseImpl value,
          $Res Function(_$CoinListResponseImpl) then) =
      __$$CoinListResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<CoinResponse> coins});
}

/// @nodoc
class __$$CoinListResponseImplCopyWithImpl<$Res>
    extends _$CoinListResponseCopyWithImpl<$Res, _$CoinListResponseImpl>
    implements _$$CoinListResponseImplCopyWith<$Res> {
  __$$CoinListResponseImplCopyWithImpl(_$CoinListResponseImpl _value,
      $Res Function(_$CoinListResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? coins = null,
  }) {
    return _then(_$CoinListResponseImpl(
      coins: null == coins
          ? _value._coins
          : coins // ignore: cast_nullable_to_non_nullable
              as List<CoinResponse>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CoinListResponseImpl implements _CoinListResponse {
  const _$CoinListResponseImpl({required final List<CoinResponse> coins})
      : _coins = coins;

  factory _$CoinListResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$CoinListResponseImplFromJson(json);

  final List<CoinResponse> _coins;
  @override
  List<CoinResponse> get coins {
    if (_coins is EqualUnmodifiableListView) return _coins;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_coins);
  }

  @override
  String toString() {
    return 'CoinListResponse(coins: $coins)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CoinListResponseImpl &&
            const DeepCollectionEquality().equals(other._coins, _coins));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_coins));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CoinListResponseImplCopyWith<_$CoinListResponseImpl> get copyWith =>
      __$$CoinListResponseImplCopyWithImpl<_$CoinListResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CoinListResponseImplToJson(
      this,
    );
  }
}

abstract class _CoinListResponse implements CoinListResponse {
  const factory _CoinListResponse({required final List<CoinResponse> coins}) =
      _$CoinListResponseImpl;

  factory _CoinListResponse.fromJson(Map<String, dynamic> json) =
      _$CoinListResponseImpl.fromJson;

  @override
  List<CoinResponse> get coins;
  @override
  @JsonKey(ignore: true)
  _$$CoinListResponseImplCopyWith<_$CoinListResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
