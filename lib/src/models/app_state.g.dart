// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_state.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<AppState> _$appStateSerializer = new _$AppStateSerializer();

class _$AppStateSerializer implements StructuredSerializer<AppState> {
  @override
  final Iterable<Type> types = const [AppState, _$AppState];
  @override
  final String wireName = 'AppState';

  @override
  Iterable<Object?> serialize(Serializers serializers, AppState object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'movieList',
      serializers.serialize(object.movieList,
          specifiedType:
              const FullType(BuiltList, const [const FullType(Movie)])),
    ];
    Object? value;
    value = object.selectedMovie;
    if (value != null) {
      result
        ..add('selectedMovie')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    return result;
  }

  @override
  AppState deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new AppStateBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'movieList':
          result.movieList.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(Movie)]))!
              as BuiltList<Object?>);
          break;
        case 'selectedMovie':
          result.selectedMovie = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
      }
    }

    return result.build();
  }
}

class _$AppState extends AppState {
  @override
  final BuiltList<Movie> movieList;
  @override
  final int? selectedMovie;

  factory _$AppState([void Function(AppStateBuilder)? updates]) =>
      (new AppStateBuilder()..update(updates)).build();

  _$AppState._({required this.movieList, this.selectedMovie}) : super._() {
    BuiltValueNullFieldError.checkNotNull(movieList, 'AppState', 'movieList');
  }

  @override
  AppState rebuild(void Function(AppStateBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AppStateBuilder toBuilder() => new AppStateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AppState &&
        movieList == other.movieList &&
        selectedMovie == other.selectedMovie;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, movieList.hashCode), selectedMovie.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('AppState')
          ..add('movieList', movieList)
          ..add('selectedMovie', selectedMovie))
        .toString();
  }
}

class AppStateBuilder implements Builder<AppState, AppStateBuilder> {
  _$AppState? _$v;

  ListBuilder<Movie>? _movieList;
  ListBuilder<Movie> get movieList =>
      _$this._movieList ??= new ListBuilder<Movie>();
  set movieList(ListBuilder<Movie>? movieList) => _$this._movieList = movieList;

  int? _selectedMovie;
  int? get selectedMovie => _$this._selectedMovie;
  set selectedMovie(int? selectedMovie) =>
      _$this._selectedMovie = selectedMovie;

  AppStateBuilder();

  AppStateBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _movieList = $v.movieList.toBuilder();
      _selectedMovie = $v.selectedMovie;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AppState other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$AppState;
  }

  @override
  void update(void Function(AppStateBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$AppState build() {
    _$AppState _$result;
    try {
      _$result = _$v ??
          new _$AppState._(
              movieList: movieList.build(), selectedMovie: selectedMovie);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'movieList';
        movieList.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'AppState', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
