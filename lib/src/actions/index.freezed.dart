// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of actions;

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$CreateReviewTearOff {
  const _$CreateReviewTearOff();

  CreateReviewStart call(String text) {
    return CreateReviewStart(
      text,
    );
  }

  CreateReviewSuccessful successful() {
    return const CreateReviewSuccessful();
  }

  CreateReviewError error(Object error, StackTrace stackTrace) {
    return CreateReviewError(
      error,
      stackTrace,
    );
  }
}

/// @nodoc
const $CreateReview = _$CreateReviewTearOff();

/// @nodoc
mixin _$CreateReview {
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String text) $default, {
    required TResult Function() successful,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String text)? $default, {
    TResult Function()? successful,
    TResult Function(Object error, StackTrace stackTrace)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(CreateReviewStart value) $default, {
    required TResult Function(CreateReviewSuccessful value) successful,
    required TResult Function(CreateReviewError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(CreateReviewStart value)? $default, {
    TResult Function(CreateReviewSuccessful value)? successful,
    TResult Function(CreateReviewError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateReviewCopyWith<$Res> {
  factory $CreateReviewCopyWith(
          CreateReview value, $Res Function(CreateReview) then) =
      _$CreateReviewCopyWithImpl<$Res>;
}

/// @nodoc
class _$CreateReviewCopyWithImpl<$Res> implements $CreateReviewCopyWith<$Res> {
  _$CreateReviewCopyWithImpl(this._value, this._then);

  final CreateReview _value;
  // ignore: unused_field
  final $Res Function(CreateReview) _then;
}

/// @nodoc
abstract class $CreateReviewStartCopyWith<$Res> {
  factory $CreateReviewStartCopyWith(
          CreateReviewStart value, $Res Function(CreateReviewStart) then) =
      _$CreateReviewStartCopyWithImpl<$Res>;
  $Res call({String text});
}

/// @nodoc
class _$CreateReviewStartCopyWithImpl<$Res>
    extends _$CreateReviewCopyWithImpl<$Res>
    implements $CreateReviewStartCopyWith<$Res> {
  _$CreateReviewStartCopyWithImpl(
      CreateReviewStart _value, $Res Function(CreateReviewStart) _then)
      : super(_value, (v) => _then(v as CreateReviewStart));

  @override
  CreateReviewStart get _value => super._value as CreateReviewStart;

  @override
  $Res call({
    Object? text = freezed,
  }) {
    return _then(CreateReviewStart(
      text == freezed
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$CreateReviewStart implements CreateReviewStart {
  const _$CreateReviewStart(this.text);

  @override
  final String text;

  @override
  String toString() {
    return 'CreateReview(text: $text)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is CreateReviewStart &&
            (identical(other.text, text) ||
                const DeepCollectionEquality().equals(other.text, text)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(text);

  @JsonKey(ignore: true)
  @override
  $CreateReviewStartCopyWith<CreateReviewStart> get copyWith =>
      _$CreateReviewStartCopyWithImpl<CreateReviewStart>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String text) $default, {
    required TResult Function() successful,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) {
    return $default(text);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String text)? $default, {
    TResult Function()? successful,
    TResult Function(Object error, StackTrace stackTrace)? error,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(text);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(CreateReviewStart value) $default, {
    required TResult Function(CreateReviewSuccessful value) successful,
    required TResult Function(CreateReviewError value) error,
  }) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(CreateReviewStart value)? $default, {
    TResult Function(CreateReviewSuccessful value)? successful,
    TResult Function(CreateReviewError value)? error,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class CreateReviewStart implements CreateReview {
  const factory CreateReviewStart(String text) = _$CreateReviewStart;

  String get text => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CreateReviewStartCopyWith<CreateReviewStart> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateReviewSuccessfulCopyWith<$Res> {
  factory $CreateReviewSuccessfulCopyWith(CreateReviewSuccessful value,
          $Res Function(CreateReviewSuccessful) then) =
      _$CreateReviewSuccessfulCopyWithImpl<$Res>;
}

/// @nodoc
class _$CreateReviewSuccessfulCopyWithImpl<$Res>
    extends _$CreateReviewCopyWithImpl<$Res>
    implements $CreateReviewSuccessfulCopyWith<$Res> {
  _$CreateReviewSuccessfulCopyWithImpl(CreateReviewSuccessful _value,
      $Res Function(CreateReviewSuccessful) _then)
      : super(_value, (v) => _then(v as CreateReviewSuccessful));

  @override
  CreateReviewSuccessful get _value => super._value as CreateReviewSuccessful;
}

/// @nodoc

class _$CreateReviewSuccessful implements CreateReviewSuccessful {
  const _$CreateReviewSuccessful();

  @override
  String toString() {
    return 'CreateReview.successful()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is CreateReviewSuccessful);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String text) $default, {
    required TResult Function() successful,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) {
    return successful();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String text)? $default, {
    TResult Function()? successful,
    TResult Function(Object error, StackTrace stackTrace)? error,
    required TResult orElse(),
  }) {
    if (successful != null) {
      return successful();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(CreateReviewStart value) $default, {
    required TResult Function(CreateReviewSuccessful value) successful,
    required TResult Function(CreateReviewError value) error,
  }) {
    return successful(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(CreateReviewStart value)? $default, {
    TResult Function(CreateReviewSuccessful value)? successful,
    TResult Function(CreateReviewError value)? error,
    required TResult orElse(),
  }) {
    if (successful != null) {
      return successful(this);
    }
    return orElse();
  }
}

abstract class CreateReviewSuccessful implements CreateReview {
  const factory CreateReviewSuccessful() = _$CreateReviewSuccessful;
}

/// @nodoc
abstract class $CreateReviewErrorCopyWith<$Res> {
  factory $CreateReviewErrorCopyWith(
          CreateReviewError value, $Res Function(CreateReviewError) then) =
      _$CreateReviewErrorCopyWithImpl<$Res>;
  $Res call({Object error, StackTrace stackTrace});
}

/// @nodoc
class _$CreateReviewErrorCopyWithImpl<$Res>
    extends _$CreateReviewCopyWithImpl<$Res>
    implements $CreateReviewErrorCopyWith<$Res> {
  _$CreateReviewErrorCopyWithImpl(
      CreateReviewError _value, $Res Function(CreateReviewError) _then)
      : super(_value, (v) => _then(v as CreateReviewError));

  @override
  CreateReviewError get _value => super._value as CreateReviewError;

  @override
  $Res call({
    Object? error = freezed,
    Object? stackTrace = freezed,
  }) {
    return _then(CreateReviewError(
      error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as Object,
      stackTrace == freezed
          ? _value.stackTrace
          : stackTrace // ignore: cast_nullable_to_non_nullable
              as StackTrace,
    ));
  }
}

/// @nodoc

@Implements(ErrorAction)
class _$CreateReviewError implements CreateReviewError {
  const _$CreateReviewError(this.error, this.stackTrace);

  @override
  final Object error;
  @override
  final StackTrace stackTrace;

  @override
  String toString() {
    return 'CreateReview.error(error: $error, stackTrace: $stackTrace)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is CreateReviewError &&
            (identical(other.error, error) ||
                const DeepCollectionEquality().equals(other.error, error)) &&
            (identical(other.stackTrace, stackTrace) ||
                const DeepCollectionEquality()
                    .equals(other.stackTrace, stackTrace)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(error) ^
      const DeepCollectionEquality().hash(stackTrace);

  @JsonKey(ignore: true)
  @override
  $CreateReviewErrorCopyWith<CreateReviewError> get copyWith =>
      _$CreateReviewErrorCopyWithImpl<CreateReviewError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String text) $default, {
    required TResult Function() successful,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) {
    return error(this.error, stackTrace);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String text)? $default, {
    TResult Function()? successful,
    TResult Function(Object error, StackTrace stackTrace)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this.error, stackTrace);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(CreateReviewStart value) $default, {
    required TResult Function(CreateReviewSuccessful value) successful,
    required TResult Function(CreateReviewError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(CreateReviewStart value)? $default, {
    TResult Function(CreateReviewSuccessful value)? successful,
    TResult Function(CreateReviewError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class CreateReviewError implements CreateReview, ErrorAction {
  const factory CreateReviewError(Object error, StackTrace stackTrace) =
      _$CreateReviewError;

  Object get error => throw _privateConstructorUsedError;
  StackTrace get stackTrace => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CreateReviewErrorCopyWith<CreateReviewError> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$GetMoviesTearOff {
  const _$GetMoviesTearOff();

  GetMoviesStart call() {
    return const GetMoviesStart();
  }

  GetMoviesSuccessful successful(List<Movie> moviesList) {
    return GetMoviesSuccessful(
      moviesList,
    );
  }

  GetMoviesError error(Object error, StackTrace stackTrace) {
    return GetMoviesError(
      error,
      stackTrace,
    );
  }
}

/// @nodoc
const $GetMovies = _$GetMoviesTearOff();

/// @nodoc
mixin _$GetMovies {
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function(List<Movie> moviesList) successful,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function(List<Movie> moviesList)? successful,
    TResult Function(Object error, StackTrace stackTrace)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(GetMoviesStart value) $default, {
    required TResult Function(GetMoviesSuccessful value) successful,
    required TResult Function(GetMoviesError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(GetMoviesStart value)? $default, {
    TResult Function(GetMoviesSuccessful value)? successful,
    TResult Function(GetMoviesError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetMoviesCopyWith<$Res> {
  factory $GetMoviesCopyWith(GetMovies value, $Res Function(GetMovies) then) =
      _$GetMoviesCopyWithImpl<$Res>;
}

/// @nodoc
class _$GetMoviesCopyWithImpl<$Res> implements $GetMoviesCopyWith<$Res> {
  _$GetMoviesCopyWithImpl(this._value, this._then);

  final GetMovies _value;
  // ignore: unused_field
  final $Res Function(GetMovies) _then;
}

/// @nodoc
abstract class $GetMoviesStartCopyWith<$Res> {
  factory $GetMoviesStartCopyWith(
          GetMoviesStart value, $Res Function(GetMoviesStart) then) =
      _$GetMoviesStartCopyWithImpl<$Res>;
}

/// @nodoc
class _$GetMoviesStartCopyWithImpl<$Res> extends _$GetMoviesCopyWithImpl<$Res>
    implements $GetMoviesStartCopyWith<$Res> {
  _$GetMoviesStartCopyWithImpl(
      GetMoviesStart _value, $Res Function(GetMoviesStart) _then)
      : super(_value, (v) => _then(v as GetMoviesStart));

  @override
  GetMoviesStart get _value => super._value as GetMoviesStart;
}

/// @nodoc

class _$GetMoviesStart implements GetMoviesStart {
  const _$GetMoviesStart();

  @override
  String toString() {
    return 'GetMovies()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is GetMoviesStart);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function(List<Movie> moviesList) successful,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) {
    return $default();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function(List<Movie> moviesList)? successful,
    TResult Function(Object error, StackTrace stackTrace)? error,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(GetMoviesStart value) $default, {
    required TResult Function(GetMoviesSuccessful value) successful,
    required TResult Function(GetMoviesError value) error,
  }) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(GetMoviesStart value)? $default, {
    TResult Function(GetMoviesSuccessful value)? successful,
    TResult Function(GetMoviesError value)? error,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class GetMoviesStart implements GetMovies {
  const factory GetMoviesStart() = _$GetMoviesStart;
}

/// @nodoc
abstract class $GetMoviesSuccessfulCopyWith<$Res> {
  factory $GetMoviesSuccessfulCopyWith(
          GetMoviesSuccessful value, $Res Function(GetMoviesSuccessful) then) =
      _$GetMoviesSuccessfulCopyWithImpl<$Res>;
  $Res call({List<Movie> moviesList});
}

/// @nodoc
class _$GetMoviesSuccessfulCopyWithImpl<$Res>
    extends _$GetMoviesCopyWithImpl<$Res>
    implements $GetMoviesSuccessfulCopyWith<$Res> {
  _$GetMoviesSuccessfulCopyWithImpl(
      GetMoviesSuccessful _value, $Res Function(GetMoviesSuccessful) _then)
      : super(_value, (v) => _then(v as GetMoviesSuccessful));

  @override
  GetMoviesSuccessful get _value => super._value as GetMoviesSuccessful;

  @override
  $Res call({
    Object? moviesList = freezed,
  }) {
    return _then(GetMoviesSuccessful(
      moviesList == freezed
          ? _value.moviesList
          : moviesList // ignore: cast_nullable_to_non_nullable
              as List<Movie>,
    ));
  }
}

/// @nodoc

class _$GetMoviesSuccessful implements GetMoviesSuccessful {
  const _$GetMoviesSuccessful(this.moviesList);

  @override
  final List<Movie> moviesList;

  @override
  String toString() {
    return 'GetMovies.successful(moviesList: $moviesList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is GetMoviesSuccessful &&
            (identical(other.moviesList, moviesList) ||
                const DeepCollectionEquality()
                    .equals(other.moviesList, moviesList)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(moviesList);

  @JsonKey(ignore: true)
  @override
  $GetMoviesSuccessfulCopyWith<GetMoviesSuccessful> get copyWith =>
      _$GetMoviesSuccessfulCopyWithImpl<GetMoviesSuccessful>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function(List<Movie> moviesList) successful,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) {
    return successful(moviesList);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function(List<Movie> moviesList)? successful,
    TResult Function(Object error, StackTrace stackTrace)? error,
    required TResult orElse(),
  }) {
    if (successful != null) {
      return successful(moviesList);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(GetMoviesStart value) $default, {
    required TResult Function(GetMoviesSuccessful value) successful,
    required TResult Function(GetMoviesError value) error,
  }) {
    return successful(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(GetMoviesStart value)? $default, {
    TResult Function(GetMoviesSuccessful value)? successful,
    TResult Function(GetMoviesError value)? error,
    required TResult orElse(),
  }) {
    if (successful != null) {
      return successful(this);
    }
    return orElse();
  }
}

abstract class GetMoviesSuccessful implements GetMovies {
  const factory GetMoviesSuccessful(List<Movie> moviesList) =
      _$GetMoviesSuccessful;

  List<Movie> get moviesList => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GetMoviesSuccessfulCopyWith<GetMoviesSuccessful> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetMoviesErrorCopyWith<$Res> {
  factory $GetMoviesErrorCopyWith(
          GetMoviesError value, $Res Function(GetMoviesError) then) =
      _$GetMoviesErrorCopyWithImpl<$Res>;
  $Res call({Object error, StackTrace stackTrace});
}

/// @nodoc
class _$GetMoviesErrorCopyWithImpl<$Res> extends _$GetMoviesCopyWithImpl<$Res>
    implements $GetMoviesErrorCopyWith<$Res> {
  _$GetMoviesErrorCopyWithImpl(
      GetMoviesError _value, $Res Function(GetMoviesError) _then)
      : super(_value, (v) => _then(v as GetMoviesError));

  @override
  GetMoviesError get _value => super._value as GetMoviesError;

  @override
  $Res call({
    Object? error = freezed,
    Object? stackTrace = freezed,
  }) {
    return _then(GetMoviesError(
      error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as Object,
      stackTrace == freezed
          ? _value.stackTrace
          : stackTrace // ignore: cast_nullable_to_non_nullable
              as StackTrace,
    ));
  }
}

/// @nodoc

@Implements(ErrorAction)
class _$GetMoviesError implements GetMoviesError {
  const _$GetMoviesError(this.error, this.stackTrace);

  @override
  final Object error;
  @override
  final StackTrace stackTrace;

  @override
  String toString() {
    return 'GetMovies.error(error: $error, stackTrace: $stackTrace)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is GetMoviesError &&
            (identical(other.error, error) ||
                const DeepCollectionEquality().equals(other.error, error)) &&
            (identical(other.stackTrace, stackTrace) ||
                const DeepCollectionEquality()
                    .equals(other.stackTrace, stackTrace)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(error) ^
      const DeepCollectionEquality().hash(stackTrace);

  @JsonKey(ignore: true)
  @override
  $GetMoviesErrorCopyWith<GetMoviesError> get copyWith =>
      _$GetMoviesErrorCopyWithImpl<GetMoviesError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function(List<Movie> moviesList) successful,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) {
    return error(this.error, stackTrace);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function(List<Movie> moviesList)? successful,
    TResult Function(Object error, StackTrace stackTrace)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this.error, stackTrace);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(GetMoviesStart value) $default, {
    required TResult Function(GetMoviesSuccessful value) successful,
    required TResult Function(GetMoviesError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(GetMoviesStart value)? $default, {
    TResult Function(GetMoviesSuccessful value)? successful,
    TResult Function(GetMoviesError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class GetMoviesError implements GetMovies, ErrorAction {
  const factory GetMoviesError(Object error, StackTrace stackTrace) =
      _$GetMoviesError;

  Object get error => throw _privateConstructorUsedError;
  StackTrace get stackTrace => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GetMoviesErrorCopyWith<GetMoviesError> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$GetReviewsTearOff {
  const _$GetReviewsTearOff();

  GetReviewsStart call() {
    return const GetReviewsStart();
  }

  GetReviewsSuccessful successful(List<Review> reviewsList) {
    return GetReviewsSuccessful(
      reviewsList,
    );
  }

  GetReviewsError error(Object error, StackTrace stackTrace) {
    return GetReviewsError(
      error,
      stackTrace,
    );
  }
}

/// @nodoc
const $GetReviews = _$GetReviewsTearOff();

/// @nodoc
mixin _$GetReviews {
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function(List<Review> reviewsList) successful,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function(List<Review> reviewsList)? successful,
    TResult Function(Object error, StackTrace stackTrace)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(GetReviewsStart value) $default, {
    required TResult Function(GetReviewsSuccessful value) successful,
    required TResult Function(GetReviewsError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(GetReviewsStart value)? $default, {
    TResult Function(GetReviewsSuccessful value)? successful,
    TResult Function(GetReviewsError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetReviewsCopyWith<$Res> {
  factory $GetReviewsCopyWith(
          GetReviews value, $Res Function(GetReviews) then) =
      _$GetReviewsCopyWithImpl<$Res>;
}

/// @nodoc
class _$GetReviewsCopyWithImpl<$Res> implements $GetReviewsCopyWith<$Res> {
  _$GetReviewsCopyWithImpl(this._value, this._then);

  final GetReviews _value;
  // ignore: unused_field
  final $Res Function(GetReviews) _then;
}

/// @nodoc
abstract class $GetReviewsStartCopyWith<$Res> {
  factory $GetReviewsStartCopyWith(
          GetReviewsStart value, $Res Function(GetReviewsStart) then) =
      _$GetReviewsStartCopyWithImpl<$Res>;
}

/// @nodoc
class _$GetReviewsStartCopyWithImpl<$Res> extends _$GetReviewsCopyWithImpl<$Res>
    implements $GetReviewsStartCopyWith<$Res> {
  _$GetReviewsStartCopyWithImpl(
      GetReviewsStart _value, $Res Function(GetReviewsStart) _then)
      : super(_value, (v) => _then(v as GetReviewsStart));

  @override
  GetReviewsStart get _value => super._value as GetReviewsStart;
}

/// @nodoc

class _$GetReviewsStart implements GetReviewsStart {
  const _$GetReviewsStart();

  @override
  String toString() {
    return 'GetReviews()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is GetReviewsStart);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function(List<Review> reviewsList) successful,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) {
    return $default();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function(List<Review> reviewsList)? successful,
    TResult Function(Object error, StackTrace stackTrace)? error,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(GetReviewsStart value) $default, {
    required TResult Function(GetReviewsSuccessful value) successful,
    required TResult Function(GetReviewsError value) error,
  }) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(GetReviewsStart value)? $default, {
    TResult Function(GetReviewsSuccessful value)? successful,
    TResult Function(GetReviewsError value)? error,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class GetReviewsStart implements GetReviews {
  const factory GetReviewsStart() = _$GetReviewsStart;
}

/// @nodoc
abstract class $GetReviewsSuccessfulCopyWith<$Res> {
  factory $GetReviewsSuccessfulCopyWith(GetReviewsSuccessful value,
          $Res Function(GetReviewsSuccessful) then) =
      _$GetReviewsSuccessfulCopyWithImpl<$Res>;
  $Res call({List<Review> reviewsList});
}

/// @nodoc
class _$GetReviewsSuccessfulCopyWithImpl<$Res>
    extends _$GetReviewsCopyWithImpl<$Res>
    implements $GetReviewsSuccessfulCopyWith<$Res> {
  _$GetReviewsSuccessfulCopyWithImpl(
      GetReviewsSuccessful _value, $Res Function(GetReviewsSuccessful) _then)
      : super(_value, (v) => _then(v as GetReviewsSuccessful));

  @override
  GetReviewsSuccessful get _value => super._value as GetReviewsSuccessful;

  @override
  $Res call({
    Object? reviewsList = freezed,
  }) {
    return _then(GetReviewsSuccessful(
      reviewsList == freezed
          ? _value.reviewsList
          : reviewsList // ignore: cast_nullable_to_non_nullable
              as List<Review>,
    ));
  }
}

/// @nodoc

class _$GetReviewsSuccessful implements GetReviewsSuccessful {
  const _$GetReviewsSuccessful(this.reviewsList);

  @override
  final List<Review> reviewsList;

  @override
  String toString() {
    return 'GetReviews.successful(reviewsList: $reviewsList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is GetReviewsSuccessful &&
            (identical(other.reviewsList, reviewsList) ||
                const DeepCollectionEquality()
                    .equals(other.reviewsList, reviewsList)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(reviewsList);

  @JsonKey(ignore: true)
  @override
  $GetReviewsSuccessfulCopyWith<GetReviewsSuccessful> get copyWith =>
      _$GetReviewsSuccessfulCopyWithImpl<GetReviewsSuccessful>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function(List<Review> reviewsList) successful,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) {
    return successful(reviewsList);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function(List<Review> reviewsList)? successful,
    TResult Function(Object error, StackTrace stackTrace)? error,
    required TResult orElse(),
  }) {
    if (successful != null) {
      return successful(reviewsList);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(GetReviewsStart value) $default, {
    required TResult Function(GetReviewsSuccessful value) successful,
    required TResult Function(GetReviewsError value) error,
  }) {
    return successful(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(GetReviewsStart value)? $default, {
    TResult Function(GetReviewsSuccessful value)? successful,
    TResult Function(GetReviewsError value)? error,
    required TResult orElse(),
  }) {
    if (successful != null) {
      return successful(this);
    }
    return orElse();
  }
}

abstract class GetReviewsSuccessful implements GetReviews {
  const factory GetReviewsSuccessful(List<Review> reviewsList) =
      _$GetReviewsSuccessful;

  List<Review> get reviewsList => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GetReviewsSuccessfulCopyWith<GetReviewsSuccessful> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetReviewsErrorCopyWith<$Res> {
  factory $GetReviewsErrorCopyWith(
          GetReviewsError value, $Res Function(GetReviewsError) then) =
      _$GetReviewsErrorCopyWithImpl<$Res>;
  $Res call({Object error, StackTrace stackTrace});
}

/// @nodoc
class _$GetReviewsErrorCopyWithImpl<$Res> extends _$GetReviewsCopyWithImpl<$Res>
    implements $GetReviewsErrorCopyWith<$Res> {
  _$GetReviewsErrorCopyWithImpl(
      GetReviewsError _value, $Res Function(GetReviewsError) _then)
      : super(_value, (v) => _then(v as GetReviewsError));

  @override
  GetReviewsError get _value => super._value as GetReviewsError;

  @override
  $Res call({
    Object? error = freezed,
    Object? stackTrace = freezed,
  }) {
    return _then(GetReviewsError(
      error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as Object,
      stackTrace == freezed
          ? _value.stackTrace
          : stackTrace // ignore: cast_nullable_to_non_nullable
              as StackTrace,
    ));
  }
}

/// @nodoc

@Implements(ErrorAction)
class _$GetReviewsError implements GetReviewsError {
  const _$GetReviewsError(this.error, this.stackTrace);

  @override
  final Object error;
  @override
  final StackTrace stackTrace;

  @override
  String toString() {
    return 'GetReviews.error(error: $error, stackTrace: $stackTrace)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is GetReviewsError &&
            (identical(other.error, error) ||
                const DeepCollectionEquality().equals(other.error, error)) &&
            (identical(other.stackTrace, stackTrace) ||
                const DeepCollectionEquality()
                    .equals(other.stackTrace, stackTrace)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(error) ^
      const DeepCollectionEquality().hash(stackTrace);

  @JsonKey(ignore: true)
  @override
  $GetReviewsErrorCopyWith<GetReviewsError> get copyWith =>
      _$GetReviewsErrorCopyWithImpl<GetReviewsError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function(List<Review> reviewsList) successful,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) {
    return error(this.error, stackTrace);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function(List<Review> reviewsList)? successful,
    TResult Function(Object error, StackTrace stackTrace)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this.error, stackTrace);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(GetReviewsStart value) $default, {
    required TResult Function(GetReviewsSuccessful value) successful,
    required TResult Function(GetReviewsError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(GetReviewsStart value)? $default, {
    TResult Function(GetReviewsSuccessful value)? successful,
    TResult Function(GetReviewsError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class GetReviewsError implements GetReviews, ErrorAction {
  const factory GetReviewsError(Object error, StackTrace stackTrace) =
      _$GetReviewsError;

  Object get error => throw _privateConstructorUsedError;
  StackTrace get stackTrace => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GetReviewsErrorCopyWith<GetReviewsError> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$InitializeAppTearOff {
  const _$InitializeAppTearOff();

  InitializeAppStart call() {
    return const InitializeAppStart();
  }

  InitializeAppSuccessful successful(AppUser? user) {
    return InitializeAppSuccessful(
      user,
    );
  }

  InitializeAppError error(Object error, StackTrace stackTrace) {
    return InitializeAppError(
      error,
      stackTrace,
    );
  }
}

/// @nodoc
const $InitializeApp = _$InitializeAppTearOff();

/// @nodoc
mixin _$InitializeApp {
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function(AppUser? user) successful,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function(AppUser? user)? successful,
    TResult Function(Object error, StackTrace stackTrace)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(InitializeAppStart value) $default, {
    required TResult Function(InitializeAppSuccessful value) successful,
    required TResult Function(InitializeAppError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(InitializeAppStart value)? $default, {
    TResult Function(InitializeAppSuccessful value)? successful,
    TResult Function(InitializeAppError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InitializeAppCopyWith<$Res> {
  factory $InitializeAppCopyWith(
          InitializeApp value, $Res Function(InitializeApp) then) =
      _$InitializeAppCopyWithImpl<$Res>;
}

/// @nodoc
class _$InitializeAppCopyWithImpl<$Res>
    implements $InitializeAppCopyWith<$Res> {
  _$InitializeAppCopyWithImpl(this._value, this._then);

  final InitializeApp _value;
  // ignore: unused_field
  final $Res Function(InitializeApp) _then;
}

/// @nodoc
abstract class $InitializeAppStartCopyWith<$Res> {
  factory $InitializeAppStartCopyWith(
          InitializeAppStart value, $Res Function(InitializeAppStart) then) =
      _$InitializeAppStartCopyWithImpl<$Res>;
}

/// @nodoc
class _$InitializeAppStartCopyWithImpl<$Res>
    extends _$InitializeAppCopyWithImpl<$Res>
    implements $InitializeAppStartCopyWith<$Res> {
  _$InitializeAppStartCopyWithImpl(
      InitializeAppStart _value, $Res Function(InitializeAppStart) _then)
      : super(_value, (v) => _then(v as InitializeAppStart));

  @override
  InitializeAppStart get _value => super._value as InitializeAppStart;
}

/// @nodoc

class _$InitializeAppStart implements InitializeAppStart {
  const _$InitializeAppStart();

  @override
  String toString() {
    return 'InitializeApp()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is InitializeAppStart);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function(AppUser? user) successful,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) {
    return $default();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function(AppUser? user)? successful,
    TResult Function(Object error, StackTrace stackTrace)? error,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(InitializeAppStart value) $default, {
    required TResult Function(InitializeAppSuccessful value) successful,
    required TResult Function(InitializeAppError value) error,
  }) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(InitializeAppStart value)? $default, {
    TResult Function(InitializeAppSuccessful value)? successful,
    TResult Function(InitializeAppError value)? error,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class InitializeAppStart implements InitializeApp {
  const factory InitializeAppStart() = _$InitializeAppStart;
}

/// @nodoc
abstract class $InitializeAppSuccessfulCopyWith<$Res> {
  factory $InitializeAppSuccessfulCopyWith(InitializeAppSuccessful value,
          $Res Function(InitializeAppSuccessful) then) =
      _$InitializeAppSuccessfulCopyWithImpl<$Res>;
  $Res call({AppUser? user});
}

/// @nodoc
class _$InitializeAppSuccessfulCopyWithImpl<$Res>
    extends _$InitializeAppCopyWithImpl<$Res>
    implements $InitializeAppSuccessfulCopyWith<$Res> {
  _$InitializeAppSuccessfulCopyWithImpl(InitializeAppSuccessful _value,
      $Res Function(InitializeAppSuccessful) _then)
      : super(_value, (v) => _then(v as InitializeAppSuccessful));

  @override
  InitializeAppSuccessful get _value => super._value as InitializeAppSuccessful;

  @override
  $Res call({
    Object? user = freezed,
  }) {
    return _then(InitializeAppSuccessful(
      user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as AppUser?,
    ));
  }
}

/// @nodoc

class _$InitializeAppSuccessful implements InitializeAppSuccessful {
  const _$InitializeAppSuccessful(this.user);

  @override
  final AppUser? user;

  @override
  String toString() {
    return 'InitializeApp.successful(user: $user)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is InitializeAppSuccessful &&
            (identical(other.user, user) ||
                const DeepCollectionEquality().equals(other.user, user)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(user);

  @JsonKey(ignore: true)
  @override
  $InitializeAppSuccessfulCopyWith<InitializeAppSuccessful> get copyWith =>
      _$InitializeAppSuccessfulCopyWithImpl<InitializeAppSuccessful>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function(AppUser? user) successful,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) {
    return successful(user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function(AppUser? user)? successful,
    TResult Function(Object error, StackTrace stackTrace)? error,
    required TResult orElse(),
  }) {
    if (successful != null) {
      return successful(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(InitializeAppStart value) $default, {
    required TResult Function(InitializeAppSuccessful value) successful,
    required TResult Function(InitializeAppError value) error,
  }) {
    return successful(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(InitializeAppStart value)? $default, {
    TResult Function(InitializeAppSuccessful value)? successful,
    TResult Function(InitializeAppError value)? error,
    required TResult orElse(),
  }) {
    if (successful != null) {
      return successful(this);
    }
    return orElse();
  }
}

abstract class InitializeAppSuccessful implements InitializeApp {
  const factory InitializeAppSuccessful(AppUser? user) =
      _$InitializeAppSuccessful;

  AppUser? get user => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $InitializeAppSuccessfulCopyWith<InitializeAppSuccessful> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InitializeAppErrorCopyWith<$Res> {
  factory $InitializeAppErrorCopyWith(
          InitializeAppError value, $Res Function(InitializeAppError) then) =
      _$InitializeAppErrorCopyWithImpl<$Res>;
  $Res call({Object error, StackTrace stackTrace});
}

/// @nodoc
class _$InitializeAppErrorCopyWithImpl<$Res>
    extends _$InitializeAppCopyWithImpl<$Res>
    implements $InitializeAppErrorCopyWith<$Res> {
  _$InitializeAppErrorCopyWithImpl(
      InitializeAppError _value, $Res Function(InitializeAppError) _then)
      : super(_value, (v) => _then(v as InitializeAppError));

  @override
  InitializeAppError get _value => super._value as InitializeAppError;

  @override
  $Res call({
    Object? error = freezed,
    Object? stackTrace = freezed,
  }) {
    return _then(InitializeAppError(
      error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as Object,
      stackTrace == freezed
          ? _value.stackTrace
          : stackTrace // ignore: cast_nullable_to_non_nullable
              as StackTrace,
    ));
  }
}

/// @nodoc

@Implements(ErrorAction)
class _$InitializeAppError implements InitializeAppError {
  const _$InitializeAppError(this.error, this.stackTrace);

  @override
  final Object error;
  @override
  final StackTrace stackTrace;

  @override
  String toString() {
    return 'InitializeApp.error(error: $error, stackTrace: $stackTrace)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is InitializeAppError &&
            (identical(other.error, error) ||
                const DeepCollectionEquality().equals(other.error, error)) &&
            (identical(other.stackTrace, stackTrace) ||
                const DeepCollectionEquality()
                    .equals(other.stackTrace, stackTrace)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(error) ^
      const DeepCollectionEquality().hash(stackTrace);

  @JsonKey(ignore: true)
  @override
  $InitializeAppErrorCopyWith<InitializeAppError> get copyWith =>
      _$InitializeAppErrorCopyWithImpl<InitializeAppError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function(AppUser? user) successful,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) {
    return error(this.error, stackTrace);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function(AppUser? user)? successful,
    TResult Function(Object error, StackTrace stackTrace)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this.error, stackTrace);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(InitializeAppStart value) $default, {
    required TResult Function(InitializeAppSuccessful value) successful,
    required TResult Function(InitializeAppError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(InitializeAppStart value)? $default, {
    TResult Function(InitializeAppSuccessful value)? successful,
    TResult Function(InitializeAppError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class InitializeAppError implements InitializeApp, ErrorAction {
  const factory InitializeAppError(Object error, StackTrace stackTrace) =
      _$InitializeAppError;

  Object get error => throw _privateConstructorUsedError;
  StackTrace get stackTrace => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $InitializeAppErrorCopyWith<InitializeAppError> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$RegisterUserTearOff {
  const _$RegisterUserTearOff();

  RegisterUserStart call(
      String email, String password, void Function(AppAction) result) {
    return RegisterUserStart(
      email,
      password,
      result,
    );
  }

  RegisterUserSuccessful successful(AppUser user) {
    return RegisterUserSuccessful(
      user,
    );
  }

  RegisterUserError error(Object error, StackTrace stackTrace) {
    return RegisterUserError(
      error,
      stackTrace,
    );
  }
}

/// @nodoc
const $RegisterUser = _$RegisterUserTearOff();

/// @nodoc
mixin _$RegisterUser {
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(
            String email, String password, void Function(AppAction) result)
        $default, {
    required TResult Function(AppUser user) successful,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(
            String email, String password, void Function(AppAction) result)?
        $default, {
    TResult Function(AppUser user)? successful,
    TResult Function(Object error, StackTrace stackTrace)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(RegisterUserStart value) $default, {
    required TResult Function(RegisterUserSuccessful value) successful,
    required TResult Function(RegisterUserError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(RegisterUserStart value)? $default, {
    TResult Function(RegisterUserSuccessful value)? successful,
    TResult Function(RegisterUserError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RegisterUserCopyWith<$Res> {
  factory $RegisterUserCopyWith(
          RegisterUser value, $Res Function(RegisterUser) then) =
      _$RegisterUserCopyWithImpl<$Res>;
}

/// @nodoc
class _$RegisterUserCopyWithImpl<$Res> implements $RegisterUserCopyWith<$Res> {
  _$RegisterUserCopyWithImpl(this._value, this._then);

  final RegisterUser _value;
  // ignore: unused_field
  final $Res Function(RegisterUser) _then;
}

/// @nodoc
abstract class $RegisterUserStartCopyWith<$Res> {
  factory $RegisterUserStartCopyWith(
          RegisterUserStart value, $Res Function(RegisterUserStart) then) =
      _$RegisterUserStartCopyWithImpl<$Res>;
  $Res call({String email, String password, void Function(AppAction) result});
}

/// @nodoc
class _$RegisterUserStartCopyWithImpl<$Res>
    extends _$RegisterUserCopyWithImpl<$Res>
    implements $RegisterUserStartCopyWith<$Res> {
  _$RegisterUserStartCopyWithImpl(
      RegisterUserStart _value, $Res Function(RegisterUserStart) _then)
      : super(_value, (v) => _then(v as RegisterUserStart));

  @override
  RegisterUserStart get _value => super._value as RegisterUserStart;

  @override
  $Res call({
    Object? email = freezed,
    Object? password = freezed,
    Object? result = freezed,
  }) {
    return _then(RegisterUserStart(
      email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      result == freezed
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as void Function(AppAction),
    ));
  }
}

/// @nodoc

class _$RegisterUserStart implements RegisterUserStart {
  const _$RegisterUserStart(this.email, this.password, this.result);

  @override
  final String email;
  @override
  final String password;
  @override
  final void Function(AppAction) result;

  @override
  String toString() {
    return 'RegisterUser(email: $email, password: $password, result: $result)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is RegisterUserStart &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)) &&
            (identical(other.password, password) ||
                const DeepCollectionEquality()
                    .equals(other.password, password)) &&
            (identical(other.result, result) ||
                const DeepCollectionEquality().equals(other.result, result)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(email) ^
      const DeepCollectionEquality().hash(password) ^
      const DeepCollectionEquality().hash(result);

  @JsonKey(ignore: true)
  @override
  $RegisterUserStartCopyWith<RegisterUserStart> get copyWith =>
      _$RegisterUserStartCopyWithImpl<RegisterUserStart>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(
            String email, String password, void Function(AppAction) result)
        $default, {
    required TResult Function(AppUser user) successful,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) {
    return $default(email, password, result);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(
            String email, String password, void Function(AppAction) result)?
        $default, {
    TResult Function(AppUser user)? successful,
    TResult Function(Object error, StackTrace stackTrace)? error,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(email, password, result);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(RegisterUserStart value) $default, {
    required TResult Function(RegisterUserSuccessful value) successful,
    required TResult Function(RegisterUserError value) error,
  }) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(RegisterUserStart value)? $default, {
    TResult Function(RegisterUserSuccessful value)? successful,
    TResult Function(RegisterUserError value)? error,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class RegisterUserStart implements RegisterUser {
  const factory RegisterUserStart(
          String email, String password, void Function(AppAction) result) =
      _$RegisterUserStart;

  String get email => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;
  void Function(AppAction) get result => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RegisterUserStartCopyWith<RegisterUserStart> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RegisterUserSuccessfulCopyWith<$Res> {
  factory $RegisterUserSuccessfulCopyWith(RegisterUserSuccessful value,
          $Res Function(RegisterUserSuccessful) then) =
      _$RegisterUserSuccessfulCopyWithImpl<$Res>;
  $Res call({AppUser user});
}

/// @nodoc
class _$RegisterUserSuccessfulCopyWithImpl<$Res>
    extends _$RegisterUserCopyWithImpl<$Res>
    implements $RegisterUserSuccessfulCopyWith<$Res> {
  _$RegisterUserSuccessfulCopyWithImpl(RegisterUserSuccessful _value,
      $Res Function(RegisterUserSuccessful) _then)
      : super(_value, (v) => _then(v as RegisterUserSuccessful));

  @override
  RegisterUserSuccessful get _value => super._value as RegisterUserSuccessful;

  @override
  $Res call({
    Object? user = freezed,
  }) {
    return _then(RegisterUserSuccessful(
      user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as AppUser,
    ));
  }
}

/// @nodoc

class _$RegisterUserSuccessful implements RegisterUserSuccessful {
  const _$RegisterUserSuccessful(this.user);

  @override
  final AppUser user;

  @override
  String toString() {
    return 'RegisterUser.successful(user: $user)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is RegisterUserSuccessful &&
            (identical(other.user, user) ||
                const DeepCollectionEquality().equals(other.user, user)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(user);

  @JsonKey(ignore: true)
  @override
  $RegisterUserSuccessfulCopyWith<RegisterUserSuccessful> get copyWith =>
      _$RegisterUserSuccessfulCopyWithImpl<RegisterUserSuccessful>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(
            String email, String password, void Function(AppAction) result)
        $default, {
    required TResult Function(AppUser user) successful,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) {
    return successful(user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(
            String email, String password, void Function(AppAction) result)?
        $default, {
    TResult Function(AppUser user)? successful,
    TResult Function(Object error, StackTrace stackTrace)? error,
    required TResult orElse(),
  }) {
    if (successful != null) {
      return successful(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(RegisterUserStart value) $default, {
    required TResult Function(RegisterUserSuccessful value) successful,
    required TResult Function(RegisterUserError value) error,
  }) {
    return successful(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(RegisterUserStart value)? $default, {
    TResult Function(RegisterUserSuccessful value)? successful,
    TResult Function(RegisterUserError value)? error,
    required TResult orElse(),
  }) {
    if (successful != null) {
      return successful(this);
    }
    return orElse();
  }
}

abstract class RegisterUserSuccessful implements RegisterUser {
  const factory RegisterUserSuccessful(AppUser user) = _$RegisterUserSuccessful;

  AppUser get user => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RegisterUserSuccessfulCopyWith<RegisterUserSuccessful> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RegisterUserErrorCopyWith<$Res> {
  factory $RegisterUserErrorCopyWith(
          RegisterUserError value, $Res Function(RegisterUserError) then) =
      _$RegisterUserErrorCopyWithImpl<$Res>;
  $Res call({Object error, StackTrace stackTrace});
}

/// @nodoc
class _$RegisterUserErrorCopyWithImpl<$Res>
    extends _$RegisterUserCopyWithImpl<$Res>
    implements $RegisterUserErrorCopyWith<$Res> {
  _$RegisterUserErrorCopyWithImpl(
      RegisterUserError _value, $Res Function(RegisterUserError) _then)
      : super(_value, (v) => _then(v as RegisterUserError));

  @override
  RegisterUserError get _value => super._value as RegisterUserError;

  @override
  $Res call({
    Object? error = freezed,
    Object? stackTrace = freezed,
  }) {
    return _then(RegisterUserError(
      error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as Object,
      stackTrace == freezed
          ? _value.stackTrace
          : stackTrace // ignore: cast_nullable_to_non_nullable
              as StackTrace,
    ));
  }
}

/// @nodoc

@Implements(ErrorAction)
class _$RegisterUserError implements RegisterUserError {
  const _$RegisterUserError(this.error, this.stackTrace);

  @override
  final Object error;
  @override
  final StackTrace stackTrace;

  @override
  String toString() {
    return 'RegisterUser.error(error: $error, stackTrace: $stackTrace)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is RegisterUserError &&
            (identical(other.error, error) ||
                const DeepCollectionEquality().equals(other.error, error)) &&
            (identical(other.stackTrace, stackTrace) ||
                const DeepCollectionEquality()
                    .equals(other.stackTrace, stackTrace)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(error) ^
      const DeepCollectionEquality().hash(stackTrace);

  @JsonKey(ignore: true)
  @override
  $RegisterUserErrorCopyWith<RegisterUserError> get copyWith =>
      _$RegisterUserErrorCopyWithImpl<RegisterUserError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(
            String email, String password, void Function(AppAction) result)
        $default, {
    required TResult Function(AppUser user) successful,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) {
    return error(this.error, stackTrace);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(
            String email, String password, void Function(AppAction) result)?
        $default, {
    TResult Function(AppUser user)? successful,
    TResult Function(Object error, StackTrace stackTrace)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this.error, stackTrace);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(RegisterUserStart value) $default, {
    required TResult Function(RegisterUserSuccessful value) successful,
    required TResult Function(RegisterUserError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(RegisterUserStart value)? $default, {
    TResult Function(RegisterUserSuccessful value)? successful,
    TResult Function(RegisterUserError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class RegisterUserError implements RegisterUser, ErrorAction {
  const factory RegisterUserError(Object error, StackTrace stackTrace) =
      _$RegisterUserError;

  Object get error => throw _privateConstructorUsedError;
  StackTrace get stackTrace => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RegisterUserErrorCopyWith<RegisterUserError> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$SetSelectedMovieTearOff {
  const _$SetSelectedMovieTearOff();

  SetSelectedMovie$ call(int movieId) {
    return SetSelectedMovie$(
      movieId,
    );
  }
}

/// @nodoc
const $SetSelectedMovie = _$SetSelectedMovieTearOff();

/// @nodoc
mixin _$SetSelectedMovie {
  int get movieId => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SetSelectedMovieCopyWith<SetSelectedMovie> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SetSelectedMovieCopyWith<$Res> {
  factory $SetSelectedMovieCopyWith(
          SetSelectedMovie value, $Res Function(SetSelectedMovie) then) =
      _$SetSelectedMovieCopyWithImpl<$Res>;
  $Res call({int movieId});
}

/// @nodoc
class _$SetSelectedMovieCopyWithImpl<$Res>
    implements $SetSelectedMovieCopyWith<$Res> {
  _$SetSelectedMovieCopyWithImpl(this._value, this._then);

  final SetSelectedMovie _value;
  // ignore: unused_field
  final $Res Function(SetSelectedMovie) _then;

  @override
  $Res call({
    Object? movieId = freezed,
  }) {
    return _then(_value.copyWith(
      movieId: movieId == freezed
          ? _value.movieId
          : movieId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class $SetSelectedMovie$CopyWith<$Res>
    implements $SetSelectedMovieCopyWith<$Res> {
  factory $SetSelectedMovie$CopyWith(
          SetSelectedMovie$ value, $Res Function(SetSelectedMovie$) then) =
      _$SetSelectedMovie$CopyWithImpl<$Res>;
  @override
  $Res call({int movieId});
}

/// @nodoc
class _$SetSelectedMovie$CopyWithImpl<$Res>
    extends _$SetSelectedMovieCopyWithImpl<$Res>
    implements $SetSelectedMovie$CopyWith<$Res> {
  _$SetSelectedMovie$CopyWithImpl(
      SetSelectedMovie$ _value, $Res Function(SetSelectedMovie$) _then)
      : super(_value, (v) => _then(v as SetSelectedMovie$));

  @override
  SetSelectedMovie$ get _value => super._value as SetSelectedMovie$;

  @override
  $Res call({
    Object? movieId = freezed,
  }) {
    return _then(SetSelectedMovie$(
      movieId == freezed
          ? _value.movieId
          : movieId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$SetSelectedMovie$ implements SetSelectedMovie$ {
  const _$SetSelectedMovie$(this.movieId);

  @override
  final int movieId;

  @override
  String toString() {
    return 'SetSelectedMovie(movieId: $movieId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is SetSelectedMovie$ &&
            (identical(other.movieId, movieId) ||
                const DeepCollectionEquality().equals(other.movieId, movieId)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(movieId);

  @JsonKey(ignore: true)
  @override
  $SetSelectedMovie$CopyWith<SetSelectedMovie$> get copyWith =>
      _$SetSelectedMovie$CopyWithImpl<SetSelectedMovie$>(this, _$identity);
}

abstract class SetSelectedMovie$ implements SetSelectedMovie {
  const factory SetSelectedMovie$(int movieId) = _$SetSelectedMovie$;

  @override
  int get movieId => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $SetSelectedMovie$CopyWith<SetSelectedMovie$> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$SignOutUserTearOff {
  const _$SignOutUserTearOff();

  SignOutUserStart call() {
    return const SignOutUserStart();
  }

  SignOutUserSuccessful successful() {
    return const SignOutUserSuccessful();
  }

  SignOutUserError error(Object error, StackTrace stackTrace) {
    return SignOutUserError(
      error,
      stackTrace,
    );
  }
}

/// @nodoc
const $SignOutUser = _$SignOutUserTearOff();

/// @nodoc
mixin _$SignOutUser {
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function() successful,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function()? successful,
    TResult Function(Object error, StackTrace stackTrace)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(SignOutUserStart value) $default, {
    required TResult Function(SignOutUserSuccessful value) successful,
    required TResult Function(SignOutUserError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(SignOutUserStart value)? $default, {
    TResult Function(SignOutUserSuccessful value)? successful,
    TResult Function(SignOutUserError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignOutUserCopyWith<$Res> {
  factory $SignOutUserCopyWith(
          SignOutUser value, $Res Function(SignOutUser) then) =
      _$SignOutUserCopyWithImpl<$Res>;
}

/// @nodoc
class _$SignOutUserCopyWithImpl<$Res> implements $SignOutUserCopyWith<$Res> {
  _$SignOutUserCopyWithImpl(this._value, this._then);

  final SignOutUser _value;
  // ignore: unused_field
  final $Res Function(SignOutUser) _then;
}

/// @nodoc
abstract class $SignOutUserStartCopyWith<$Res> {
  factory $SignOutUserStartCopyWith(
          SignOutUserStart value, $Res Function(SignOutUserStart) then) =
      _$SignOutUserStartCopyWithImpl<$Res>;
}

/// @nodoc
class _$SignOutUserStartCopyWithImpl<$Res>
    extends _$SignOutUserCopyWithImpl<$Res>
    implements $SignOutUserStartCopyWith<$Res> {
  _$SignOutUserStartCopyWithImpl(
      SignOutUserStart _value, $Res Function(SignOutUserStart) _then)
      : super(_value, (v) => _then(v as SignOutUserStart));

  @override
  SignOutUserStart get _value => super._value as SignOutUserStart;
}

/// @nodoc

class _$SignOutUserStart implements SignOutUserStart {
  const _$SignOutUserStart();

  @override
  String toString() {
    return 'SignOutUser()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is SignOutUserStart);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function() successful,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) {
    return $default();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function()? successful,
    TResult Function(Object error, StackTrace stackTrace)? error,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(SignOutUserStart value) $default, {
    required TResult Function(SignOutUserSuccessful value) successful,
    required TResult Function(SignOutUserError value) error,
  }) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(SignOutUserStart value)? $default, {
    TResult Function(SignOutUserSuccessful value)? successful,
    TResult Function(SignOutUserError value)? error,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class SignOutUserStart implements SignOutUser {
  const factory SignOutUserStart() = _$SignOutUserStart;
}

/// @nodoc
abstract class $SignOutUserSuccessfulCopyWith<$Res> {
  factory $SignOutUserSuccessfulCopyWith(SignOutUserSuccessful value,
          $Res Function(SignOutUserSuccessful) then) =
      _$SignOutUserSuccessfulCopyWithImpl<$Res>;
}

/// @nodoc
class _$SignOutUserSuccessfulCopyWithImpl<$Res>
    extends _$SignOutUserCopyWithImpl<$Res>
    implements $SignOutUserSuccessfulCopyWith<$Res> {
  _$SignOutUserSuccessfulCopyWithImpl(
      SignOutUserSuccessful _value, $Res Function(SignOutUserSuccessful) _then)
      : super(_value, (v) => _then(v as SignOutUserSuccessful));

  @override
  SignOutUserSuccessful get _value => super._value as SignOutUserSuccessful;
}

/// @nodoc

class _$SignOutUserSuccessful implements SignOutUserSuccessful {
  const _$SignOutUserSuccessful();

  @override
  String toString() {
    return 'SignOutUser.successful()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is SignOutUserSuccessful);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function() successful,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) {
    return successful();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function()? successful,
    TResult Function(Object error, StackTrace stackTrace)? error,
    required TResult orElse(),
  }) {
    if (successful != null) {
      return successful();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(SignOutUserStart value) $default, {
    required TResult Function(SignOutUserSuccessful value) successful,
    required TResult Function(SignOutUserError value) error,
  }) {
    return successful(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(SignOutUserStart value)? $default, {
    TResult Function(SignOutUserSuccessful value)? successful,
    TResult Function(SignOutUserError value)? error,
    required TResult orElse(),
  }) {
    if (successful != null) {
      return successful(this);
    }
    return orElse();
  }
}

abstract class SignOutUserSuccessful implements SignOutUser {
  const factory SignOutUserSuccessful() = _$SignOutUserSuccessful;
}

/// @nodoc
abstract class $SignOutUserErrorCopyWith<$Res> {
  factory $SignOutUserErrorCopyWith(
          SignOutUserError value, $Res Function(SignOutUserError) then) =
      _$SignOutUserErrorCopyWithImpl<$Res>;
  $Res call({Object error, StackTrace stackTrace});
}

/// @nodoc
class _$SignOutUserErrorCopyWithImpl<$Res>
    extends _$SignOutUserCopyWithImpl<$Res>
    implements $SignOutUserErrorCopyWith<$Res> {
  _$SignOutUserErrorCopyWithImpl(
      SignOutUserError _value, $Res Function(SignOutUserError) _then)
      : super(_value, (v) => _then(v as SignOutUserError));

  @override
  SignOutUserError get _value => super._value as SignOutUserError;

  @override
  $Res call({
    Object? error = freezed,
    Object? stackTrace = freezed,
  }) {
    return _then(SignOutUserError(
      error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as Object,
      stackTrace == freezed
          ? _value.stackTrace
          : stackTrace // ignore: cast_nullable_to_non_nullable
              as StackTrace,
    ));
  }
}

/// @nodoc

@Implements(ErrorAction)
class _$SignOutUserError implements SignOutUserError {
  const _$SignOutUserError(this.error, this.stackTrace);

  @override
  final Object error;
  @override
  final StackTrace stackTrace;

  @override
  String toString() {
    return 'SignOutUser.error(error: $error, stackTrace: $stackTrace)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is SignOutUserError &&
            (identical(other.error, error) ||
                const DeepCollectionEquality().equals(other.error, error)) &&
            (identical(other.stackTrace, stackTrace) ||
                const DeepCollectionEquality()
                    .equals(other.stackTrace, stackTrace)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(error) ^
      const DeepCollectionEquality().hash(stackTrace);

  @JsonKey(ignore: true)
  @override
  $SignOutUserErrorCopyWith<SignOutUserError> get copyWith =>
      _$SignOutUserErrorCopyWithImpl<SignOutUserError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function() successful,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) {
    return error(this.error, stackTrace);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function()? successful,
    TResult Function(Object error, StackTrace stackTrace)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this.error, stackTrace);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(SignOutUserStart value) $default, {
    required TResult Function(SignOutUserSuccessful value) successful,
    required TResult Function(SignOutUserError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(SignOutUserStart value)? $default, {
    TResult Function(SignOutUserSuccessful value)? successful,
    TResult Function(SignOutUserError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class SignOutUserError implements SignOutUser, ErrorAction {
  const factory SignOutUserError(Object error, StackTrace stackTrace) =
      _$SignOutUserError;

  Object get error => throw _privateConstructorUsedError;
  StackTrace get stackTrace => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SignOutUserErrorCopyWith<SignOutUserError> get copyWith =>
      throw _privateConstructorUsedError;
}
